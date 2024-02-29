#  Copyright (c) 2019-2020 by Rocky Bernstein
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
"""
Python 3.8 bytecode decompiler scanner.

Does some additional massaging of xdis-disassembled instructions to
make things easier for decompilation.

This sets up opcodes Python's 3.8 and calls a generalized
scanner routine for Python 3.7 and up.
"""

from typing import Dict, List, Tuple

from decompyle3.scanners.tok import off2int
from decompyle3.scanners.scanner37 import Scanner37
from decompyle3.scanners.scanner37base import Scanner37Base

# bytecode verification, verify(), uses JUMP_OPs from here
from xdis.opcodes import opcode_38 as opc

# bytecode verification, verify(), uses JUMP_OPS from here
JUMP_OPs = opc.JUMP_OPS


class Scanner38(Scanner37):
    def __init__(self, show_asm=None, debug=False):
        Scanner37Base.__init__(self, 3.8, show_asm, debug)
        self.debug = debug
        return

    pass

    def ingest(self, co, classname=None, code_objects={}, show_asm=None) -> Tuple[list, dict]:
        tokens, customize = super(Scanner38, self).ingest(
            co, classname, code_objects, show_asm
        )

        # Hacky way to detect loop ranges.
        # The key in jump_back_targets is the start of the loop.
        # The value is where the loop ends. In current Python,
        # JUMP_BACKS are always to loops. And blocks are ordered so that the
        # JUMP_BACK with the highest offset will be where the range ends.
        jump_back_targets: Dict[int, int] = {}
        for token in tokens:
            if token.kind == "JUMP_BACK":
                jump_back_targets[token.attr] = token.offset
                pass
            pass

        if self.debug and jump_back_targets:
            print(jump_back_targets)
        loop_ends: List[int] = []
        next_end = tokens[len(tokens)-1].off2int() + 10
        for i, token in enumerate(tokens):
            opname = token.kind
            offset = token.offset
            if offset == next_end:
                loop_ends.pop()
                if self.debug:
                    print(f"{'  ' * len(loop_ends)}remove loop offset {offset}")
                    pass
                next_end = loop_ends[-1] if len(loop_ends) else tokens[len(tokens)-1].off2int() + 10

            if offset in jump_back_targets:
                next_end = off2int(jump_back_targets[offset], prefer_last=False)
                if self.debug:
                    print(f"{'  ' * len(loop_ends)}adding loop offset {offset} ending at {next_end}")
                loop_ends.append(next_end)

            # Turn JUMP opcodes into "BREAK_LOOP" opcodes.
            # FIXME: this should be replaced by proper control flow.
            if opname in ("JUMP_FORWARD", "JUMP_ABSOLUTE") and len(loop_ends):
                jump_target = token.attr

                if opname == "JUMP_ABSOLUTE" and jump_target <= next_end:
                    # Not a forward-enough jump to break out of the next loop, so continue.
                    # FIXME: Do we need "continue" detection?
                    continue

                # We also want to avoid confusing BREAK_LOOPS with parts of the
                # grammar rules for loops. (Perhaps we should change the grammar.)
                # Try to find an adjacent JUMP_BACK which is part of the normal loop end.
                jump_back_index = self.offset2inst_index[off2int(offset, prefer_last=False)]

                if jump_back_index + 1 < len(self.insts) and self.insts[jump_back_index+1].opname == "JUMP_BACK":
                    # Sometimes the jump back is after the "break" instruction..
                    jump_back_index += 1
                else:
                    # and sometimes, because of jump-to-jump optimization, it is before the
                    # jump target instruction.
                    jump_back_index -= 1
                    pass

                jump_back_inst = self.insts[jump_back_index]

                # Is this a forward jump not next to a JUMP_BACK ? ...
                break_loop = (
                    jump_back_inst.starts_line
                    and jump_back_inst.opname != "JUMP_BACK"
                )

                # or if there is looping jump back, then that loop
                # should start before where the "break" instruction sits.
                if break_loop or (
                    jump_back_inst.opname == "JUMP_BACK"
                    and jump_back_inst.argval < token.off2int()
                ):
                    token.kind = "BREAK_LOOP"
                pass
            pass
        return tokens, customize


if __name__ == "__main__":
    from decompyle3 import PYTHON_VERSION

    if PYTHON_VERSION == 3.8:
        import inspect

        co = inspect.currentframe().f_code  # type: ignore
        tokens, customize = Scanner38().ingest(co)
        for t in tokens:
            print(t.format())
        pass
    else:
        print(f"Need to be Python 3.8 to demo; I am {PYTHON_VERSION}.")

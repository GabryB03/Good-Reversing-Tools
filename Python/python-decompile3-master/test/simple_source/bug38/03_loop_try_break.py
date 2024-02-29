# From uncompyle issue #295 on 3.8
# In 3.8 BREAK_LOOP and CONTINUE_LOOP no longer exist.
# The bug is that the "break" is turned into:
# POP_BLOCK
# JUMP_ABSOLUTE
while True:
    try:
        x = 1
        break
    except Exception:
        pass

while True:
    try:
        x -= 1
    except Exception:
        break

# Issue #25 https://github.com/rocky/python-decompile3/issues/25
# Same as above using "for".
for i in range(5):
    try:
        x = 1
        break
    except Exception:
        if i == 4:
            raise

# From 3.8.1 _osx_support.py
# Bug was handling a "break" inside a "try".
# In 3.8 POP_EXCEPT is moved before "JUMP_ABSOLUTE" of
# the break.
def compiler_fixup(compiler_so, cc_args):
    if stripArch:
        while True:
            try:
                index = 1
            except:
                index = 2
                break

# Bug was returning an IfExp inside "with":
# the return value is mixed in with the "with"
# code finalization.
def _read_output(x, a):
    with x as fp:
        return fp if a else None

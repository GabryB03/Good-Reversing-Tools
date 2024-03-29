 _____                 __                          _____         _   _                             _
/  __ \               / _|                        |  ___|       | | | |                           | |
| /  \/  ___   _ __  | |_  _   _  ___   ___  _ __ | |__  __  __ | | | | _ __   _ __    __ _   ___ | | __  ___  _ __
| |     / _ \ | '_ \ |  _|| | | |/ __| / _ \| '__||  __| \ \/ / | | | || '_ \ | '_ \  / _` | / __|| |/ / / _ \| '__|
| \__/\| (_) || | | || |  | |_| |\__ \|  __/| |   | |___  >  <  | |_| || | | || |_) || (_| || (__ |   < |  __/| |
 \____/ \___/ |_| |_||_|   \__,_||___/ \___||_|   \____/ /_/\_\  \___/ |_| |_|| .__/  \__,_| \___||_|\_\ \___||_|
                                                                              | |
                                                                              |_|
By ElektroKill

Current Version: 2.0

Minimum .NET Framework Required: 4.6.1

!This tool only works for non-modded versions of ConfuserEx!
!This tool DOES NOT rename types and methods, use de4dot for that!

For Standard Users:
Drag and drop protected assembly onto 'ConfuserEx-Unpacker.exe' then use de4dot to fix up the names.

For Advanced Users:

Usage: ConfuserEx-Unpacker.exe {FilePath} {Options}

Optional Arguments:
    --preserveMD                  Preserve all Metadata during saving.
    --enableFrameworkRedirect     Enables resolving dependencies from other frameworks.
    --staticDeCompressor          Use static compressor remover. (Use for malware and big files, No Invoke)
    --staticConstants             Use static constants decrypter. (No Invoke)
    --staticResources             Use static resource decrypter. (No Invoke)
    --noOptimize                  Disables optimization when writing modules.
    --cleanMutations              Cleans Constant Mutations.

Changelog for 2.0 version:
	- Reworked the Engine
	- Anti De4dot Remover Added
	- Anti Invoke Patcher Added
	- Attribute Cleaner Added
	- Anti Decompiler Remover Added
	- Integrity Check Cleaner Added
	- Mutation Cleaner Added
	- Dynamic Resource Decrypter Added
	- Support for more Control Flow predicates
	- Support improved for Strong Reference Proxy
	- Imporved Constant Decrypter
	- Improved Cleanup of unused runtime code
	- Instruction Emulator Improvements
	- New Font in CLI
	- Added ConfuserEx Version Detection

Credits:
* Cawk - CawkEmulatorV4, The original version, NetGuard Remover
* TheProxy - Reference Proxy Remover
* Shadow - Anti Tamper remover
* 0xd4d - dnlib/de4dot
* CodeCracker - Expression Control Flow Cleaner
* MindSystem - Resource Decrypter
* CodeShark-Dev - Resource Decrypter
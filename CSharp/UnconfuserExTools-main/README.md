# UnconfuserExTools
A repository containing tools used for unpacking and deobfuscating .NET applications protected with ConfuserEx

### WARNING: These tools have been aggragated from multiple sources around the web. These tools are provided as-is, and there is no guarantee on the safety or authenticity of the file(s). It is recommended to run them in a sandboxed environment. I have tried my best to aggregate the same tools from multiple sources and to compare file-size to ensure there is no signs of obvious tampering.

### IMPORTANT: A lot of the tools contained are part of CodeCracker's Tools. These tools are from 2011-2015, and are no longer maintained, nor is there much documentation about them. Once again, I want to reiterate that this repository is "as-is" and I cannot guarantee the safety or authenticity of the files provided. As such, without proper documentation on these files, I cannot say for sure what they do. All the information provided is from sources that are available today. Please DO NOT create issues regarding a program not working, as I am not the original author of any of the tools included here. Thanks!

## What is this?
This repository contains tools used in the unpacking and deobfuscation of .NET applications protected with ConfuserEx. I was analyzing a malware artifact protected by ConfuserEx, and most tutorials online referenced tools such as "UnconfuserEx" and "ConfuseExSwitchKiller", but links were dead / not readily available. I've created this repository to act as a centralized place for all tools related to the deobfuscation of ConfuserEx protected applications, without the worry of expiring or paywalled file downloads. Furthermore, a lot of tools, such as NoFuserEx, require you to build from source, so this repository has pre-compiled binaries for ease of use. 

## How to use?

**WIP**
1. ConfuserExMethodsDecryptor
2. ConfuserExFixer
3. ConfuserExConstant

**WIP**
1. Unconfuser.Exe
2. ConfuserEx Proxy Call Fixer v2
3. ConfuseExConstantsDecryptor
4. ConfuseExSwitchKiller
5. ConfuseExFixer

**WIP**
1. NoFuserEx.exe

**WIP**
This is the recommended order of tools, but other tools are available at your disposal. 
1. Download files via `git clone` or through the latest release.
2. Run `UnconfuserEx.exe` - This unpacks the application.
3. Run `ConfuserEx Proxy Call Fixer v2.exe` - Fixes proxy function calls.
4. Run `ConfuseExConstantDecryptor.exe` - Fixes strings.
5. Run `ConfuseExSwitchKiller.exe` (might crash) - Fixes switch control flow.
7. (optional) Run `ConfuserExFixer.exe` - Fixes general errors
8. Clean up with [de4dot](https://github.com/de4dot/de4dot)
9. Open the executable in [dnSpy](https://github.com/dnSpy/dnSpy), [Ghidra](https://github.com/NationalSecurityAgency/ghidra), etc.

## Sources
* https://youtu.be/X0F_-sE-6GU
* https://github.com/CodeShark-Dev/NoFuserEx
* https://www.youtube.com/watch?v=pgNr4YzgP9I
* https://cracked.io/Thread-All-of-CodeCracker-s-RE-tools

## Other possibly helpful tools
Here are some other tools that might be helpful. They could also entirely replace the tools in this list. I need to test more with them.
* https://github.com/ViRb3/de4dot-cex - de4dot with ConfuserEx support
* https://github.com/BedTheGod/ConfuserEx-Unpacker-Mod-by-Bed/tree/1.1 - An all-in-one ConfuserEx unpacker and deobfuscator with mod support

## Tools contained:
* UnconfuserEx - Unpacks ConfuserEx protected applications
* [NoFuserEx](https://github.com/CodeShark-Dev/NoFuserEx) - Removes anti-tamper, anti-debugger, anti-dump, fixes proxy calls and constants (built from src)
* ConfuserEx ProxyCallFixer v2 - Fixes proxy function calls
* ConfuserExConstantDecryptor.exe - Fixes strings/constants
* ConfuserExceptionsRestore.exe - Fixes any errors
* ConfuserExCfgKiller.exe - Fixes any errors
* ConfuserExCallFixer.exe - Same as ProxyCallFixer
* ConfuserExDupPopPatcher.exe - (?)
* ConfuserExExpressionKiller.exe - Fixes control flow (Doesn't work on newer versions)
* ConfuserExFixer.exe - Fixes errors
* ConfuserExMethodsDecryptor.exe - Decrypts method body
* ConfuseExSwitchKiller.exe - Fixes switch control flow
* ConfuserCleanUp.exe - Cleans up file
* ConfuserDelegateKiller.exe - (?)
* ConfuserExPredicateKiller.exe - (?)
* ConfuserLdcPopPatcher.exe - (?)
* ConfuserStringDecryptor.exe - Older version of ConstantsDecryptor(?)
* ConfuserExStringDecryptor2.exe - (?)
* ConfuserExStringDecryptor_fr40.exe - (?)
* ConfuserXorCalc.exe - Resolves XOR calculations(?)
* ConfuserExConstant.exe - (?)
* ConfuserExConstant2.exe - (?)

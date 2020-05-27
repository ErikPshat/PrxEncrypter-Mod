# PrxEncrypter-Mod
Encryption any prx files for ofw, as firmware files, modules, games ...

## Requirements:
* [7-Zip](https://www.7-zip.org/)
* [Minimalist PSPSDK](https://sourceforge.net/projects/minpspw/)
* [PRXdecrypter_27a_fix_mod](https://github.com/ErikPshat/PRXdecrypter_27a_fix_mod)
* [HxD - Free Hex Editor](https://mh-nexus.de/en/downloads.php?product=HxD20) (but better Hex Workshop)

## How it works:
1. Decrypt the original PRX file (DATA.PSP/EBOOT.BIN/MODULE.PRX) using PRXdecrypter_27a_fix_mod
1. Open the obtained 'kirk.16' (`kirk.144`) file in the hex editor, it takes exactly 272 bytes (0x110)
1. Select in the menu of the hex editor `File` -> `Export` -> `C` and save as `kirk.c`
1. Open the original PRX (~PSP) in the hex editor, highlight 336 bytes (0x150) and also...
1. Select in the menu of the hex editor `File` -> `Export` -> `C` and save as `DATA.c`
1. Now open `kirk.c` and `DATA.c` in Notepad++ and also open the `main.c` from source - you should see a similar section
1. Highlight the digital code from the `kirk.c` and replace it with the `main.c`
1. Highlight the digital code from the `DATA.c` and replace it with the `main.c`
1. Compile the new PrxEncrypter with batch file `1 MAKE.BAT`, you have an encryptor to encrypt your decrypted file.
1. You can use it in the attached to release `Example`, replace new PrxEncrypter in the `Example\tools` folder.

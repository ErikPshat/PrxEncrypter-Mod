# PrxEncrypter-Mod
Encryption any prx files for ofw, as firmware files, modules, games ...

## Requirements:
* [7-Zip](https://www.7-zip.org/)
* [Minimalist PSPSDK](https://sourceforge.net/projects/minpspw/)
* [PRXdecrypter_27a_fix_mod](https://github.com/ErikPshat/PRXdecrypter_27a_fix_mod)
* [HxD - Free Hex Editor](https://mh-nexus.de/en/downloads.php?product=HxD20) (but better Hex Workshop)

## How it works:
1. Decrypt the original PRX file (DATA.PSP/EBOOT.BIN/MODULE.PRX) using PRXdecrypter_27a_fix_mod
1. Open the obtained 'kirk.16' file in the hex editor, it takes exactly 272 bytes (0x110)
1. Select in the menu of the hex editor `File` -> `Export` -> `C`

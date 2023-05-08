# HARA-KIRI
A simple dead man's switch (dms) using Batch Scripts and the Windows Task Scheduler.


## Setup
- Add the reset and alive token (NO_NUKE.txt) generator to VERALAUNCHER.bat at the start of your volume mount section but after the password check, Somthing like this.
```
{
:mounttrucrypt
@echo off
del /F /S /Q "C:\some\dumb\ass\path\*.txt"
cls>>"C:\some\dumb\ass\path\NO_NUKE.txt"
}
```


- Edit dEADmAN.xml with corect path for the dms countdown.bat file.

- Add correct paths to the SEPAKU.BAT DEL targets or create your own killall.bat

- Import dEADmAN.xml into task schedular and set timings to your needs

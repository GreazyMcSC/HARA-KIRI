# HARA-KIRI
A simple dead man's switch (DMS) using Batch Scripts and the Windows Task Scheduler.<BR>

Dead man's switch
: [A switch that is designed to be activated or deactivated if the human operator becomes incapacitated](https://en.wikipedia.org/wiki/Dead_man%27s_switch)

## Setup:-
- Put SEPPUKU.BAT and countdown.bat in a ==**EMPTY FOLDER**== in a safe location that wont get interfered with by your Anti Virus and such. (all .txt files in here will be systematically deleted) 
- Add the reset and alive token (NO_NUKE.txt) generator to VERALAUNCHER.bat at the start of your volume mount section but after the password check, Somthing like this.

```
:mounttrucrypt
@echo off
del /F /S /Q "C:\some\dumb\ass\path\*.txt"
cls>>"C:\some\dumb\ass\path\NO_NUKE.txt"
```

- Edit dEADmAN.xml Command and WorkingDirectory with your paths for countdown.bat.

```
    <Exec>
      <Command>C:\someOTHER\dumb\ass\path\countdown.bat</Command>
      <WorkingDirectory>C:\someOTHER\dumb\ass\path\</WorkingDirectory>
    </Exec>
```

- Edit paths in SEPPUKU.BAT to DEL targets or create your own killall.bat to acomplish other tasks with this script.

```
DEL /F /S /Q "C:\some\dumb\ass\path\FUTA_FURRIES\*"
DEL /F /S /Q "C:\some\dumb\ass\path\RULE34\*"
::start killall.bat
```

- Import dEADmAN.xml into Windows Task Scheduler and set up the timings to suit your needs.

### Usage:-
The task will run once a day and add 1 to the alive token untill day 4 when it trigers the SEPPUKU.BAT payload.<BR> As long as you have not kicked the bucket and have used the token gen in last 2 days all the ~~Hentai~~ Linux ISOs will still be there.

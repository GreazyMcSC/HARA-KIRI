@echo off
if exist NO_NUKE3.txt goto strike0
if exist NO_NUKE2.txt goto strike3
if exist NO_NUKE1.txt goto strike2
if exist NO_NUKE.txt goto strike1
exit

:strike1
timeout 1>NO_NUKE1.txt
exit
:strike2
timeout 1>NO_NUKE2.txt
exit
:strike3
timeout 1>NO_NUKE3.txt
exit

:strike0
del /F /S /Q *.txt
start /W SEPPUKU.BAT
exit

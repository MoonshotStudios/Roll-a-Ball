@echo off
cls
echo Are you sure you want to uninstall Roll-a-Ball? [y][n]
set /p confirm=
if "%confirm%" == "y" (
cd %USERPROFILE%/Desktop
echo Deleting desktop icon...
del Roll-a-BallDesktop.bat
cd %USERPROFILE%/Roll-a-Ball
echo Deleting game file...
del Roll-a-Ball.exe
echo Deleting data files...
rmdir /S /Q Roll-a-Ball_Data
echo Deleting launcher...
del Roll-a-BallLauncher.bat
cd %USERPROFILE%/Downloads/Roll-a-Ball-master/Roll-a-Ball-master
echo Deleting desktop icon...
del Roll-a-BallDesktop.bat
echo Deleting wizard...
del Roll-a-BallWizard.bat
echo Deleting README...
del README.md
cd ..
echo Deleting download folder...
rmdir Roll-a-Ball-master
cd ..
echo Deleting download folder...
rmdir Roll-a-Ball-master
cd %USERPROFILE%/Roll-a-Ball
move Roll-a-BallUninstaller.bat %USERPROFILE%
cd ..
echo Deleting file folder...
rmdir Roll-a-Ball
pause
echo Deleting uninstaller...
del Roll-a-BallUninstaller.bat
)
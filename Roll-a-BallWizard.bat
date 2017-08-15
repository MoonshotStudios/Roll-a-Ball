@echo off
cls
echo Would you like to install Roll-a-Ball? [y][n]
set /p confirm=
if not "%confirm%" == "y" (
	goto end
)
cd %USERPROFILE%
echo Creating file folder...
mkdir Roll-a-Ball
cd %USERPROFILE%/Downloads/Roll-a-Ball-master/Roll-a-Ball-master
echo Installing launcher...
move Roll-a-BallLauncher.bat %USERPROFILE%/Roll-a-Ball
echo Installing uninstaller...
move Roll-a-BallUninstaller.bat %USERPROFILE%/Roll-a-Ball
echo Installing game files...
move Roll-a-Ball.exe %USERPROFILE%/Roll-a-Ball
echo Installing data files...
move Roll-a-Ball_Data %USERPROFILE%/Roll-a-Ball
pause
echo Would you like to add a desktop shortcut? [y][n]
set /p shortcut=
if "%shortcut%" == "y" (
	echo Installing desktop icon...
	cd %USERPROFILE%/Downloads/Roll-a-Ball-master/Roll-a-Ball-master
	move Roll-a-BallDesktop.bat %USERPROFILE%/Desktop
)
pause
echo Installation complete.
echo You may now run the program.
pause
end:
exit
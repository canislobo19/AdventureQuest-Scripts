#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

counter := 0

loop
{	

	ImageSearch, var1x, var1y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\AQpics\1.png
	if (ErrorLevel = 0)
	{
	sleep 100
	MouseClick, ,%var1x%, %var1y%
	sleep 100
	}

	ImageSearch, var1_1x, var1_1y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\AQpics\1_1.png
	if (ErrorLevel = 0)
	{
	sleep 100
	MouseClick, ,%var1_1x%, %var1_1y%
	sleep 100
	}

	ImageSearch, var2x, var2y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\AQpics\2.png
	if (ErrorLevel = 0)
	{
	sleep 100
	MouseClick, ,%var2x%, %var2y%
	sleep 100
	}

	ImageSearch, var3x, var3y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\AQpics\3.png
	if (ErrorLevel = 0)
	{
	sleep 100
	MouseClick, ,%var3x%, %var3y%
	sleep 100
	}

	ImageSearch, var4x, var4y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\AQpics\4.png
	if (ErrorLevel = 0)
	{
	sleep 100
	MouseClick, ,%var4x%, %var4y%
	sleep 100
	}

	counter := counter + 1

	checker := Mod(counter, 10)
	if checker = 0
	MouseMove, 0, 0

	sleep, 200
}


^j::

Esc::ExitApp
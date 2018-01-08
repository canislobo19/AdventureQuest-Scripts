#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Loop, 660
{
	Random spd1, 0,100
	Random spd2, 0,100
	Random spd3, 0,100

	Random s300, 280,320
	Random s400, 380,450
	Random s500, 450,550
	Random s750, 700,800
	Random s1000, 950,1050
	Random s1500, 1400,1600
	Random s1550, 1500,1600
	Random s2700, 2700,2750
	Random s8000,7900,8100
	Random s9000, 8900, 9100
	Random s10500, 10400,10600
	Random s11000, 10900,11100

ImageSearch, var1x, var1y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\1.png
MouseClick, ,%var1x%, %var1y%,,%spd1%
Sleep, s1500

ImageSearch, var2x, var2y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\2.png
MouseClick, ,%var2x%, %var2y%,,%spd2%
Sleep, s2700

ImageSearch, var3x, var3y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\2.png
MouseClick, ,%var3x%, %var3y%,,%spd3%
Sleep, s300

ImageSearch, var4x, var4y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\2.png
MouseClick, ,%var4x%, %var4y%,,%spd1%
Sleep, s300

ImageSearch, var5x, var5y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\3.png
MouseClick, ,%var5x%, %var5y%,,%spd2%
Sleep, s11000

ImageSearch, var6x, var6y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\4.png
MouseClick, ,%var6x%, %var6y%,,%spd3%
Sleep, s750

ImageSearch, var7x, var7y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\5.png
MouseClick, ,%var7x%, %var7y%,,%spd1%
Sleep, s500

MouseClick, ,%var7x%, %var7y%,,%spd2%
Sleep, s1000

	
	ImageSearch, var8x, var8y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\6.png
	MouseClick, ,%var8x%, %var8y%,,%spd3%
	Sleep, s10500

	MouseClick, ,%var8x%, %var8y%,,%spd3%
	Sleep, s10500

ImageSearch, var9x2, var9y2, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\7.png
if ErrorLevel = 1
{	
	MouseClick, ,%var8x%, %var8y%,,%spd1%
	Sleep, s9000
}

ImageSearch, var9x, var9y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\7.png
MouseClick, ,%var9x%, %var9y%,,%spd2%
Sleep, s1550

MouseClick, ,%var9x%, %var9y%,,%spd3%
Sleep, s1500

ImageSearch, var10x, var10y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\8.png
MouseClick, ,%var10x%, %var10y%,,%spd1%
Sleep, s500

ImageSearch, var11x, var11y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\2.png
MouseClick, ,%var11x%, %var11y%,,%spd2%
Sleep, s300

ImageSearch, var12x, var12y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\2.png
MouseClick, ,%var12x%, %var12y%,,%spd3%
Sleep, s300

ImageSearch, var13x, var13y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\2.png
MouseClick, ,%var13x%, %var13y%,,%spd1%
Sleep, s300

ImageSearch, var14x, var14y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\2.png
MouseClick, ,%var14x%, %var14y%,,%spd2%
Sleep, s300

ImageSearch, var15x, var15y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\2.png
MouseClick, ,%var15x%, %var15y%,,%spd3%
Sleep, s300

ImageSearch, var16x, var16y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\9.png
MouseClick, ,%var16x%, %var16y%,,%spd1%
Sleep, s300

ImageSearch, var17x, var17y, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, C:\pics\10.png
MouseClick, ,%var17x%, %var17y%,,%spd2%
Sleep, s300

}

Shutdown, 5
Esc::ExitApp  ;Escape key will exit
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;This script makes your character complete a quest and receive experience and gold for it, indefinitely.

Loop, 600
{	Random, var1x, 380,480      ;heading to quest area
	Random, var1y, 391,406

	Random, var2x, 570,610
	Random, var2y, 584,594

	Random, var3x, 570,610
	Random, var3y, 584,594

	Random, var4x, 670,700
	Random, var4y, 428,433
	
	Random, var5x, 570,610
	Random, var5y, 587,591

				;fight begins

	Random, var6x, 365,425
	Random, var6y, 448,451

	Random, var7x, 540,600
	Random, var7y, 580,584

	Random, spell8x, 337,342 ;firespell
	Random, spell8y, 402,407 ;firespell

	Random, var9x, 390,425
	Random, var9y, 549,559

	Random, var10x, 495,520
	Random, var10y, 539,544
	
	Random, var11x, 575,600
	Random, var11y, 586,589

	Random, var12x, 655,680
	Random, var12y, 458,463

	Random, var13x, 615,640
	Random, var13y, 439,447

	Random, var14x, 480,500
	Random, var14y, 557,562

	Random, var15x, 620,650
	Random, var15y, 439,444

	Random, var16x, 490,525
	Random, var16y, 539,544

	Random, var17x, 600,700
	Random, var17y, 541,546

	Random s400, 380,450	;randomized mouse speed to avoid getting caught for using the script
	Random s500, 450,550
	Random s750, 700,800
	Random s1000, 950,1050
	Random s1500, 1400,1600
	Random s1550, 1500,1600
	Random s2700, 2700,2750
	Random s8000,7900,8100
	Random s10500, 10400,10600
	Random s11000, 10900,11100

	Random spd1, 0,100
	Random spd2, 0,100
	Random spd3, 0,100

	MouseClick, ,%var1x%,%var1y%,,%spd1%
	Sleep, 1500

	MouseClick, ,%var2x%,%var2y%,,%spd2%
	Sleep, s2700

	MouseClick, ,%var3x%,%var3y%,,%spd3%
	Sleep, s400

	MouseClick, ,%var4x%,%var4y%,,%spd1%
	Sleep, s400

	MouseClick, ,%var5x%,%var5y%,,%spd2%
	Sleep, s11000

	MouseClick, ,%var6x%,%var6y%,,%spd3%
	Sleep, s750

	MouseClick, ,%var7x%,%var7y%,,%spd1%
	Sleep, s500

	MouseClick, ,%var7x%,%var7y%,,%spd2%
	Sleep, s1000

	Loop, 3
	{	
		MouseClick, ,%spell8x%,%spell8y%,,%spd3%
		Sleep, s10500
	}

	PixelGetColor,col,401,445

	if (col!=0xA6CEEA)
		{
		MouseClick, ,%spell8x%,%spell8y%,%spd1%
		Sleep, s8000
		}

	MouseClick, ,%var9x%,%var9y%,,%spd2%
	Sleep, s1550 

	MouseClick, ,%var9x%,%var9y%,,%spd3%
	Sleep, s1500

	MouseClick, ,%var10x%,%var10y%,,%spd1%
	Sleep, s500

	MouseClick, ,%var11x%,%var11y%,,%spd2%
	Sleep, s400

	MouseClick, ,%var12x%,%var12y%,,%spd3%
	Sleep, s400

	MouseClick, ,%var13x%,%var13y%,,%spd1%
	Sleep, s400

	MouseClick, ,%var14x%,%var14y%,,%spd2%
	Sleep, s400

	MouseClick, ,%var15x%,%var15y%,,%spd3%
	Sleep, s400

	MouseClick, ,%var16x%,%var16y%,,%spd1%
	Sleep, s400

	MouseClick, ,%var17x%,%var17y%,,%spd2%
	Sleep, s400
}

Shutdown, 5
Esc::ExitApp  ;Escape key will exit

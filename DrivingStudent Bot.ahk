#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


!LShift::
	BreakLoop = 0
	Loop {
		 ; this is where you place your code:


		Send {Lbutton down}

		

		 
		if (BreakLoop = 1){
			break
		}
	}
return

^LShift:: 
BreakLoop = 1
return


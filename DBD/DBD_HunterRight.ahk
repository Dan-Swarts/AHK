#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Delay = 600

!LShift::
	BreakLoop = 0
	Loop {

		Send {w down}

		DllCall("mouse_event", uint, 1, int, 100, int, 0)
		Sleep %Delay%

		if (BreakLoop = 1){
			break
		}
	}
	Send {w up}
return

^LShift::
BreakLoop = 1
return
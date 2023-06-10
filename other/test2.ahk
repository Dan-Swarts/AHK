#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

shift & q::
    Random, randT, 280, 320

    Random, randMM, 70, 130
    DllCall("mouse_event", uint, 1, int, 0, int, 40)
    Sleep 300
    DllCall("mouse_event", uint, 1, int, 0, int, -40)

return
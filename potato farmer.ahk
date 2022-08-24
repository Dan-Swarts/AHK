#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

!LShift::

    BreakLoop = 0
    Send {Lbutton down}
    Send {w down}
    Loop {

        Send {a down}
        Loop, 70 {
            if (BreakLoop = 1){
                break
            }
            Sleep 150
            DllCall("mouse_event", uint, 1, int, 0, int, 40)
            Sleep 150
            DllCall("mouse_event", uint, 1, int, 0, int, -40)
        }
        Send {a up}
        if (BreakLoop = 1){
            break
        }
        Send {d down}
        Loop, 70 {
            if (BreakLoop = 1){
                break
            }
            Sleep 150
            DllCall("mouse_event", uint, 1, int, 0, int, 40)
            Sleep 150
            DllCall("mouse_event", uint, 1, int, 0, int, -40)
        }
        Send {d up}

        if (BreakLoop = 1){
            break
        }
    }
    Send {Lbutton up}
    Send {w up}
return

^LShift::
    BreakLoop = 1
return

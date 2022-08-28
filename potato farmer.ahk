#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

!LShift::

    BreakLoop = 0
    Send {Lbutton down}
    Loop {

        Send {a down}
        Loop, 8 {
            if (BreakLoop = 1){
                break
            }
            Sleep 300
            Send, {s down}
            Sleep 300
            Send, {s up}

            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, 2)
            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, -2)

            Sleep, 300
            Send, {w down}
            Sleep, 500
            Send, {w up}
        }
        Send {a up}
        if (BreakLoop = 1){
            break
        }

        Send {w down}
        Sleep, 1300
        Send {w up}

        Send {d down}
        Loop, 8 {
            if (BreakLoop = 1){
                break
            }
            Sleep 300
            Send, {s down}
            Sleep 300
            Send, {s up}

            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, 2)
            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, -2)

            Sleep, 300
            Send, {w down}
            Sleep, 500
            Send, {w up}
        }
        Send {d up}

        Send {w down}
        Sleep, 1300
        Send {w up}

        if (BreakLoop = 1){
            break
        }
    }
    Send {Lbutton up}

return

^LShift::
    BreakLoop = 1
return

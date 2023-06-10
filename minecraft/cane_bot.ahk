#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

!LShift::

    BreakLoop = 0
    Sleep, 300
    ; DllCall("mouse_event", uint, 1, int, -298, int, 0)
    Sleep, 300
    Send {Lbutton down}
    Loop {

        sleep 150
        Send, {d down}
        sleep 150
        Loop, 14 {
            if (BreakLoop = 1){
                break
            }

            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, 2)
            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, -2)

        }
        Sleep, 150
        Send, {d up}
        Sleep, 150

        if (BreakLoop = 1){
            break
        }

        sleep 150
        Send {s down}
        sleep 150
        Loop, 14 {
            if (BreakLoop = 1){
                break
            }

            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, 2)
            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, -2)

        }

        Sleep, 150
        Send, {s up}
        Sleep, 150

        if (BreakLoop = 1){
            break
        }
    }
    Send {Lbutton up}

return

^LShift::
    BreakLoop = 1
return

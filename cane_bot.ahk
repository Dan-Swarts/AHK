#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

!LShift::

    BreakLoop = 0
    Send {Lbutton down}
    Loop {

        Send {w down}
        sleep 150
        Send {d down}
        sleep 150
        Loop, 12 {
            if (BreakLoop = 1){
                break
            }

            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, 2)
            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, -2)

        }
        Send {w up}
        sleep 300
        Send {d up}
        sleep 150

        if (BreakLoop = 1){
            break
        }

        Send {s down}
        Loop, 15 {
            if (BreakLoop = 1){
                break
            }

            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, 2)
            Sleep 600
            DllCall("mouse_event", uint, 1, int, 0, int, -2)

        }
        Send {s up}

        if (BreakLoop = 1){
            break
        }
    }
    Send {Lbutton up}

return

^LShift::
    BreakLoop = 1
return

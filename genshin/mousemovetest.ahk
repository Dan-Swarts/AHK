Script:
#IfWinActive Genshin Impact


;; Swing variables in Miliseconds:
SmoothScrollDelay := 100


MButton::
    RepeatKey := !RepeatKey
    ;; Smooth Scroll:
    If RepeatKey
        SetTimer, SmoothScroll, %SmoothScrollDelay% 
    Else
        SetTimer, SmoothScroll, Off 

Return

SmoothScroll:
    DllCall("mouse_event", uint, 1, int, 2, int, 0)
return
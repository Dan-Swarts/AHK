Script:
#IfWinActive Wizard101

;; Swing variables in Miliseconds:
delay := 300
RandomFactor := 70


;; Toggle Attack Mode
Shift & MButton::
    RepeatKey := !RepeatKey
    If RepeatKey
        SetTimer, Swing, %delay%
    Else
        SetTimer, Swing, Off
Return

;; Swing Function
Swing:

    ;; look left
    Random,n,0,%RandomFactor%
    sleep n
    ControlSend, , {a down}, Wizard101
    Sleep 100
    ControlSend, , {a up}, Wizard101
    ; Send {a up}
    sleep %delay%

    ;; select spell/jump
    Random,n,0,%RandomFactor%
    sleep n
    ControlSend, , {Space}, Wizard101
    sleep %delay%

    ;; look left
    Random,n,0,%RandomFactor%
    sleep n
    ControlSend, , {d down}, Wizard101
    Sleep 100
    ControlSend, , {d up}, Wizard101
    ; Send {a up}
    sleep %delay%
Return


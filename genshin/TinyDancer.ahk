Script:
    #IfWinActive Genshin Impact

        ;; Swing variables in Miliseconds:
        SmoothScrollDelay := 100
        StepForwardDelay := 200
        StepSideDelay := 900
        SwitchCharacterDelay := 3000
        RandomFactor := 50

        MButton::
            RepeatKey := !RepeatKey
            ;; Smooth Scroll:
            If RepeatKey
                SetTimer, SmoothScroll, %SmoothScrollDelay% 
            Else
                SetTimer, SmoothScroll, Off 

            ;; Step Foreward:
            If RepeatKey
                SetTimer, StepForward, %StepForwardDelay% 
            Else
                SetTimer, StepForward, Off 

            ;; Step Left:
            If RepeatKey
                SetTimer, StepLeft, %StepSideDelay%
            Else
                SetTimer, StepLeft, Off

            ;; Stagger left and right: 
            Sleep, (StepSideDelay / 2)

            ;; Step Right:
            If RepeatKey
                SetTimer, StepRight, %StepSideDelay%
            Else
                SetTimer, StepRight, Off

            ;; Switch Character:
            If RepeatKey
                SetTimer, SwitchCharacter, %SwitchCharacterDelay%
            Else
                SetTimer, SwitchCharacter, Off
        Return

        SmoothScroll:
            DllCall("mouse_event", uint, 1, int, 2, int, 0)
        return

        ;; Step Foreward:
        StepForward:
            Random,n,0,%RandomFactor%
            Sleep n
            If !RepeatKey 
                Return
            SendInput, {w}
        Return

        ;; Step Left:
        StepLeft:
            SendInput, {a}
        Return

        ;; Step Right:
        StepRight:
            SendInput, {d}
        Return

        ;; Switch Character:
        SwitchCharacter:
            SendInput, {1}
            Sleep, SwitchCharacterDelay
            If !RepeatKey 
                Return
            SendInput, {2}
            Sleep, SwitchCharacterDelay
            If !RepeatKey 
                Return
            SendInput, {3}
            Sleep, SwitchCharacterDelay
            If !RepeatKey 
                Return
            SendInput, {4}
        Return


Script:
    #IfWinActive Minecraft

        ;; Swing variables in Miliseconds:
        AttackDelay := 600

        MButton::
            RepeatKey := !RepeatKey
            
            If RepeatKey
                SetTimer, Moving, %AttackDelay% 
            Else
                SetTimer, Moving, Off 
            
            If RepeatKey
                SendInput {LButton down}
            Else
                SendInput {LButton up}
        Return

        Moving:
            Send {a down}
            Sleep, AttackDelay
            Send {a up}
            Send {d down}
            Sleep, AttackDelay
            Send {d up}
        return

        ;; 
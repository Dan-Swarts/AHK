Script:
    #IfWinActive Minecraft

        ;; Toggle Hold Button
        MButton::
            HoldKey := !HoldKey
            If HoldKey
                SendInput, {LButton down}
            Else
                SendInput, {LButton up}
        Return

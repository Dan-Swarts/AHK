#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

Return

Shift & MButton::
    planting := !planting

    if planting 
    {
        SendInput, {RButton down}
        SetTimer, SuperPlanting, %InputDelay%
    }
    else 
    {
        SetTimer, SuperPlanting, Off
    }
Return

SuperPlanting:

    HoePosition := 3
    SeedPosition := 2
    InputDelay := 100

    SendInput, HoePosition
    Sleep, InputDelay
    SendInput, SeedPosition
    Sleep, InputDelay
Return

Attack(HotBar,InputDelay){
    SendInput %HotBar%
    sleep %InputDelay%
    SendInput {LButton}
}

Use(HotBar,InputDelay){
    SendInput %HotBar%
    sleep %InputDelay%
    SendInput {RButton}
}
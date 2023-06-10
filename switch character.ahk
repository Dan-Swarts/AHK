#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#IfWinActive Genshin Impact

CharSelect := 0

Rbutton::
    CharSelect += 1
    SendInput, {%CharSelect%}
    If CharSelect = 4
        CharSelect := 0
Return

1::
    SendInput, {1}
    CharSelect := 1
Return

2::
    SendInput, {2}
    CharSelect := 2
Return

3::
    SendInput, {3}
    CharSelect := 3
Return

4::
    SendInput, {4}
    CharSelect := 4
Return
^z::
Toggle := !Toggle
Loop
{

	Send {Lbutton down}
	Sleep 1
	Send {Lbutton up}

	If (!Toggle)
		Break

}
Return

!z::
Toggle := !Toggle
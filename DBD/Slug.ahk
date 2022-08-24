!LShift::
	DllCall("mouse_event", "UInt", 0x02) ; left button down
	Sleep 600
	DllCall("mouse_event", "UInt", 0x04) ; left button up
return
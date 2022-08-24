!LShift::
	DllCall("mouse_event", "UInt", 0x08) ; left button down
	Sleep 2000
	DllCall("mouse_event", "UInt", 0x10) ; left button up
return
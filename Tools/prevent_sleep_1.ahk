#singleinstance, force
coordmode, mouse, screen

originalContext := DllCall("SetThreadDpiAwarenessContext", "ptr", -3, "ptr")

msgbox, ESC to close`nF1 to toggle`n1 to set point 1`n2 to set point 2`n3 to set point 3

1::
    MouseGetPos, p1X, p1Y 
return

2::
    MouseGetPos, p2X, p2Y 
return

3::
    MouseGetPos, p3X, p3Y 
return


F1::
	Toggle:=!Toggle
	If Toggle
		SetTimer, Trigger, -1
return


Trigger:
    While (Toggle)
	{
		MouseClick, Left,  p1X, p1Y
		Sleep, 1000
		MouseClick, Left,  p2X, p2Y
		sleep, 3000
		MouseClick, Left,  p3X, p3Y
		sleep, 1000
		MouseClick, Left,  p2X, p2Y
		sleep, 3000
	}
Return

esc::exitapp
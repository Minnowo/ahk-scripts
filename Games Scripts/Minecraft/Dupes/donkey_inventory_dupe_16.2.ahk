#NoEnv 
SendMode Input
SetWorkingDir %A_ScriptDir%
#singleinstance, force
CoordMode, Mouse, Screen
setBatchLines, -1
SetMouseDelay, -1
SetControlDelay, -1

originalContext := DllCall("SetThreadDpiAwarenessContext", "ptr", -3, "ptr")

+~$MButton::
	MouseGetPos, xx, yy, 
	swap := 1
	nxx := % xx
	nyy := % yy
	mouseclick, left, % nxx, % nyy
	loop, 3{
		loop, 8{
			nxx := % nxx + (54 * swap)
			mouseclick, left, % nxx, % nyy
		}
		nyy := % nyy + 54
		mouseclick, left, % nxx, % nyy
		swap := swap * -1
	}

	return
	
+esc::exitapp

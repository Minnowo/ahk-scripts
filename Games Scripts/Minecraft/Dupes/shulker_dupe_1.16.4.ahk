#NoEnv 
SendMode Input  
SetWorkingDir %A_ScriptDir%  
#singleinstance, force
coordmode, mouse, screen
SetBatchLines, -1
SetMouseDelay, -1
SetControlDelay, -1

originalContext := DllCall("SetThreadDpiAwarenessContext", "ptr", -3, "ptr")

msgbox, ^z (use in top left of shulker)`r^x (use in bottom right of hotbar)`r^0 (hold to activate main loop)


^z::
MouseGetPos , OutputVarX1, OutputVarY1
varx1 := OutputVarX1
vary1 := OutputVarY1
return

^x::
MouseGetPos , OutputVarX2, OutputVarY2
varx2 := OutputVarX2
vary2 := OutputVarY2
return



~$^0::
While GetKeyState("0", "P"){
	OutputVarX1:=varx1
	OutputVarY1:=vary1
	OutputVarX2:=varx2
	OutputVarY2:=vary2
	send, {shift down}
	swap := 1
	mouseclick, left, % OutputVarX1, % OutputVarY1
	loop, 8{
		OutputVarX1 := % OutputVarX1 + (54 * swap)
		mouseclick, left, % OutputVarX1, % OutputVarY1
	}

	swap := swap * -1
	sleep, 70
	mouseclick, left, % OutputVarX2, % OutputVarY2
	loop, 8{
		OutputVarX2 := % OutputVarX2 + (54 * swap)
		mouseclick, left, % OutputVarX2, % OutputVarY2
	}
	send, {shift up}
	sleep, 200
	
}
return

#NoEnv 
SendMode Input 
SetWorkingDir %A_ScriptDir%
#SingleInstance, force

originalContext := DllCall("SetThreadDpiAwarenessContext", "ptr", -3, "ptr")
CoordMode, Mouse, Screen

msgbox, ESC to close`nCtrl + C to copy

SetTimer, Check, 20


Check:
    MouseGetPos, xx, yy, 
    Tooltip %xx%`, %yy%
    return 

^c::
    clipboard :=xx " " yy
    return


Esc::ExitApp
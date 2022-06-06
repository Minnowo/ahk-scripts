#NoEnv 
SendMode Input 
SetWorkingDir %A_ScriptDir%
#SingleInstance, force

originalContext := DllCall("SetThreadDpiAwarenessContext", "ptr", -3, "ptr")

CoordMode Pixel, Screen 
CoordMode Mouse, Screen 

msgbox, ESC to close`nCtrl + C to copy

SetTimer, WatchCursor, 20

WatchCursor:
    MouseGetPos X, Y 
    PixelGetColor Color, %X%, %Y%, RGB
    ToolTip, %Color%
    return

^c::
    clipboard := Color
    return

esc::exitapp
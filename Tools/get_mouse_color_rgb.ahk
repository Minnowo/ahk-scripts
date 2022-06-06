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
    
    Blue := "0x" SubStr(color,3,2)
    Blue := Blue + 0

    Green := "0x" SubStr(color,5,2) 
    Green := Green + 0

    Red := "0x" SubStr(color,7,2)
    Red := Red + 0

    col := Red " " Green " " Blue

    tooltip, % "RGB: " col
    return

^c::
    clipboard := col
    return

esc::exitapp
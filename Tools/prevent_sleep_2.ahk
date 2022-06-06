#singleinstance, force
Coordmode,Mouse,screen

originalContext := DllCall("SetThreadDpiAwarenessContext", "ptr", -3, "ptr")

SetTimer, Move, 1000

Move:
    mousemove, 0, 0 
    sleep, 5000
    mousemove, 3500, 500
return

esc::exitapp

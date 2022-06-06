#NoEnv  
SendMode Input 
SetWorkingDir %A_ScriptDir%
#singleinstance, force


*~$MBUTTON::
    While getkeystate("MBUTTON", "D") {
        Click, right
        send, {shift up}{s down} 
        sleep, 185
        send, {shift down}{s down} 
        sleep, 120
    }
return


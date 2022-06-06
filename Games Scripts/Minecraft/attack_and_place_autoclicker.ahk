#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#singleinstance, force

setBatchLines -1
SetMouseDelay,-1
SetControlDelay, -1

counter = 1
counter2 = 0

*~$end::
    While getkeystate("end","D") 
    {
        Click, Left
        counter += 1
        if(counter = 8)
        {
            Click, Right
            counter = 0
        }
        sleep, 50
    }
return

*~$l::
    While getkeystate("l", "D") 
    {
        random, uwu, 30, 50
        Click, Right
        sleep, %uwu%
    }
return

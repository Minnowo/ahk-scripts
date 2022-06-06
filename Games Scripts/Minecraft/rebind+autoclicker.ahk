#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#singleinstance, force

setBatchLines -1
SetMouseDelay,-1
SetControlDelay, -1

counter = 1
counter2 = 0

*~$0::
    While getkeystate("0","D") 
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

xButton2::1
xButton1::8

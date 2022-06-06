#NoEnv
SendMode Input 
SetWorkingDir %A_ScriptDir%
#singleinstance, force
setBatchLines -1
SetMouseDelay,-1


^~$LButton::
    x++
    if (x = 3)
    {
        click, right
        x := 0
    }
    SetTimer, reset, 2000
    return

reset:
    x := 0
    return

	
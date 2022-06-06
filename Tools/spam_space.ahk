#NoEnv 
SendMode Input 
SetWorkingDir %A_ScriptDir%
#SingleInstance, force

; wow, what did i need this for 
; i didn't even bother to make it start paused
loop
{
    send, {space}
    sleep, 10
}

XButton2::pause

Return

esc::exitapp
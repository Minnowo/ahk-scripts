#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir% 
#singleinstance, force

x::
    send, {w up} {space up}
    sleep, 22
    send, {w down} {click, left, down}
    sleep, 25
    send, {w up} {click, left, up}
return
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir% 
#singleinstance, force

+r::
    send, {r down} 
    sleep, 25
    send, {r up} 
    sleep, 800
    send, {q down} {s up}
    sleep, 25
    send, {q up}
    sleep, 200
    send, {q down}
    send, {s down}
    sleep, 25
    send, {q up}
    sleep, 80
    send, {s up}
    sleep, 25
    send, {s down}
return
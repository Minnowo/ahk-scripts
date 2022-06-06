#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Event ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force
coordmode, mouse, screen
setBatchLines -1
SetDefaultMouseSpeed, 1

;InputBox, monitornum, fill in the box, enter what monitor you want to use`n(1) for primary monitor`n "-" for spin`n "=" for the honey comb thing
;SysGet, bounds, Monitor, %monitornum%
;xmid := Ceil(boundsRight / 2)
;boundsBottom := boundsBottom + 40
;ymid := Ceil(boundsBottom / 2)

msgbox, f1 set center point`nmbutton spin`n= to autobuild
f1::
MouseGetPos, xmid, ymid

dis1 := 60
;y
up1 := ceil(ymid - dis1)
down1 := ceil(ymid + dis1)
downd1 := ceil(dis1*0.75 + ymid)
upd1 := ceil(dis1*0.75)
upd1 := ceil(ymid - upd1)
;x
left1 := ceil(xmid - dis1)
right1 := ceil(xmid + dis1)
rightd1 := ceil(dis1*0.75 + xmid)
leftd1 := ceil(dis1*0.75)
leftd1 := ceil(xmid - leftd1)

dis2 := 75
;y
up2 := ceil(ymid - dis2)
down2 := ceil(ymid + dis2)
downd2 := ceil(dis2*0.75 + ymid)
upd2 := ceil(dis2*0.75)
upd2 := ceil(ymid - upd2)
;x
left2 := ceil(xmid - dis2)
right2 := ceil(xmid + dis2)
rightd2 := ceil(dis2*0.75 + xmid)
leftd2 := ceil(dis2*0.75)
leftd2 := ceil(xmid - leftd2)

return

*~$mbutton::
While getkeystate("mbutton","D") {
    MouseMove,%xmid%, %up2% ; up
    MouseMove, %rightd2%, %upd2% ; upright
    MouseMove, %right2%, %ymid% ;right
    MouseMove, %rightd2%, %downd2% ;dright
    MouseMove,%xmid%, %down2% ; down
    MouseMove, %leftd2%, %downd2% ;dleft
    MouseMove, %left2%, %ymid% ;left
    MouseMove, %leftd2%, %upd2% ;upleft

    MouseMove,%xmid%, %up1% ; up
    MouseMove, %rightd1%, %upd1% ; upright
    MouseMove, %right1%, %ymid% ;right
    MouseMove, %rightd1%, %downd1% ;dright
    MouseMove,%xmid%, %down1% ; down
    MouseMove, %leftd1%, %downd1% ;dleft
    MouseMove, %left1%, %ymid% ;left
    MouseMove, %leftd1%, %upd1% ;upleft

}
return

*~$=::
While getkeystate("=","D") {
    MouseGetPos, X, Y
    xtemp := ceil(xmid - X)
    ytemp := ceil(ymid - Y)

    ;tooltip %xtemp%`n%ytemp%

    if(ytemp < 0){
        ytemp := ceil(ytemp * -1)
    }
    if(xtemp < 0){
        xtemp := ceil(xtemp *-1)
    }
    if(xtemp > ytemp){
        ;horizontal
        if(X > xmid){
            ;right
            ; tooltip, right`nxtemp%xtemp%`nxmid%xmid%`nX%X%
            SendInput, {d down}
            sleep, 300
            SendInput, {d up}
            sleep, 200
            Click, Right
            ytemp := Y
            ytemp := ytemp + 65
            MouseMove, %X%, %ytemp%, 5
            sleep, 75
            Click, Right
            ytemp := Y
            ytemp := ytemp - 65
            MouseMove, %X%, %ytemp%, 5
            sleep, 75
            Click, Right
            MouseMove, %X%, %Y%, 5
            sleep, 75
        }
        else {
            ;left
            ; tooltip, left`nxtemp%xtemp%`nxmid%xmid%`nX%X%
            SendInput, {a down}
            sleep, 300
            SendInput, {a up}
            sleep, 200
            Click, Right
            ytemp := Y
            ytemp := ytemp + 65
            MouseMove, %X%, %ytemp%, 5
            sleep, 75
            Click, Right
            ytemp := Y
            ytemp := ytemp - 65
            MouseMove, %X%, %ytemp%, 5
            sleep, 75
            Click, Right
            MouseMove, %X%, %Y%, 5
            sleep, 75
        }
        
    } 
    else {
        ;vertical
        if(Y > ymid){
            ;down
            ;tooltip, down`nxtemp%xtemp%`nxmid%xmid%`nX%X%
            SendInput, {s down}
            sleep, 300
            SendInput, {s up}
            sleep, 200
            Click, Right
            xtemp := X
            xtemp := xtemp + 65
            MouseMove, %xtemp%, %Y%, 5
            sleep, 75
            Click, Right
            xtemp := X
            xtemp := Xtemp - 65
            MouseMove, %xtemp%, %Y%, 5
            sleep, 75
            Click, Right
            MouseMove, %X%, %Y%, 5
            sleep, 75
            
            
        } else{
            ;up
            ;tooltip, up`nxtemp%xtemp%`nxmid%xmid%`nX%X%
            SendInput, {w down}
            sleep, 300
            SendInput, {w up}
            sleep, 200
            Click, Right
            xtemp := X
            xtemp := xtemp + 65
            MouseMove, %xtemp%, %Y%, 5
            sleep, 75
            Click, Right
            xtemp := X
            xtemp := Xtemp - 65
            MouseMove, %xtemp%, %Y%, 5
            sleep, 75
            Click, Right
            MouseMove, %X%, %Y%, 5
            sleep, 75
            
            
        }

    }

}
return
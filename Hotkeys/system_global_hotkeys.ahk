#SingleInstance, Force
setkeydelay -1


:*:.last::Ω


:*:..maxint::2147483647


; for sending blank unicodes 
:*:.blank1::⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
:*:.blank2::​
:*:.blank3::‮


; my signature gasp rebind
:*:gasp::haleter


; sends current date
:*:.date::
    FormatTime, CurrentDateTime,, yyyy-MM-dd
    sendraw, %CurrentDateTime%
return


; sends current time
:*:.time::
    FormatTime, CurrentDateTime,, HH:mm:ss
    sendraw, %CurrentDateTime%
return


; sends empty string array
:o:.ary::
	loop, 15
	{
		SendInput, "",
	}
	SendInput, {Backspace 1}
return


; always on top selected window 
; ctrl + shift + t
^+t::  WinSet, AlwaysOnTop, toggle, A 


; uppercase selected text
; ctrl + shift + c
^+c::
	current := Clipboard
	Sleep, 50
	SendInput, ^x
	sleep, 50
	StringUpper, Clipboard, Clipboard
	sleep, 50
	SendInput, ^v
	sleep, 100
	Clipboard := % current
return


; lowercase selected text
; ctrl + shift + v
^+v::
	current := Clipboard
	Sleep, 50
	SendInput, ^x
	sleep, 50
	StringLower, Clipboard, Clipboard
	sleep, 50
	SendInput, ^v
	sleep, 100
	Clipboard := % current
return


; raw send clipboard
; ctrl + alt + v
^!v::
    sendraw, % clipboard
return

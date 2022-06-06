#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force
setkeydelay -1
setbatchlines -1
SetMouseDelay,-1
SetControlDelay, -1
#MaxHotkeysPerInterval 9999

#IfWinActive Bloons TD Battles
a::1
s::2
d::3
f::4
z::PgUp
x::PgDn
q::backspace
; Frets on Fire Style
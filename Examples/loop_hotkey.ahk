

#SingleInstance, force

; key to hold 
hotkey_key := "LButton"

; define the hotkey,
;   * to allow any modifier to work
;   ~ to not block the key input, pretty sure this is needed for getkeystate to actually work
;   $ don't trigger the hotkey from this script
;   %hotkey_key% to set the actual key you need to press 
hotkey, *~$%hotkey_key%, hotkey_loop, on

return ; end the auto exec part of the script

hotkey_loop:
    
    ; this loop will run as long as the hotkey is held down
    While getkeystate(hotkey_key, "D") 
    {
        ToolTip, hello world
        Sleep, 100
    }
return



F1::
	Toggle := !Toggle
    
	If Toggle
		SetTimer, Trigger, -1
return

Trigger:
    While (Toggle)
        {
            SoundBeep, 1000, 100
            Sleep, 1000
        }
Return
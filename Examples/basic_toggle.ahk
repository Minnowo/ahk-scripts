#SingleInstance, force


F1::
	Toggle := !Toggle
    
	If Toggle
		SetTimer, Trigger, -1 ; this is a thread safe way to reset the loop
return


Trigger:
    While (Toggle)
    {
        ToolTip, hello world 
        Sleep, 100
    }
Return
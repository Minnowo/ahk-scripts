#singleinstance, force

var  = D:\Downloads\nyanner.gif   ;location of gif you want to show
var2 = D:\Downloads\nyanner2.gif ;location of gif you want to show

g1 := get_Gif_Control(var , "1", "0", "0", "250", "250", False)
g2 := get_Gif_Control(var2, "1", "260", "0", "260", "250", False)
Gui, show, x0 y0 autosize, Center

return 

GuiClose:
   ExitApp


; function for getting a control with an animated gif 
get_Gif_Control(gifPath, guiName = "1", x="0", y="0", w="", h="", scale=True)
{
    static pic              ; gui controls must be static or global, this is used to get image size
    static gCounter := 0    ; gif control counter, used to make the gif control have a unique variable / id 
    local eee := 0          ; by declaring this local, every other variable is assumed global, this allows dynamic globals 
    
    ; get new gif id 
    gCounter++
    
    if (w = "" || h = "")
    {
        ; make a dummy control to get the image size 
        Gui, gifXXX:Add, Picture, vpic, %gifPath%
        GuiControlGet, pic, gifXXX:Pos
        Gui, gifXXX:Destroy
        
        ; set the size if not defined 
        if (w = "")
            w := picW

        if (h = "")
            h :=  picH
    }
    
    ; make the control that will show the gif 
    Gui, %guiName%:Add, ActiveX, % " x" x " y" y " w" w " h" h " vUWU" gCounter, html
    UWU%gCounter%.Navigate("about:blank")

    ; set the html that determines how the gif is shown
    if(scale)
    {
        ; oncontextmenu = 'return false;' disables the right click menu
        ; ondragstart = 'return false;'   disables image dragging
        UWU%gCounter%.document.write("<html><body oncontextmenu='return false;' style='background-color: transparent' style='overflow:hidden' leftmargin='0' topmargin='0'><img ondragstart='return false;' src='" gifPath "' width=" w " height=" h " ></body></html>")
    }
    else 
    {
        UWU%gCounter%.document.write("<html><body oncontextmenu='return false;' style='background-color: transparent' style='overflow:hidden' leftmargin='0' topmargin='0'><img ondragstart='return false;' src=""" gifPath """ ></body></html>")
    }

    ; return control 
    return UWU%gCounter%
}

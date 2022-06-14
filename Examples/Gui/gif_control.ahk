#singleinstance, force

var  = D:\Downloads\nyanner.gif   ;location of gif you want to show
var2 = D:\Downloads\nyanner2.gif ;location of gif you want to show

g1 := get_Gif_Control(var , "1", "0", "0")
g2 := get_Gif_Control(var2, "1", "0", "500",,, False)

Gui, show, x0 y0 autosize, Center

return 

GuiClose:
   ExitApp


; function for getting a control with an animated gif 
get_Gif_Control(gifPath, guiName = "1", x="0", y="0", w="", h="", scale=True)
{
    static gCounter := 0    ; gif control counter, used to make the gif control have a unique variable / id 
    local eee := 0          ; by declaring this local, every other variable is assumed global, this allows dynamic globals 
    
    ; get new gif id 
    gCounter++
    
    if (w = "" || h = "")
    {
        ; make a dummy control to get the image size 
        Gui, AnimGifxx:Add, Picture, vtemp_pic_0_129183, %gifPath%
        GuiControlGet, temp_pic_0_129183, AnimGifxx:Pos
        Gui, AnimGifxx:Destroy
        
        ; set the size if not defined 
        if (w = "")
            w := temp_pic_0_129183W

        if (h = "")
            h :=  temp_pic_0_129183H
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

;********************************************************************************************************************************
;Script Beta Version 0.3.0 | 03.11.22
;********************************************************************************************************************************


;.................................................................................................................................
;Startup check
;.................................................................................................................................

if !WinExist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY") or !WinExist("P-touch Editor - [Zentralencode]")
{
    MsgBox, 4, Fehler, My Joblotron oder P-Touch Datei nicht gefunden - Soll das Programm gestarten werden?
    IfMsgBox, Yes
    {

            if !WinExist(MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY)
            {
                Run, https://jablonet.net/installer/snlang.php
                sleep, 500
            }
            if !WinExist("P-touch Editor - [Zentralencode]")
            {
                Run, C:\USERS\NW\Zentralencode.lbx
                sleep, 500
            }
    }
    
    IfMsgBox, No
    {
        MsgBox, 0, Warnung, Startup-Sequenz wurde angehalten | Script trotzdem aktiv!, 3
        sleep, 3
        return
    }
}


;............................................................
;Input
;............................................................
Alt & Q::


Inputbox,Zentrale1, SN Eingabe, Seriennummer eingeben:
if (Zentrale1 = "")
Goto, getkey

Inputbox,Zentrale2, SN Eingabe, Seriennummer eingeben:
if (Zentrale2 = "")
Goto, getkey

Inputbox,Zentrale3, SN Eingabe, Seriennummer eingeben:
if (Zentrale3 = "")
Goto, getkey

Inputbox,Zentrale4, SN Eingabe, Seriennummer eingeben:
if (Zentrale4 = "")
Goto, getkey

Inputbox,Zentrale5, SN Eingabe, Seriennummer eingeben:
if (Zentrale5 = "")
Goto, getkey

Inputbox,Zentrale6, SN Eingabe, Seriennummer eingeben:
if (Zentrale6 = "")
Goto, getkey

Inputbox,Zentrale7, SN Eingabe, Seriennummer eingeben:
if (Zentrale7 = "")
Goto, getkey

Inputbox,Zentrale8, SN Eingabe, Seriennummer eingeben:
if (Zentrale8 = "")
Goto, getkey

;............................................................
;Send only filled vars 
;............................................................

getkey:

if !(Zentrale1 = "")
{
    savepoint1:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY

        MouseMove, 1082, 420
        MouseClick, left
        Send %Zentrale1%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color = 0x67AC03)
        {
            MouseMove, 1048, 655
            MouseGetPos X, Y
            PixelGetColor Color, %X%, %Y%, RGB
        }

        if (color = 0x67AC03)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY
            MouseMove, 1261, 635
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode1:=clipboard
            Sleep, 300
            Mousemove 1559, 581
            Mouseclick left
            Sleep, 400
        }
    }        
    Else
    {
        MsgBox, 4, Fehler, My Company Website nicht Aktiv! | Soll My Company neugestartet werden? -Script macht danach weiter!
        IfMsgBox, Yes
        {
          Run, https://jablonet.net/installer/snlang.php
          msgbox, 0, Warten bis Jablonet gestartet ist... 6sec
          Sleep, 6000
          goto savepoint1
        }
        IfMsgBox, No
        {
            MsgBox, 0, Hinweis, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale2 = "")
{
    savepoint2:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY

        MouseMove, 1082, 420
        MouseClick, left
        Send %Zentrale2%
        Sleep, 1000
        SendInput, {Enter}
        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color = 0x67AC03)
        {
            MouseMove, 1048, 655
            MouseGetPos X, Y
            PixelGetColor Color, %X%, %Y%, RGB
        }

        if (color = 0x67AC03)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY
            MouseMove, 1261, 635
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode2:=clipboard
            Sleep, 300
            Mousemove 1559, 581
            Mouseclick left
            Sleep, 400
        }
    }        
    Else
    {
        MsgBox, 4, Fehler, My Company Website nicht Aktiv! | Soll My Company neugestartet werden? -Script macht danach weiter!
        IfMsgBox, Yes
        {
          Run, https://jablonet.net/installer/snlang.php
          msgbox, 0, Warten bis Jablonet gestartet ist... 6sec
          Sleep, 6000
          goto savepoint2
        }
        IfMsgBox, No
        {
            MsgBox, 0, Hinweis, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale3 = "")
{
    savepoint3:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY

        MouseMove, 1082, 420
        MouseClick, left
        Send %Zentrale3%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color = 0x67AC03)
        {
            MouseMove, 1048, 655
            MouseGetPos X, Y
            PixelGetColor Color, %X%, %Y%, RGB
        }

        if (color = 0x67AC03)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY
            MouseMove, 1261, 635
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode3:=clipboard
            Sleep, 300
            Mousemove 1559, 581
            Mouseclick left
            Sleep, 400
        }
    }        
    Else
    {
        MsgBox, 4, Fehler, My Company Website nicht Aktiv! | Soll My Company neugestartet werden? -Script macht danach weiter!
        IfMsgBox, Yes
        {
          Run, https://jablonet.net/installer/snlang.php
          msgbox, 0, Warten bis Jablonet gestartet ist... 6sec
          Sleep, 6000
          goto savepoint3
        }
        IfMsgBox, No
        {
            MsgBox, 0, Hinweis, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale4 = "")
{
    savepoint4:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY

        MouseMove, 1082, 420
        MouseClick, left
        Send %Zentrale4%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color = 0x67AC03)
        {
            MouseMove, 1048, 655
            MouseGetPos X, Y
            PixelGetColor Color, %X%, %Y%, RGB
        }

        if (color = 0x67AC03)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY
            MouseMove, 1261, 635
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode4:=clipboard
            Sleep, 300
            Mousemove 1559, 581
            Mouseclick left
            Sleep, 400
        }
    }        
    Else
    {
        MsgBox, 4, Fehler, My Company Website nicht Aktiv! | Soll My Company neugestartet werden? -Script macht danach weiter!
        IfMsgBox, Yes
        {
          Run, https://jablonet.net/installer/snlang.php
          msgbox, 0, Warten bis Jablonet gestartet ist... 6sec
          Sleep, 6000
          goto savepoint4
        }
        IfMsgBox, No
        {
            MsgBox, 0, Hinweis, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale5 = "")
{
    savepoint5:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY

        MouseMove, 1082, 420
        MouseClick, left
        Send %Zentrale5%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color = 0x67AC03)
        {
            MouseMove, 1048, 655
            MouseGetPos X, Y
            PixelGetColor Color, %X%, %Y%, RGB
        }

        if (color = 0x67AC03)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY
            MouseMove, 1261, 635
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode5:=clipboard
            Sleep, 300
            Mousemove 1559, 581
            Mouseclick left
            Sleep, 400
        }
    }        
    Else
    {
        MsgBox, 4, Fehler, My Company Website nicht Aktiv! | Soll My Company neugestartet werden? -Script macht danach weiter!
        IfMsgBox, Yes
        {
          Run, https://jablonet.net/installer/snlang.php
          msgbox, 0, Warten bis Jablonet gestartet ist... 6sec
          Sleep, 6000
          goto savepoint5
        }
        IfMsgBox, No
        {
            MsgBox, 0, Hinweis, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale6 = "")
{
    savepoint6:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY

        MouseMove, 1082, 420
        MouseClick, left
        Send %Zentrale6%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color = 0x67AC03)
        {
            MouseMove, 1048, 655
            MouseGetPos X, Y
            PixelGetColor Color, %X%, %Y%, RGB
        }

        if (color = 0x67AC03)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY
            MouseMove, 1261, 635
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode6:=clipboard
            Sleep, 300
            Mousemove 1559, 581
            Mouseclick left
            Sleep, 400
        }
    }        
    Else
    {
        MsgBox, 4, Fehler, My Company Website nicht Aktiv! | Soll My Company neugestartet werden? -Script macht danach weiter!
        IfMsgBox, Yes
        {
          Run, https://jablonet.net/installer/snlang.php
          msgbox, 0, Warten bis Jablonet gestartet ist... 6sec
          Sleep, 6000
          goto savepoint6
        }
        IfMsgBox, No
        {
            MsgBox, 0, Hinweis, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale7 = "")
{
    savepoint7:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY

        MouseMove, 1082, 420
        MouseClick, left
        Send %Zentrale7%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color = 0x67AC03)
        {
            MouseMove, 1048, 655
            MouseGetPos X, Y
            PixelGetColor Color, %X%, %Y%, RGB
        }

        if (color = 0x67AC03)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY
            MouseMove, 1261, 635
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode7:=clipboard
            Sleep, 300
            Mousemove 1559, 581
            Mouseclick left
            Sleep, 400
        }
    }        
    Else
    {
        MsgBox, 4, Fehler, My Company Website nicht Aktiv! | Soll My Company neugestartet werden? -Script macht danach weiter!
        IfMsgBox, Yes
        {
          Run, https://jablonet.net/installer/snlang.php
          msgbox, 0, Warten bis Jablonet gestartet ist... 6sec
          Sleep, 6000
          goto savepoint7
        }
        IfMsgBox, No
        {
            MsgBox, 0, Hinweis, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale8 = "")
{
    savepoint8:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY

        MouseMove, 1082, 420
        MouseClick, left
        Send %Zentrale8%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color = 0x67AC03)
        {
            MouseMove, 1048, 655
            MouseGetPos X, Y
            PixelGetColor Color, %X%, %Y%, RGB
        }

        if (color = 0x67AC03)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY
            MouseMove, 1261, 635
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode8:=clipboard
            Sleep, 300
            Mousemove 1559, 581
            Mouseclick left
            Sleep, 400
        }
    }        
    Else
    {
        MsgBox, 4, Fehler, My Company Website nicht Aktiv! | Soll My Company neugestartet werden? -Script macht danach weiter!
        IfMsgBox, Yes
        {
          Run, https://jablonet.net/installer/snlang.php
          msgbox, 0, Warten bis Jablonet gestartet ist... 6sec
          Sleep, 6000
          goto savepoint8
        }
        IfMsgBox, No
        {
            MsgBox, Hinweis, 0, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}






;********************************************************************************************************************************
;********************************************************************************************************************************
;********************************************************************************************************************************
;PRINT KEYS
;********************************************************************************************************************************
;********************************************************************************************************************************





savepoint2_1:
msgbox,4, Drucken, Sollen die Codes gedruckt werden?

IfMsgBox, Yes
{
    if !(Zentralencode1 = "")
    {

        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 481, 291
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode1%

            ;Print
            Sleep, 300
            Send !d
            Send d
            Sleep, 100
            Send {Enter}

            ;wait until printing is finished
            WinWait, Brother PT-P700
            WinWaitClose, Brother PT-P700

        }
        Else
        {
            MsgBox, 4, Fehler, P-Touch Editor nicht gefunden | Soll die P-Touch Datei gestartet werden?
            IfMsgBox, Yes
            {
                Run, C:\USERS\NW\Zentralencode.lbx
                goto savepoint2_1
            }
            IfMsgBox, No
            {
                MsgBox, 0, Hinweis!, Jablonet wurde nicht gestartet | Script immer noch aktiv!
                return
            }
        }
    }


    savepoint2_2:
    msgbox,0,Zentrale2, Zentralencode 2 wird gedruckt

    if !(Zentralencode2 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 481, 291
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode2%

            ;Print
            Sleep, 300
            Send !d
            Send d
            Sleep, 100
            Send {Enter}

            ;wait until printing is finished
            WinWait, Brother PT-P700
            WinWaitClose, Brother PT-P700

        }
        Else
        {
            MsgBox, 4, Fehler, P-Touch Editor nicht gefunden | Soll die P-Touch Datei gestartet werden?
            IfMsgBox, Yes
            {
                Run, C:\USERS\NW\Zentralencode.lbx
                goto savepoint2_2
            }
            IfMsgBox, No
            {
                MsgBox, 0, Hinweis!, Jablonet wurde nicht gestartet | Script immer noch aktiv!
                return
            }
        }
    }
    


    savepoint2_3:
    msgbox,0,Zentrale2, Zentralencode 2 wird gedruckt

    if !(Zentralencode3 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 481, 291
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode3%

            ;Print
            Sleep, 300
            Send !d
            Send d
            Sleep, 100
            Send {Enter}

            ;wait until printing is finished
            WinWait, Brother PT-P700
            WinWaitClose, Brother PT-P700

        }
        Else
        {
            MsgBox, 4, Fehler, P-Touch Editor nicht gefunden | Soll die P-Touch Datei gestartet werden?
            IfMsgBox, Yes
            {
                Run, C:\USERS\NW\Zentralencode.lbx
                goto savepoint2_3
            }
            IfMsgBox, No
            {
                MsgBox, 0, Hinweis!, Jablonet wurde nicht gestartet | Script Hotkey immer noch aktiv!
                return
            }
        }
    }



    savepoint2_4:
    msgbox,0,Zentrale4, Zentralencode 4 wird gedruckt

    if !(Zentralencode4 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 481, 291
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode4%

            ;Print
            Sleep, 300
            Send !d
            Send d
            Sleep, 100
            Send {Enter}

            ;wait until printing is finished
            WinWait, Brother PT-P700
            WinWaitClose, Brother PT-P700

        }
        Else
        {
            MsgBox, 4, Fehler, P-Touch Editor nicht gefunden | Soll die P-Touch Datei gestartet werden?
            IfMsgBox, Yes
            {
                Run, C:\USERS\NW\Zentralencode.lbx
                goto savepoint2_4
            }
            IfMsgBox, No
            {
                MsgBox, 0, Hinweis!, Jablonet wurde nicht gestartet | Script immer noch aktiv!
                return
            }
        }
    }



    savepoint2_5:
    msgbox,0,Zentrale5, Zentralencode 5 wird gedruckt

    if !(Zentralencode5 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 481, 291
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode5%

            ;Print
            Sleep, 300
            Send !d
            Send d
            Sleep, 100
            Send {Enter}

            ;wait until printing is finished
            WinWait, Brother PT-P700
            WinWaitClose, Brother PT-P700

        }
        Else
        {
            MsgBox, 4, Fehler, P-Touch Editor nicht gefunden | Soll die P-Touch Datei gestartet werden?
            IfMsgBox, Yes
            {
                Run, C:\USERS\NW\Zentralencode.lbx
                goto savepoint2_5
            }
            IfMsgBox, No
            {
                MsgBox, 0, Hinweis!, Jablonet wurde nicht gestartet | Script immer noch aktiv!
                return
            }
        }
    }



    savepoint2_6:
    msgbox,0,Zentrale6, Zentralencode 6 wird gedruckt

    if !(Zentralencode6 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 481, 291
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode6%

            ;Print
            Sleep, 300
            Send !d
            Send d
            Sleep, 100
            Send {Enter}

            ;wait until printing is finished
            WinWait, Brother PT-P700
            WinWaitClose, Brother PT-P700

        }
        Else
        {
            MsgBox, 4, Fehler, P-Touch Editor nicht gefunden | Soll die P-Touch Datei gestartet werden?
            IfMsgBox, Yes
            {
                Run, C:\USERS\NW\Zentralencode.lbx
                goto savepoint2_6
            }
            IfMsgBox, No
            {
                MsgBox, 0, Hinweis!, Jablonet wurde nicht gestartet | Script immer noch aktiv!
                return
            }
        }
    }



    savepoint2_7:
    msgbox,0,Zentrale7, Zentralencode 7 wird gedruckt

    if !(Zentralencode7 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 481, 291
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode7%

            ;Print
            Sleep, 300
            Send !d
            Send d
            Sleep, 100
            Send {Enter}

            ;wait until printing is finished
            WinWait, Brother PT-P700
            WinWaitClose, Brother PT-P700

        }
        Else
        {
            MsgBox, 4, Fehler, P-Touch Editor nicht gefunden | Soll die P-Touch Datei gestartet werden?
            IfMsgBox, Yes
            {
                Run, C:\USERS\NW\Zentralencode.lbx
                goto savepoint2_7
            }
            IfMsgBox, No
            {
                MsgBox, 0, Hinweis!, Jablonet wurde nicht gestartet | Script immer noch aktiv!
                return
            }
        }
    }



    savepoint2_8:
    msgbox,0,Zentrale8, Zentralencode 8 wird gedruckt

    if !(Zentralencode8 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 481, 291
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode2%


            ;Print
            Sleep, 300
            Send !d
            Send d
            Sleep, 100
            Send {Enter}

            ;wait until printing is finished
            WinWait, Brother PT-P700
            WinWaitClose, Brother PT-P700

        }
        Else
        {
            MsgBox, 4, Fehler, P-Touch Editor nicht gefunden | Soll die P-Touch Datei gestartet werden?
            IfMsgBox, Yes
            {
                Run, C:\USERS\NW\Zentralencode.lbx
                goto savepoint2_8
            }
            IfMsgBox, No
            {
                MsgBox, 0, Hinweis!, Jablonet wurde nicht gestartet | Script immer noch aktiv!
                return
            }
        }
    }
}










;Print
;Send !d
;Send d
;Sleep, 100
;Send {Enter}
;
;
;;wait until printing is finished
;WinWait, Brother PT-P700
;WinWaitClose, Brother PT-P700


;Back to Firefox
WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY
MouseMove, 1082, 420
MouseClick, left






































return 

Alt & R:: 
Reload

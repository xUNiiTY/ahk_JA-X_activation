;********************************************************************************************************************************
;Script FULLHD Beta Version  0.2.0 | 04.11.22
;********************************************************************************************************************************
;
;
;.................................................................................................................................
;Startup check
;.................................................................................................................................



if !WinExist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome") or !WinExist("P-touch Editor - [Zentralencode]")
{
    MsgBox, 4, Fehler, My Joblotron oder P-Touch Datei nicht gefunden - Soll das Programm gestarten werden?
    IfMsgBox, Yes
    {

            if !WinExist(MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome)
            {
                Run, https://jablonet.net/installer/snlang.php
                sleep, 500
            }
            if !WinExist("P-touch Editor - [Zentralencode]")
            {
                Run, C:\USERS\Lager\Zentralencode.lbx
                sleep, 500
            }
    }
    
    IfMsgBox, No
    {
        MsgBox, 0, Warnung, Startup-Sequenz wurde angehalten | Script trotzdem aktiv!,
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
 
Inputbox,Zentrale9, SN Eingabe, Seriennummer eingeben:
if (Zentrale9 = "")
Goto, getkey
 
Inputbox,Zentrale10, SN Eingabe, Seriennummer eingeben:
if (Zentrale10 = "")
Goto, getkey
 
Inputbox,Zentrale11, SN Eingabe, Seriennummer eingeben:
if (Zentrale11 = "")
Goto, getkey
 
Inputbox,Zentrale12, SN Eingabe, Seriennummer eingeben:
if (Zentrale12 = "")
Goto, getkey
 
Inputbox,Zentrale13, SN Eingabe, Seriennummer eingeben:
if (Zentrale13 = "")
Goto, getkey
 
Inputbox,Zentrale14, SN Eingabe, Seriennummer eingeben:
if (Zentrale14 = "")
Goto, getkey
 
Inputbox,Zentrale15, SN Eingabe, Seriennummer eingeben:
if (Zentrale15 = "")
Goto, getkey
 
Inputbox,Zentrale16, SN Eingabe, Seriennummer eingeben:
if (Zentrale16 = "")
Goto, getkey
 
Inputbox,Zentrale17, SN Eingabe, Seriennummer eingeben:
if (Zentrale17 = "")
Goto, getkey
 
Inputbox,Zentrale18, SN Eingabe, Seriennummer eingeben:
if (Zentrale18 = "")
Goto, getkey

;............................................................
;Send only filled vars 
;............................................................

getkey:

if !(Zentrale1 = "")
{
    savepoint1:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        Sleep, 500
        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale1%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color1 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color1, %X%, %Y%, RGB
        }

        if (color1 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode1:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale2%
        Sleep, 1000
        SendInput, {Enter}
        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color2 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color2, %X%, %Y%, RGB
        }

        if (color2 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode2:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale3%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color3 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color3, %X%, %Y%, RGB
        }

        if (color3 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode3:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale4%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color4 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color4, %X%, %Y%, RGB
        }

        if (color4 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode4:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale5%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color5 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color5, %X%, %Y%, RGB
        }

        if (color5 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode5:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale6%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color6 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color6, %X%, %Y%, RGB
        }

        if (color6 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode6:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale7%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color7 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color7, %X%, %Y%, RGB
        }

        if (color7 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode7:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale8%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color8 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color8, %X%, %Y%, RGB
        }

        if (color8 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode8:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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



if !(Zentrale9 = "")
{
    savepoint9:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale9%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color9 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color9, %X%, %Y%, RGB
        }

        if (color9 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode9:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
          goto savepoint9
        }
        IfMsgBox, No
        {
            MsgBox, Hinweis, 0, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale10 = "")
{
    10:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale10%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color10 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color10, %X%, %Y%, RGB
        }

        if (color10 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode10:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
          goto 10
        }
        IfMsgBox, No
        {
            MsgBox, Hinweis, 0, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale11 = "")
{
    savepoint11:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale11%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color11 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color11, %X%, %Y%, RGB
        }

        if (color11 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode11:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
          goto savepoint11
        }
        IfMsgBox, No
        {
            MsgBox, Hinweis, 0, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale12 = "")
{
    savepoint12:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale12%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color12 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color12, %X%, %Y%, RGB
        }

        if (color12 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode12:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
          goto savepoint12
        }
        IfMsgBox, No
        {
            MsgBox, Hinweis, 0, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale13 = "")
{
    savepoint13:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale13%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color13 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color13, %X%, %Y%, RGB
        }

        if (color13 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode13:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
          goto savepoint13
        }
        IfMsgBox, No
        {
            MsgBox, Hinweis, 0, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale14 = "")
{
    savepoint14:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale14%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color14 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color14, %X%, %Y%, RGB
        }

        if (color14 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode14:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
          goto savepoint14
        }
        IfMsgBox, No
        {
            MsgBox, Hinweis, 0, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale15 = "")
{
    savepoint15:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale15%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color15 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color15, %X%, %Y%, RGB
        }

        if (color15 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode15:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
          goto savepoint15
        }
        IfMsgBox, No
        {
            MsgBox, Hinweis, 0, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale16 = "")
{
    savepoint16:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale16%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color16 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color16, %X%, %Y%, RGB
        }

        if (color16 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode16:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
          goto savepoint16
        }
        IfMsgBox, No
        {
            MsgBox, Hinweis, 0, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale17 = "")
{
    savepoint17:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale17%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color17 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color17, %X%, %Y%, RGB
        }

        if (color17 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode17:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
          goto savepoint17
        }
        IfMsgBox, No
        {
            MsgBox, Hinweis, 0, Jablonet wurde nicht gestartet | Script immer noch aktiv!
            return
        }
    }
}



if !(Zentrale18 = "")
{
    savepoint18:
    ;Check if My Jablotron is opened
    if Winexist("MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome")
    {
        WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome

        MouseMove, 762, 406
        MouseClick, left
        Send %Zentrale18%
        Sleep, 1000
        SendInput, {Enter}

        ;............................................................
        ;Wait for key
        ;............................................................

        While, !(color18 = 0xFDEAB2)
        {
            MouseMove, 1064, 634
            MouseGetPos X, Y
            PixelGetColor color18, %X%, %Y%, RGB
        }

        if (color18 = 0xFDEAB2)
        {

        
            ;............................................................
            ;Kopieren --> und in var einfügen
            ;............................................................

            
            
            WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
            MouseMove, 933, 620
            MouseClick, left
            MouseClick, left
            Send ^c
            ClipWait
            Zentralencode18:=clipboard
            Sleep, 300
            Mousemove 1240, 570
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
          goto savepoint18
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
;********************************************************************************************************************************



WinActivate, P-touch Editor - [Zentralencode],
Sleep, 2000


if !(Zentralencode1 = "")
{
    savepoint2_1:
    msgbox,4, Drucken, Sollen die Codes gedruckt werden?
}



IfMsgBox, Yes
{
    if !(Zentralencode1 = "")
    {

        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
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



    if !(Zentralencode2 = "")
    {
        savepoint2_2:
        msgbox,0,Zentrale2, Zentralencode 2 wird gedruckt
    }



    if !(Zentralencode2 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
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
    


    if !(Zentralencode3 = "")
    {
        savepoint2_3:
        msgbox,0,Zentrale2, Zentralencode 2 wird gedruckt
    }



    if !(Zentralencode3 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
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



    if !(Zentralencode4 = "")
    {
        savepoint2_4:
        msgbox,0,Zentrale4, Zentralencode 4 wird gedruckt
    }



    if !(Zentralencode4 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
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



    if !(Zentralencode5 = "")
    {
        savepoint2_5:
        msgbox,0,Zentrale5, Zentralencode 5 wird gedruckt
    }



    if !(Zentralencode5 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
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



    if !(Zentralencode6 = "")
    {
        savepoint2_6:
        msgbox,0,Zentrale6, Zentralencode 6 wird gedruckt
    }



    if !(Zentralencode6 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
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



    if !(Zentralencode7 = "")
    {
        savepoint2_7:
        msgbox,0,Zentrale7, Zentralencode 7 wird gedruckt
    }



    if !(Zentralencode7 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
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



    if !(Zentralencode8 = "")
    {
        savepoint2_8:
        msgbox,0,Zentrale8, Zentralencode 8 wird gedruckt
    }



    if !(Zentralencode8 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode8%


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



    if !(Zentralencode9 = "")
    {
        savepoint2_9:
        msgbox,0,Zentrale9 Zentralencode 9 wird gedruckt
    }



    if !(Zentralencode9 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode9%


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


    if !(Zentralencode10 = "")
    {
        savepoint2_10:
        msgbox,0,Zentrale9 Zentralencode 10 wird gedruckt
    }



    if !(Zentralencode10 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode10%


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


    if !(Zentralencode11 = "")
    {
        savepoint2_11:
        msgbox,0,Zentrale9 Zentralencode 11 wird gedruckt
    }



    if !(Zentralencode11 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode11%


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


    if !(Zentralencode12 = "")
    {
        savepoint2_12:
        msgbox,0,Zentrale9 Zentralencode 12 wird gedruckt
    }



    if !(Zentralencode12 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode12%


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


    if !(Zentralencode13 = "")
    {
        savepoint2_13:
        msgbox,0,Zentrale9 Zentralencode 13 wird gedruckt
    }



    if !(Zentralencode13 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode13%


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


    if !(Zentralencode14 = "")
    {
        savepoint2_14:
        msgbox,0,Zentrale14 Zentralencode 14 wird gedruckt
    }



    if !(Zentralencode14 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode14%


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


    if !(Zentralencode15 = "")
    {
        savepoint2_15:
        msgbox,0,Zentrale15 Zentralencode 15 wird gedruckt
    }



    if !(Zentralencode15 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode15%


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


    if !(Zentralencode16 = "")
    {
        savepoint2_16:
        msgbox,0,Zentrale16 Zentralencode 16 wird gedruckt
    }



    if !(Zentralencode16 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode16%


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


    if !(Zentralencode17 = "")
    {
        savepoint2_17:
        msgbox,0,Zentrale17 Zentralencode 17 wird gedruckt
    }



    if !(Zentralencode17 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode17%


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


    if !(Zentralencode18 = "")
    {
        savepoint2_18:
        msgbox,0,Zentrale18 Zentralencode 18 wird gedruckt
    }



    if !(Zentralencode18 = "")
    {
        ;Check if P-Touch Editior is still active
        if WinExist("P-touch Editor - [Zentralencode]")
        {
            WinActivate, P-touch Editor - [Zentralencode],
            MouseMove, 451, 271
            Sleep, 300
            MouseClick, left
            MouseClick, left
            Sleep, 300
            Send %Zentralencode18%


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

Reload




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
WinActivate, MyJABLOTRON Web Self Service - MyJABLOTRON - MyCOMPANY - Google Chrome
MouseMove, 762, 406
MouseClick, left
























return 

Alt & R:: 
Reload
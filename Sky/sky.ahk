#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, %A_ScriptDir%/../Config/config.ahk
#Include, %A_ScriptDir%/../Utils/utils.ahk

DELAY := 1.00

; Item status shows which items you have
HAVE_ROD_OF_ATOS := False
HAVE_HEX := False
HAVE_ETHEREAL_BLADE := False

; Configure your item settings here
ROD_OF_ATOS_KEY := "4"
HEX_KEY := "5"
ETHEREAL_BLADE_KEY := "3"

; Full combo
d::
    Gosub, Hex
    Gosub, RodOfAtos
    Gosub, AncientSeal
    Gosub, EtherealBlade
    Gosub, MysticFlare
    Gosub, ArcaneBolt
    Gosub, ConcussiveShot
Return

; ==============Abilities============
; Arcane bolt
ArcaneBolt:
    Send, {%ABILITY1%}
    Sleep, Round(100 * DELAY)
Return

; Concussive Shot
ConcussiveShot:
    Send, {%ABILITY2%}
    Sleep, Round(10 * DELAY)
Return

; Ancient Seal
AncientSeal:
    Send, {%ABILITY3%}
    Sleep, Round(100 * DELAY)
Return

; Mystic Flare
MysticFlare:
    Send, {%ABILITY6%}
    Sleep, Round(100 * DELAY)
Return

; ==========Items==============
; Rod of Atos
RodOfAtos:
    If HAVE_ROD_OF_ATOS {
        Send, {%ROD_OF_ATOS_KEY%}
        Sleep, Round(150 * DELAY)
    } Else {
        Sleep, 0
    }
Return

; Hex
Hex:
    If HAVE_HEX {
        Send, {%HEX_KEY%}
        Sleep, Round(50 * DELAY)
    } Else {
        Sleep, 0
    }
Return

; Ethereal blade
EtherealBlade:
    If HAVE_ETHEREAL_BLADE {
        Send, {%ETHEREAL_BLADE_KEY%}
        Sleep, Round(50 * DELAY)
    } Else {
        Sleep, 0
    }
Return

; =============Item setters=========
; Rod of Atos
Numpad1::
    HAVE_ROD_OF_ATOS = True
Return

; Hex
Numpad2::
    HAVE_HEX = True
Return

; Ethereal Blade
Numpad3::
    HAVE_ETHEREAL_BLADE = True
Return
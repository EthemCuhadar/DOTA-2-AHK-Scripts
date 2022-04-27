#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, %A_ScriptDir%/../Config/config.ahk
#Include, %A_ScriptDir%/../Utils/utils.ahk

DELAY := 1.00

; Configure your item settings here
BLINK_DAGGER_KEY := "1"
BKB_KEY := "6"
BLADE_MAIL_KEY := "4"

; Item status shows which items you have
HAVE_BLADE_MAIL := False
HAVE_BKB := False
HAVE_BLINK_DAGGER := False

; =============Combo=============
d::
    Gosub, BKB
    Gosub, BlinkDagger
    Gosub, BerserkersCall
    Gosub, BladeMail
Return

; =============Skills=============
; Berserker's Call
BerserkersCall:
    Send, {%ABILITY1%}
    Sleep, Round(400 * DELAY)
Return

; ============Items================
; Blink Dagger
BlinkDagger:
    If HAVE_BLINK_DAGGER {
        Send, {%BLINK_DAGGER_KEY%}
        Sleep, Round(150 * DELAY)
    } Else {
        Sleep, 0
    }
Return

; BKB
BKB:
    If HAVE_BKB {
        Send, {%BKB_KEY%}
        Sleep, Round(75 * DELAY)
    } Else {
        Sleep, 0
    }
Return

; Blade Mail
BladeMail:
    If HAVE_BLADE_MAIL {
        Send, {%BLADE_MAIL_KEY%}
        Sleep, Round(75 * DELAY)
    } Else {
        Sleep, 0
    }
Return

; ===========Item setters============
; Blink Dagger
Numpad2::
    HAVE_BLINK_DAGGER := True
Return

; Blade Mail
Numpad3::
    HAVE_BLADE_MAIL := True
Return

; BKB
Numpad4::
    HAVE_BKB := True
Return

Esc::ExitApp, ;Exit scipt with Escape key
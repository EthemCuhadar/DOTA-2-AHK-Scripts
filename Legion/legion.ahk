#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, %A_ScriptDir%/../Config/config.ahk
#Include, %A_ScriptDir%/../Utils/utils.ahk

DELAY := 1.00

; Configure your item settings here
BLINK_DAGGER_KEY := "1"
ARMLET_KEY := "5"
BKB_KEY := "6"
BLADE_MAIL_KEY := "4"
LINKEN_BREAKER_KEY := "3"

; Item status shows which items you have
HAVE_ARMLET := False
HAVE_BLADE_MAIL := False
HAVE_BKB := False
HAVE_BLINK_DAGGER := False
HAVE_LINKEN_BREAKER := False

; ===============Combo==========
$d::
    Gosub, Armlet
    Gosub, PressTheAttack
    Gosub, BKB
    Gosub, BlinkDagger
    Gosub, BladeMail
    Gosub, LinkenBreaker
    while GetKeyState("d", "P"){
        Gosub, Duel
    }
Return

; ==========Skills============
; Press the Attack
PressTheAttack:
    Send, !{%ABILITY2%}
    Sleep, Round(500 * DELAY)
Return

; Duel
Duel:
    Send, {%ABILITY6%}
    Sleep, Round(300 * DELAY)
Return

; ==========Items============
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

; Armlet
Armlet:
    If HAVE_ARMLET {
        Send, {%ARMLET_KEY%}
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

; Linken breaker
LinkenBreaker:
    If HAVE_LINKEN_BREAKER {
        Send, {%LINKEN_BREAKER_KEY%}
        Sleep, Round(75 * DELAY)
    } Else {
        Sleep, 0
    }
Return

; ===========Item setters============
; Armlet
Numpad1::
    HAVE_ARMLET := True
Return

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

; Linken Breaker
Numpad5::
    HAVE_LINKEN_BREAKER := True
Return

Esc::ExitApp, ;Exit scipt with Escape key
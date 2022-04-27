#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, %A_ScriptDir%/../Config/config.ahk
#Include, %A_ScriptDir%/../Utils/utils.ahk

DELAY := 1.00

; Configure your item settings here
BLINK_DAGGER_KEY := "1"
REFRESHER_ORB_KEY := "5"
BKB_KEY := "6"

; Item status shows which items you have
HAVE_BKB := False
HAVE_REFRESHER_ORB := False

; ============Combo=========
; Combo key is "d" with BKB and Refresher Orb.
d::
    Gosub, BKB
    Gosub, BlinkDagger
    Gosub, MidnightPulse
    Gosub, BlackHole
    If HAVE_REFRESHER_ORB {
        Gosub, RefresherOrb
        Gosub, BKB
        Gosub, MidnightPulse
        Gosub, BlackHole
    } Else {
        Sleep, 0
    }
Return

; ==========Skills============
; Midnight Pulse
MidnightPulse:
    Send, {%ABILITY3%}
    Sleep, randomSleep
Return

; Black Hole
BlackHole:
    Send, {%ABILITY6%}
    Sleep, 4500
Return

; ==========Items============
; Blink Dagger
BlinkDagger:
    Send, {%BLINK_DAGGER_KEY%}
    Sleep, randomSleep
Return

; BKB
BKB:
    If HAVE_BKB {
        Send, {%BKB_KEY%}
        Sleep, Round(50 * DELAY)
    } Else {
        Sleep, 0
    }
Return

; Refresher Orb
RefresherOrb:
    If HAVE_REFRESHER_ORB {
        Send, {%REFRESHER_ORB_KEY%}
        Sleep, Round(25 * DELAY)
    } Else {
        Sleep, 0
    }
Return

; ===========Item setters============
; BKB
Numpad1::
    HAVE_BKB := True
Return

; Refresher orb
Numpad2::
    HAVE_REFRESHER_ORB := True
Return

Esc::ExitApp, ;Exit scipt with Escape key
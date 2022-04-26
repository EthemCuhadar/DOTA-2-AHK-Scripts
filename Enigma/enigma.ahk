#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, %A_ScriptDir%/../Config/config.ahk
#Include, %A_ScriptDir%/../Utils/utils.ahk

; Configure your item settings here
BLINK_DAGGER_KEY := "1"
REFRESHER_ORB_KEY := "5"
BKB_KEY := "6"

; Item status shows which items you have
HAVE_BKB := False

; Black hole combo without Refresher Orb and BKB
; "d" is the combo key; you can change whatever key you want
d::
    ; Check whether you have bkb or not
    If (HAVE_BKB){
        Send, {%BKB_KEY%}
        Sleep, randomSleep
    } Else {
        Sleep, 0
    }
    Send, {%BLINK_DAGGER_KEY%}
    Sleep, randomSleep
    Send, {%ABILITY3%}
    Sleep, randomSleep
    Send, {%ABILITY6%}
    Sleep, 4000
Return

; Black hole combo with refresher orb and BKB
; "f" is the combo key; you can change whatever key you want
f::
    Send, d
    Sleep, 5000
    Send, {%REFRESHER_ORB_KEY%}
    Send, d
    Sleep, 4500
Return

; When you have BKB you need to change HAVE_BKB status as true
LAlt & b::
    HAVE_BKB := True
Return

Esc::ExitApp, ;Exit scipt with Escape key
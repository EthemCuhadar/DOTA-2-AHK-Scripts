#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, %A_ScriptDir%/../config.ahk
#Include, %A_ScriptDir%/../utils.ahk

ROLLING_BOULDER_DELAY := 1.00

; Boulder smash
LAlt & q::
    Send, !{%ABILITY4%}
    Sleep, randomSleep
    Send, {%ABILITY1%}
    Sleep, randomSleep
    Reload
Return

; Rolling boulder
LAlt & w::
    Send, {%ABILITY2%}
    Sleep, Round(ROLLING_BOULDER_DELAY * 350)
    Send, !{%ABILITY4%}
    Sleep, randomSleep
    Reload
Return

; Silence
LAlt & e::
    Send, {%ABILITY4%}
    Sleep, 50
    Send, {%ABILITY3%}
    Sleep, randomSleep
    Reload
Return

Esc::ExitApp, ;Exit scipt with Escape key
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, %A_ScriptDir%/../Config/config.ahk
#Include, %A_ScriptDir%/../Utils/utils.ahk

; =============Exort Skills==============
; Sunstrike
$t::
    Gosub, Exort
    Gosub, Exort
    Gosub, Exort
    Gosub, Invoke
    Send, t
Return

; Meteor
$d::
    Gosub, Exort
    Gosub, Exort
    Gosub, Wex
    Gosub, Invoke
    Send, d
Return

; Forge Spirit
$f::
    Gosub, Exort
    Gosub, Exort
    Gosub, Quas
    Gosub, Invoke
    Send, f
Return

; ============Wex skills===============
; EMP
$c::
    Gosub, Wex
    Gosub, Wex
    Gosub, Wex
    Gosub, Invoke
    Send, c
Return

; Alacrity
$z::
    Gosub, Wex
    Gosub, Wex
    Gosub, Exort
    Gosub, Invoke
    Send, z
Return

; Tornado
$x::
    Gosub, Wex
    Gosub, Wex
    Gosub, Quas
    Gosub, Invoke
    Send, x
Return

; ============Quas skills==============
; Cold snap
$y::
    Gosub, Quas
    Gosub, Quas
    Gosub, Quas
    Gosub, Invoke
    Send, y
Return

; Ghost walk
$v::
    Gosub, Quas
    Gosub, Quas
    Gosub, Wex
    Gosub, Invoke
    Send, v
Return

; Ice wall
$g::
    Gosub, Quas
    Gosub, Quas
    Gosub, Exort
    Gosub, Invoke
    Send, g
Return

; ============Shared===================
; Defeaning Blast
; Tornado
$b::
    Gosub, Quas
    Gosub, Wex
    Gosub, Exort
    Gosub, Invoke
    Send, b
Return

; ============Cast skills===============
; Quas
Quas:
    Send {%ABILITY1%}
    Sleep, shortDelay
Return

; Wex
Wex:
    Send {%ABILITY2%}
    Sleep, shortDelay
Return

; Exort
Exort:
    Send {%ABILITY3%}
    Sleep, shortDelay
Return

; Invoke
Invoke:
    Send, {%ABILITY6%}
    Sleep, shortDelay
Return
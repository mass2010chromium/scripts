#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance Force

; Windows + tab.
$^<#A::
Send, ^#{Left}
return

$^<#D::
Send, ^#{Right}
return

; Arrow key rebinding.
!<A::
Send, {Left}
return

!<S::
Send, {Down}
return

!<D::
Send, {Right}
return

!<W::
Send, {Up}
return

$^<!<A::
Send, ^{Left}
return

$^<!<S::
Send, ^{Down}
return

$^<!<D::
Send, ^{Right}
return

$^<!<W::
Send, ^{Up}
return

$+<!<A::
Send, +{Left}
return

$+<!<S::
Send, +{Down}
return

$+<!<D::
Send, +{Right}
return

$+<!<W::
Send, +{Up}
return

; Backspace and delete:
$!<X::
Send, {Delete}
return

$!<Z::
Send, {Backspace}
return

$!<Q::
Send, i
return

$+<!<Q::
Send, o
return

$^<+<W::
Send, :w
return

CapsLock::
Send, {Enter}
return

$+<CapsLock::
Send, +{Enter}
return

$^<CapsLock::
Send, ^{Enter}
return

!<`::
Send, \
return


; Right handed tabbing
NumPad0 & Right::
Send, ^#{Right}
return

NumPad0 & Left::
Send, ^#{Left}
return

NumPadIns & Right::
Send, ^#{Right}
return

NumPadIns & Left::
Send, ^#{Left}
return


; Right handed control-tabbing
NumPad0 & \::
    If (GetKeyState("Shift", "P"))
        Send, ^+{Tab}
    Else
        Send, ^{Tab}
return

NumPadIns & \::
    If (GetKeyState("Shift", "P"))
        Send, ^+{Tab}
    Else
        Send, ^{Tab}
return


; Right handed alt-tabbing

NumPad0 & ]::
    Send, ^{Tab}
return

NumPadIns & ]::
    Send, ^{Tab}
return

NumPad0 & [::
    Send, ^+{Tab}
return

NumPadIns & [::
    Send, ^+{Tab}
return

$[::
    If (GetKeyState("RAlt", "P"))
        Send, {Shift Down}{Tab}{Shift Up}
    Else
        Send, [
return

$]::
    If (GetKeyState("RAlt", "P"))
        Send, {Tab}
    Else
        Send, ]
return

$RAlt::
    Send, {Alt Down}
return

$RAlt Up::
    Send, {Alt Up}
return
#If WinActive("ahk_exe Code.exe") or WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe simplenote.exe") or WinActive("ahk_exe notion.exe")
{


; Letter Mappings -------------------------------------------------
!s::
Send, ^s
return

!a::
Send, ^a
return

!c::
Send, ^c
return

!v::
Send, ^v
return

!l::
Send, ^l
return

!z::
Send, ^z
return

!u::
Send, ^u
return

!n::
Send, ^n
return

!w::
Send, ^w
return

!f::
Send, ^f
return

!t::
Send, ^t
return

!p::
Send, ^p
return

!+d::
Send, ^+d
return

!d::
Send, ^d
return

!x::
Send, ^x
return

!r::
Send, ^r
return

; Number Mappings -------------------------------------------------

!1::
Send, ^1
return

!2::
Send, ^2
return

!3::
Send, ^3
return

!4::
Send, ^4
return

!5::
Send, ^5
return

!6::
Send, ^6
return

!7::
Send, ^7
return

!8::
Send, ^8
return

!9::
Send, ^9
return

!0::
Send, ^0
return

; Symbol Mappings -------------------------------------------------

!,::
Send, ^,
return

!/::
Send, ^/
return

; Map cmd and opt + left/right to move the cursor to the end of the line
; We do both cmd and opt because windows has this stupid snapping thing mapped to opt I want to override

LWin & Left::
if GetKeyState("Shift", "P") ; Check if Shift is being held
    Send +^{Left}           ; Send Shift + Ctrl + Left (select word to the left)
else
    Send ^{Left}            ; Send Ctrl + Left (move one word to the left)
return

LWin & Right::
if GetKeyState("Shift", "P") ; Check if Shift is being held
    Send +^{Right}          ; Send Shift + Ctrl + Right (select word to the right)
else
    Send ^{Right}           ; Send Ctrl + Right (move one word to the right)
return

!Left::
Send, {Home}
return

#Left::
Send, {Home}
return

+#Left::
Send, +{Home}
return

+!Left::
Send, +{Home}
return

+!Right::
Send, +{End}
return

!Right::
Send, {End}
return

+#Right::
Send, +{End}
return

#Right::
Send, {End}
return

!Up::
Send, ^{Home}
return

!Down::
Send, ^{End}
return

+!Up::
Send, +^{Home}
return

+!Down::
Send, +^{End}
return

}
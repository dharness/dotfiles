#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%


#IfWinActive, ahk_exe Adobe Substance 3D Painter.exe
{
    ;XButton2::<!LButton
    <!LButton::
        Send, {LButton Up}
        SendInput, MButton
    Return
}
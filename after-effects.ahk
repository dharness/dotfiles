#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%


#IfWinActive, ahk_exe AfterFX.exe
{
    !1::,
    !2::.
    Return
}
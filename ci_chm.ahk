/*
脚本名称：	ci_chm_maker
脚本编码：	UTF-8(with BOM)
脚本说明：	CI帮助文档生成器
脚本版本：	1.0
脚本作者：	飞扬网络工作室 (fysoft)
作者官网：	http://raoyc.com/fysoft/
交流Q群：	260655062
运行环境：	作者在编码或测试此脚本时所使用的运行环境为 Windows XP SP3 + AutoHotkey(L) v1.1.09.04，其它相异于此运行环境的，请自行测试脚本兼容性问题
版权申明：	非商业使用，在此脚本基础上所作出的修改，需保留原作者署名信息（作者名和官网链接）
备注信息：	
*/

#NoEnv
SendMode Input 
SetWorkingDir %A_ScriptDir%
;MsgBox, %A_AhkVersion%
RunWait, hhc.exe ..\ci_chm.hhp, %A_Scriptdir%\bin, Hide UseErrorLevel


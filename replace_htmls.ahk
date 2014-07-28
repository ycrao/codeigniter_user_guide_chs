#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
Loop, %0%
{
	GivenPath := %A_Index%
	FileRead, oldhtml, *P65001 %GivenPath%
	html := oldhtml
	html := RegExReplace(html,"simU)\stppabs=""(.*)""","")
	html := RegExReplace(html,"simU)\shref=""javascript:if\(confirm(.*)"""," href=""#""")
	html := RegExReplace(html,"simU)(*BSR_ANYCRLF)<script\stype=""text/javascript"">\R(.*)</div>\R</body>","</body>")
	StringReplace, html, html, create_menu(`'http://codeigniter.org.cn/user_guide/`'), create_menu(`'null`'), All
	
	if(html != oldhtml)
	{
		FileCopy, %GivenPath%, %GivenPath%.bak
		FileDelete, %GivenPath%
		FileAppend, %html%, %GivenPath%,UTF-8-RAW
	}
}

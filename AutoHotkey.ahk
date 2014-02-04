; Remap caps lock to open chrome search
Capslock::
SetTitleMatchMode, 2
If WinExist("ahk_exe chrome.exe")
{
	WinActivate
	WinWaitActive
	Send ^t
	Send ^l
}
else
{
	Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
	sleep 100
	Send ^l
}
return
+Capslock::Capslock
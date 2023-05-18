chcp 1251
set "prog=C:\Program Files\Crypto Pro\CSP\"
if exist "%prog%" (
msiexec /x {43525A7-6406-40BF-A4DC-3654B34524C1} /quiet /norestart /l*v %~dp0install\cspdelete-log.txt
)
chcp 1251
%~dp0install\cspsetup.exe -lang rus -args "/l*v %~dp0install\cspsetup-log.txt KCLEVEL=1 REGBIO=1 REGREGISTRY=1 DRIVER=1 COMPANYNAME=\"Государственное казенное учреждение «Центр цифровой трансформации Республики Татарстан» (ГКУ ЦЦТРТ)\" PIDKEY=53791-41620-01RG2-THLD4-UMRH2 /passive /quiet" -noreboot -nodlg
FOR /f "tokens=2 delims==" %%f IN ('wmic os get osarchitecture /value ^| find "="') DO SET "OS_ARCH=%%f"
IF "%OS_ARCH%"=="64-bit" (%~dp0install\chromium-gost.exe) else (%~dp0install\chromium-gost-x86.exe)
msg "%username%" Установка прошла успешно

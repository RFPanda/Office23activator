@echo off
color d&


title Activate Microsoft Office 2021&cls&
echo ======================================================================================&
echo #Project: Activating Microsoft software products for FREE without software by RFPanda&
echo ======================================================================================&echo.&
echo #Supported products:&
echo - Microsoft Office Standard 2021&
echo - Microsoft Office Professional 2021&
echo - Microsoft Office Professional Plus 2021&
echo ======================================================================================&
echo.&echo.&
(if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16")&(if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16")&(for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2021VL_KMS*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)&echo Office was found this PC, aktivating...&cscript //nologo slmgr.vbs /ckms >nul&cscript //nologo ospp.vbs /setprt:1688 >nul&cscript //nologo ospp.vbs /unpkey:6F7TH >nul&set i=1&cscript //nologo ospp.vbs /inpkey:FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH >nul||goto notsupported
:skms
if %i% GTR 10 goto busy
if %i% EQU 1 set KMS=104.244.78.23
if %i% EQU 2 set KMS=kms8.MSGuides.com
if %i% EQU 3 set KMS=s9.us.to
if %i% GTR 3 goto ato
cscript //nologo ospp.vbs /sethst:%KMS% >nul
:ato
cscript //nologo ospp.vbs /act | find /i "successful" && (echo.& echo ======================================================================================& echo #Please support this project: linkli.ml/paytokhasanov& echo ======================================================================================& echo.& echo #My official site: rfpanda.ml&^
echo ======================================================================================) || (echo Failed to connect to the server. Is the file running as administrator? Connecting to another server...& set /a i+=1 & goto skms)&
choice /n /c YN /m "Would you like to visit my site [Y,N]?" & if errorlevel 2 exit
explorer "https://rfpanda.ml"&
goto halt
:notsupported
goto halt
:notsupported
echo Office not found. It was installed correctly(ver2021)?.&goto halt
:busy
echo Is the file running as administrator?
:halt
pause >nul
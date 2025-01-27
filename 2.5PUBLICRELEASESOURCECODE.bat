@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\Snu 2.1\Downloads\Jason Jaguar 2.x Upgrade Versions\Jason JaguarOS 2.5 Public Release.exe
REM BFCPEICON=
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=2.4.1.0
REM BFCPEVERPRODUCT=JaguarOS - 2.5 Desktop Environment
REM BFCPEVERDESC=The world's most advanced batch OS!
REM BFCPEVERCOMPANY=Jason Jaguar Inc. 
REM BFCPEVERCOPYRIGHT=Jason Jaguar Inc. Labs 2025 (C)
REM BFCPEWINDOWCENTER=1
REM BFCPEDISABLEQE=0
REM BFCPEWINDOWHEIGHT=30
REM BFCPEWINDOWWIDTH=120
REM BFCPEWTITLE=JaguarOS - 2.5 Desktop Environment
REM BFCPEOPTIONEND
@echo off
setlocal EnableDelayedExpansion

title JaguarOS 2.5 (JaguarOS - 2.5 Desktop Environment)

if not exist "%SYSTEMDRIVE%\Program Files (x86)\Advanced BAT to EXE Converter v4.61\ab2econv461\aB2Econv.exe" goto preosinstaller
else goto prebiosstart

:prebiosstart
set taskID=""
set flagID=""

if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt goto useforset
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt goto donuseforset

:donuseforset
set jaguardos=2
goto contset

:useforset
set /p jaguardos=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt
goto contset

:contset
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) goto biosboot
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) goto JDOSBOOT


:JDOSBOOT
if exist %SYSTEMDRIVE%\JaguarSetup\jaguarautorun.txt goto dosboot
if not exist %SYSTEMDRIVE%\JaguarSetup\jaguarautorun.txt goto dbootfalse


:dbootfalse
mkdir %SYSTEMDRIVE%\JaguarSetup
goto dosboot


:dosboot
cls
color 0a
echo.
echo.
echo JaguarDOS Boot, Ver. 2.5.
echo (C) Copyright Jason Jaguar Inc, 2025
echo.
set /p DOO=%SYSTEMDRIVE%\

if %DOO%==EXT goto ext1
if %DOO%==ext goto ext1
if %DOO%==CLK goto clk1
if %DOO%==clk goto clk1
if %DOO%==SZE goto sizel1
if %DOO%==sze goto sizel1
if %DOO%==SET goto setul1
if %DOO%==set goto setul1
if %DOO%==INS goto instart
if %DOO%==ins goto instart
if %DOO%==ERR goto prehelpchk
if %DOO%==err goto prehelpchk
if %DOO%==CLS goto cless
if %DOO%==cls goto cless
if %DOO%==DEL goto deeleet
if %DOO%==del goto deeleet
if %DOO%==help goto prehelp1
if %DOO%==? goto prehelp1
if %DOO%==HELP goto prehelp1
goto prehelpchk




:dosboit
color 0a
echo.
set /p DOO=%SYSTEMDRIVE%\

if %DOO%==EXT goto ext1
if %DOO%==ext goto ext1
if %DOO%==CLK goto clk1
if %DOO%==clk goto clk1
if %DOO%==SZE goto sizel1
if %DOO%==sze goto sizel1
if %DOO%==SET goto setul1
if %DOO%==set goto setul1
if %DOO%==INS goto instart
if %DOO%==ins goto instart
if %DOO%==ERR goto prehelpchk
if %DOO%==err goto prehelpchk
if %DOO%==CLS goto cless
if %DOO%==cls goto cless
if %DOO%==DEL goto deeleet
if %DOO%==del goto deeleet
if %DOO%==help goto prehelp1
if %DOO%==? goto prehelp1
if %DOO%==HELP goto prehelp1
goto prehelpchk


:prehelp1
echo EXT     Exits JaguarDOS.
echo INS     Starts up the installation booting processes for JaguarOS 2.5 and 1.8 FileSystem.
echo CLK     Shows the date and time.
echo SZE     Declares the size of all directories and files contained on the FileSystem.
echo SET     Primes and sets the A: and B: drives for installation.
echo DEL     Deletes the %SYSTEMDRIVE%\JaguarSetup directory and redirects to first boot.
echo ERR     Tests the error-throwing system for JaguarDOS.
echo CLS     Clears the Command Terminal menu.
goto dosboit



:deeleet
rmdir /S /Q  %SYSTEMDRIVE%\JaguarSetup
goto JDOSBOOT



:ext1
exit



:clk1
time /t
date /t
goto dosboit



:prehelpchk
echo Illegal expression or command. 
goto dosboit



:sizel1
echo Directory of A:\.
echo.
echo.
echo.
echo.
echo 0 File(s):          0 Bytes.
echo 0 Dir(s):           0 Bytes free.


echo Directory of B:\.
echo.
echo.
echo.
echo.
echo 0 File(s):          0 Bytes.
echo 0 Dir(s):           0 Bytes free.
goto dosboit


:cless
cls
goto dosboit


:setul1
if exist %SYSTEMDRIVE%\JaguarSetup\jaguarautorun.txt goto setultrue
if not exist %SYSTEMDRIVE%\JaguarSetup\jaguarautorun.txt goto setulfalse


:setultrue
echo Setup Booter Drive previously initialized.
goto dosboit

:setulfalse
echo Creating Setup Booter Drive...
echo "}KEYBOARD = TRUE /: MOUSE = TRUE /: BOOTJDOS = TRUE $%/. Argument 37692[KERNEL UNLOCK] a:JJFS b:JJFS 98^97765 P{ }CHRSET LODR: $:>^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{  }calexe.mtp %HDPS_INIT% %SINGULARITY_CORE_ENGAGE% %QEN_CALIBRATE% %RDF_ACTIVATE%:: set HDPS_INIT=1234567890{  " > %SYSTEMDRIVE%\JaguarSetup\jaguarautorun.txt
ping Localhost -n 2 >nul
cls
echo Creating Setup Booter Drive..
ping Localhost -n 2 >nul
cls
echo Creating Setup Booter Drive...
ping Localhost -n 2 >nul
cls
echo Setup Booter Drive succesfully created and initialized for boot based on captured system specs.
goto dosboit 


:instart
if exist %SYSTEMDRIVE%\JaguarSetup\jaguarautorun.txt goto instarttrue
if not exist %SYSTEMDRIVE%\JaguarSetup\jaguarautorun.txt goto instartfalse


:instartfalse
echo Invalid starting conditions: Setup Jaguar Boot drive to start installation.
goto dosboit


:instarttrue
cls
echo "}KEYBOARD = TRUE /: MOUSE = TRUE /: BOOTJDOS = TRUE $%/. Argument 37692[KERNEL UNLOCK] a:JJFS b:JJFS 98^97765 P{
ping Localhost -n 1 >nul
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo }CHRSET LODR: ^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{
echo CHRSET LOD TRUE
ping Localhost -n 3 >nul
echo }calexe.mtp %HDPS_INIT% %SINGULARITY_CORE_ENGAGE% %QEN_CALIBRATE% %RDF_ACTIVATE%:: set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
echo }set HDPS_INIT=1234567890{ 
ping Localhost -n 3 >nul
pause
cls
echo por94wy toirfwgfgp89f3w98r3w893wr89w389w34r98w34r89wr3789wr
echo nr3wowruw3r8wr30rwo3w9r039rwubrwr   
echo 9or7grw9g890rhr8903ghr83hr8whr3uirh3
echo 000101091u314931i392i9238u282782820290290902uh3h78h237832892y37u239823
echo 39438u4h42h43h432438743jn42h4u847y84784939h3h8732h
echo 4393u4h893u4893y242h42g478g28282024994373g4yiug4894g8794g82g48g47g44904yh98432
echo 4h3478284g32784723g432ug4g487tg487g48212001010g478g48g48374g2
echo 94h3782h948yh230794gh3274g723g32404190947tg48674478
echo 84h374h8724tg180g4871g4873g814gh8234
echo 94h32784h382g4832g47ug237i4g37ui2g47y2g847g274g824
echo 94h37824h892gh472g84yqrety7wr76g73r62q
echo 493h489h4329yh47392g4y2g62612741278
echo por94wy toirfwgfgp89f3w98r3w893wr89w389w34r98w34r89wr3789wr
echo nr3wowruw3r8wr30rwo3w9r039rwubrwr   
echo 9or7grw9g890rhr8903ghr83hr8whr3uirh3
echo 000101091u314931i392i9238u282782820290290902uh3h78h237832892y37u239823
echo 39438u4h42h43h432438743jn42h4u847y84784939h3h8732h
echo 4393u4h893u4893y242h42g478g28282024994373g4yiug4894g8794g82g48g47g44904yh98432
echo 4h3478284g32784723g432ug4g487tg487g48212001010g478g48g48374g2
echo 94h3782h948yh230794gh3274g723g32404190947tg48674478
echo 84h374h8724tg180g4871g4873g814gh8234
echo 94h32784h382g4832g47ug237i4g37ui2g47y2g847g274g824
echo 94h37824h892gh472g84yqrety7wr76g73r62q
echo 493h489h4329yh47392g4y2g62612741278
echo por94wy toirfwgfgp89f3w98r3w893wr89w389w34r98w34r89wr3789wr
echo nr3wowruw3r8wr30rwo3w9r039rwubrwr   
echo 9or7grw9g890rhr8903ghr83hr8whr3uirh3
echo 000101091u314931i392i9238u282782820290290902uh3h78h237832892y37u239823
echo 39438u4h42h43h432438743jn42h4u847y84784939h3h8732h
echo 4393u4h893u4893y242h42g478g28282024994373g4yiug4894g8794g82g48g47g44904yh98432
echo 4h3478284g32784723g432ug4g487tg487g48212001010g478g48g48374g2
echo 94h3782h948yh230794gh3274g723g32404190947tg48674478
echo 84h374h8724tg180g4871g4873g814gh8234
echo 94h32784h382g4832g47ug237i4g37ui2g47y2g847g274g824
echo 94h37824h892gh472g84yqrety7wr76g73r62q
echo 493h489h4329yh47392g4y2g62612741278
echo por94wy toirfwgfgp89f3w98r3w893wr89w389w34r98w34r89wr3789wr
echo nr3wowruw3r8wr30rwo3w9r039rwubrwr   
echo 9or7grw9g890rhr8903ghr83hr8whr3uirh3
echo 000101091u314931i392i9238u282782820290290902uh3h78h237832892y37u239823
echo 39438u4h42h43h432438743jn42h4u847y84784939h3h8732h
echo 4393u4h893u4893y242h42g478g28282024994373g4yiug4894g8794g82g48g47g44904yh98432
echo 4h3478284g32784723g432ug4g487tg487g48212001010g478g48g48374g2
echo 94h3782h948yh230794gh3274g723g32404190947tg48674478
echo 84h374h8724tg180g4871g4873g814gh8234
echo 94h32784h382g4832g47ug237i4g37ui2g47y2g847g274g824
echo 94h37824h892gh472g84yqrety7wr76g73r62q
echo 493h489h4329yh47392g4y2g62612741278
echo por94wy toirfwgfgp89f3w98r3w893wr89w389w34r98w34r89wr3789wr
echo nr3wowruw3r8wr30rwo3w9r039rwubrwr   
echo 9or7grw9g890rhr8903ghr83hr8whr3uirh3
echo 000101091u314931i392i9238u282782820290290902uh3h78h237832892y37u239823
echo 39438u4h42h43h432438743jn42h4u847y84784939h3h8732h
echo 4393u4h893u4893y242h42g478g28282024994373g4yiug4894g8794g82g48g47g44904yh98432
echo 4h3478284g32784723g432ug4g487tg487g48212001010g478g48g48374g2
echo 94h3782h948yh230794gh3274g723g32404190947tg48674478
echo 84h374h8724tg180g4871g4873g814gh8234
echo 94h32784h382g4832g47ug237i4g37ui2g47y2g847g274g824
echo 94h37824h892gh472g84yqrety7wr76g73r62q
echo 493h489h4329yh47392g4y2g62612741278
echo por94wy toirfwgfgp89f3w98r3w893wr89w389w34r98w34r89wr3789wr
echo nr3wowruw3r8wr30rwo3w9r039rwubrwr   
echo 9or7grw9g890rhr8903ghr83hr8whr3uirh3
echo 000101091u314931i392i9238u282782820290290902uh3h78h237832892y37u239823
echo 39438u4h42h43h432438743jn42h4u847y84784939h3h8732h
echo 4393u4h893u4893y242h42g478g28282024994373g4yiug4894g8794g82g48g47g44904yh98432
echo 4h3478284g32784723g432ug4g487tg487g48212001010g478g48g48374g2
echo 94h3782h948yh230794gh3274g723g32404190947tg48674478
echo 84h374h8724tg180g4871g4873g814gh8234
echo 94h32784h382g4832g47ug237i4g37ui2g47y2g847g274g824
echo 94h37824h892gh472g84yqrety7wr76g73r62q
echo 493h489h4329yh47392g4y2g62612741278
echo por94wy toirfwgfgp89f3w98r3w893wr89w389w34r98w34r89wr3789wr
echo nr3wowruw3r8wr30rwo3w9r039rwubrwr   
echo 9or7grw9g890rhr8903ghr83hr8whr3uirh3
echo 000101091u314931i392i9238u282782820290290902uh3h78h237832892y37u239823
echo 39438u4h42h43h432438743jn42h4u847y84784939h3h8732h
echo 4393u4h893u4893y242h42g478g28282024994373g4yiug4894g8794g82g48g47g44904yh98432
echo 4h3478284g32784723g432ug4g487tg487g48212001010g478g48g48374g2
echo 94h3782h948yh230794gh3274g723g32404190947tg48674478
echo 84h374h8724tg180g4871g4873g814gh8234
echo 94h32784h382g4832g47ug237i4g37ui2g47y2g847g274g824
echo 94h37824h892gh472g84yqrety7wr76g73r62q
echo 493h489h4329yh47392g4y2g62612741278
echo por94wy toirfwgfgp89f3w98r3w893wr89w389w34r98w34r89wr3789wr
echo nr3wowruw3r8wr30rwo3w9r039rwubrwr   
echo 9or7grw9g890rhr8903ghr83hr8whr3uirh3
echo 000101091u314931i392i9238u282782820290290902uh3h78h237832892y37u239823
echo 39438u4h42h43h432438743jn42h4u847y84784939h3h8732h
echo 4393u4h893u4893y242h42g478g28282024994373g4yiug4894g8794g82g48g47g44904yh98432
echo 4h3478284g32784723g432ug4g487tg487g48212001010g478g48g48374g2
echo 94h3782h948yh230794gh3274g723g32404190947tg48674478
echo 84h374h8724tg180g4871g4873g814gh8234
echo 94h32784h382g4832g47ug237i4g37ui2g47y2g847g274g824
echo 94h37824h892gh472g84yqrety7wr76g73r62q
echo 493h489h4329yh47392g4y2g62612741278
ping Localhost -n 2 >nul
echo 1010001011111011011010101101000011100101010110
echo 101011111011101010101
echo 101011010111001011001010100111
echo 0101101111101110011001011011101001110001001110100111001101
echo 1110010011001100111111101111111001011100110011001101111111011011100
echo 1100111111011111110010111001100110011011111110110111001100111111011111110
echo 0101110011001100110111111101101110011001111
echo 11011111110010111001100110011011111110
echo 11011100110011111101111111001011100110011001101111111011011100110011111101111111001011
echo 1001100110011011111110110111001100111111011111
echo 110010111001100110011011111110110111001100111111011111
echo 110010111001100110011011111110110111001100111111
echo 011111110010111001100110011011111110110111001100111111
echo 011111110010111001100110011011111110110111001100111
echo 1110111111100101110011001100110111111101101110011001
echo 1111101111111001011100110011001101111111011011100110
echo 01111110111111100101110011001100110111111101101110011
echo 0011111101111111001011100110011001
echo 1011111110110111001100111111011
echo 1111100101110011001100110111111101101110011001111110111111100101110
echo 01100110011011111110110111001100111111011111110010111001100110011011
echo 1111101101110011001111110111111100101110011001100110111111101101
ping Localhost -n 3 >nul
echo Jason Jaguar OS 2.5 Kernel loaded and booted. Setup will now restart into FileSystem 1.8 BIOS.
pause
goto biosboot




:JBOOTDOSAFTER
cls
color 0a
echo.
echo.
echo JaguarDOS Boot, Ver. 2.5.
echo (C) Copyright Jason Jaguar Inc, 2025
echo.
set /p DOO=%SYSTEMDRIVE%\

if %DOO%==EXT goto ext2
if %DOO%==ext goto ext2
if %DOO%==CLK goto clk2
if %DOO%==clk goto clk2
if %DOO%==INS goto jstart
if %DOO%==ins goto jstart
if %DOO%==DOS goto CL
if %DOO%==dos goto CL
if %DOO%==ERR goto peehelpchk
if %DOO%==err goto peehelpchk
if %DOO%==CLS goto clessw
if %DOO%==cls goto clessw
if %DOO%==help goto prehelp2
if %DOO%==? goto prehelp2
if %DOO%==HELP goto prehelp2
goto peehelpchk




:dosbout
color 0a
echo.
set /p DOO=%SYSTEMDRIVE%\

if %DOO%==EXT goto ext2
if %DOO%==ext goto ext2
if %DOO%==CLK goto clk2
if %DOO%==clk goto clk2
if %DOO%==INS goto jstart
if %DOO%==ins goto jstart
if %DOO%==DOS goto CL
if %DOO%==dos goto CL
if %DOO%==ERR goto peehelpchk
if %DOO%==err goto peehelpchk
if %DOO%==CLS goto clessw
if %DOO%==cls goto clessw
if %DOO%==help goto prehelp2
if %DOO%==? goto prehelp2
if %DOO%==HELP goto prehelp2
goto peehelpchk


:prehelp2
echo EXT     Exits JaguarDOS and uninitializes any Operating System or Shell.
echo INS     Boots into an installed copy of JaguarOS 2.5.
echo DOS     Boots into an installed copy of JaguarDOS 2.5.
echo CLK     Shows the date and time.
echo ERR     Tests the error-throwing system for JaguarDOS.
echo CLS     Clears the Command Terminal menu.
goto dosbout




:ext2
exit



:clk2
time /t
date /t
goto dosbout



:peehelpchk
echo Illegal expression or command. 
goto dosbout



:clessw
cls
goto dosbout



:jstart
cls
ping Localhost -n 2 >nul
goto biosboot




:biosboot
color 08
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass goto cheloice
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass goto create1

:create1
mkdir %SYSTEMDRIVE%\JasonJaguarFileSystem
cls
rem PrintCenter Creating Jason Jaguar FileSystem... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
goto mainstoragecheck1



:mainstoragecheck1
cls
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) goto mainstoragecheck2
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) goto create2



:create2
mkdir %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)
mkdir %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)
cls
rem PrintCenter Creating Jason Jaguar FileSystem... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
goto mainstoragecheck2


:mainstoragecheck2
cls
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents goto mainstoragecheck3
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents goto create3




:create3
mkdir %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents
cls
rem PrintCenter Creating Jason Jaguar FileSystem... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
goto mainstoragecheck3


:mainstoragecheck3
cls
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData goto mainstoragecheck4
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData goto create4




:create4
mkdir %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData
mkdir %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass
echo.:>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt
cls
rem PrintCenter Creating Jason Jaguar FileSystem... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
rem PrintCenter Jason Jaguar FileSystem created! 23 0 9
pause
goto cheloice

:cheloice
cls
color 0a
CHOICE /C 12 /N /T 2 /D 1 /M "Booting..[Press '2' to enter the 'Post-BIOS Command Prompt Terminal']"


IF %ERRORLEVEL% EQU 2 GOTO CLIUSUS
IF %ERRORLEVEL% EQU 1 GOTO titlescreen

:CLIUSUS
cls
goto CLI

:titlescreen
cls
rem ShadeBoxAt 15 21 1 2 2
rem Wait 30
rem ShadeBoxAt 15 23 1 3 2
rem Wait 30
rem ShadeBoxAt 15 26 1 5 2
rem Wait 30
rem ShadeBoxAt 15 31 1 7 2
rem ShadeBoxAt 15 38 1 9 2
rem ChangeColor 0 8
rem ShadeBoxAt 15 21 1 1 4
rem Wait 30
rem ShadeBoxAt 15 47 1 11 2
rem ShadeBoxAt 15 22 1 6 4
rem Wait 30
rem ShadeBoxAt 15 58 1 11 2
rem ShadeBoxAt 15 28 1 6 4
rem Wait 30
rem ShadeBoxAt 15 41 1 40 2
rem ShadeBoxAt 15 34 1 7 4
rem ChangeColor 9 3
rem ShadeBoxAt 13 46 1 3 3
rem ShadeBoxAt 14 46 4 1 3
rem ShadeBoxAt 17 47 1 2 3
rem ShadeBoxAt 15 47 1 2 3
rem ShadeBoxAt 14 49 1 1 3
rem ShadeBoxAt 16 49 1 1 3
rem Wait 30
rem ShadeBoxAt 13 53 1 2 3
rem ShadeBoxAt 14 52 4 1 3
rem ShadeBoxAt 15 53 1 2 3
rem ShadeBoxAt 14 55 4 1 3
rem Wait 30
rem ShadeBoxAt 13 58 1 5 3
rem ShadeBoxAt 14 60 4 1 3
rem Wait 30
rem ShadeBoxAt 13 66 1 3 3
rem ShadeBoxAt 14 65 3 1 3
rem ShadeBoxAt 17 66 1 3 3
rem Wait 30
rem ShadeBoxAt 13 72 5 1 3
rem ShadeBoxAt 15 73 1 3 3
rem ShadeBoxAt 13 76 5 1 3
rem Wait 30
rem Wait 30
rem Wait 30
rem PrintCenter JaguarOS 9 0 9
rem ChangeColor 0 7
rem ShadeBoxAt 16 41 1 5 2
rem ShadeBoxAt 16 47 1 2 2
rem ShadeBoxAt 16 50 1 2 2
rem ShadeBoxAt 16 53 1 2 2
rem ShadeBoxAt 16 56 1 4 2
rem ShadeBoxAt 16 61 1 4 2
rem ShadeBoxAt 16 66 1 6 2
rem ShadeBoxAt 16 73 1 3 2
rem ShadeBoxAt 16 77 1 4 2
rem Wait 30
rem ChangeColor 0 15
rem ShadeBoxAt 17 41 1 5 2
rem ShadeBoxAt 17 49 1 3 2
rem ShadeBoxAt 17 53 1 2 2
rem ShadeBoxAt 17 56 1 4 2
rem ShadeBoxAt 17 61 1 5 2
rem ShadeBoxAt 17 69 1 3 2
rem ShadeBoxAt 17 73 1 3 2
rem ShadeBoxAt 17 77 1 4 2
rem Wait 30
rem ChangeColor 8 15
rem ChangeColor 7 15
rem ShadeBoxAt 18 41 1 40 2
rem Wait 30
rem ChangeColor 0 15
rem ShadeBoxAt 15 41 1 5 4
rem ShadeBoxAt 15 49 1 3 4
rem ShadeBoxAt 15 56 1 4 4
rem ShadeBoxAt 15 61 1 4 4
rem ShadeBoxAt 15 66 1 6 4
rem ShadeBoxAt 15 77 1 4 4
rem Wait 30
rem ShadeBoxAt 16 41 1 5 4
rem ShadeBoxAt 16 47 1 2 4
rem ShadeBoxAt 16 50 1 2 4
rem ShadeBoxAt 16 53 1 2 4
rem ShadeBoxAt 16 56 1 4 4
rem ShadeBoxAt 16 61 1 4 4
rem ShadeBoxAt 16 66 1 6 4
rem ShadeBoxAt 16 73 1 3 4
rem ShadeBoxAt 16 77 1 4 4
rem Wait 30
rem ShadeBoxAt 17 41 1 5 4
rem ShadeBoxAt 17 49 1 3 4
rem ShadeBoxAt 17 53 1 2 4
rem ShadeBoxAt 17 56 1 4 4
rem ShadeBoxAt 17 61 1 5 4
rem ShadeBoxAt 17 69 1 3 4
rem ShadeBoxAt 17 73 1 3 4
rem ShadeBoxAt 17 77 1 4 4
rem Wait 20
rem ShadeBoxAt 18 41 1 40 2
rem Wait 20
rem ChangeColor 0 0
rem ShadeBoxAt 18 41 1 40 2
rem Wait 500
rem ClearColor
rem Locate 30 1
rem PrintCenter 2.5 Desktop Environment 24 0 3
pause
goto madepass

:madepass
cls
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt goto loadingsys
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt goto firsttime


:firsttime
rem PaintScreen 1
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem ShadeBoxAt 13 20 1 34 3
rem PrintColorAt Welcome to JaguarOS 2.5 :) 9 19 15 1
rem PrintColorAt Input your username: 12 19 15 1
rem PrintColorAt { 13 19 0 9
rem GetInput
echo %result%>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
cls
rem PaintScreen 1
rem PrintCenter Inputting username... 21 15 0
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem PrintCenter Success :) 24 15 0
echo.
pause
cls
rem PaintScreen 1
set /p usar=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
rem PrintCenter Great, welcome %usar%. Enjoy JaguarOS 2.5 :) 15 15 0
echo.
pause
set taskID=""
set flagID=""
set wordID=""
goto loadingsys




rem WHEN MAKING VARIABLES, NO UPPERCASE, WHEN MAKING EQUALS FOR OPTION, NO SPACES
:loadingsys
cls
set /p usar=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
rem PrintCenter Loading JaguarOS 2.5 Desktop Environment... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 500
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 500
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 500
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 500
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 500
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 500
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 500
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 500
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 500
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
goto gui


:gui
set /p usar=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
rem Function to update date and time variables
rem Get the current date
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i

rem Get the current time
set mytime=!time!

rem Parse the time
for /F "tokens=1-3 delims=:" %%a in ("!mytime!") do (
    set hour=%%a
    set minute=%%b
    set second=%%c
)

rem Determine AM or PM
if !hour! lss 12 (
    set ampm=AM
) else (
    set ampm=PM
)

rem Convert hour to 12-hour format
if !hour! gtr 12 (
    set /A hour-=12
) else if !hour!==00 (
    set hour=12
)
cls
set flagID=snui
rem PaintScreen 15
rem ShadeBoxAt 3 1 27 120 2
rem ShadeBoxAt 1 33 2 87 1
rem ShadeBoxAt 2 34 1 87 2
rem ShadeBoxAt 2 1 1 87 1
rem Locate 25 1
rem PrintColorAt JaguarOS 2 . 5 - Public Ver. 1 88 0 9
rem PrintColorAt .X. 1 117 15 12
rem PrintColorAt Welcome, %usar%. :) 29 1 0 3
rem PrintColorAt {@@} 1 2 0 9
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem rem WIDTH THEN HEIGHT FOR COORDINATES THOUGH
rem PrintColorAt *Bubbles 1 8 0 9
rem PrintColorAt *Games 1 18 0 9
rem PrintColorAt PathFinder1.8 1 26 0 9
rem PrintColorAt Reload Desktop 1 41 0 9
rem PrintColorAt %hour%:%minute% %ampm%, %mydate% 29 100 0 3
rem PrintColorAt File 1 63 15 1
rem MouseCMD 2,1,5,1 8,1,15,1 18,1,23,1 26,1,38,1 41,1,54,1 63,1,66,1 117,1,119,1 104,29,119,29 1,29,11,29 get

if %result%==1 goto test
if %result%==2 goto bubbles
if %result%==3 goto lega
if %result%==4 goto FileSystem
if %result%==5 goto test3
if %result%==6 goto multifinder
if %result%==7 goto ENDJAGGUI
if %result%==8 goto dateus
if %result%==9 goto usernamesetter
if %result%==0 goto CLI



:usernamesetter
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Are you sure you want to change 8 19 0 3
rem PrintColorAt Your JaguarOS username? 10 19 0 11
rem PrintColorAt *Yes* 13 24 0 3
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto oosernahm
if %result%==6 goto snui
if %result%==0 goto CLI




:ENDJAGGUI
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt This will end your OS 2.5 GUI session. 10 18 0 3
rem PrintColorAt *Yes* 13 24 0 9
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto snurenderer
if %result%==6 goto snui
if %result%==0 goto CLI


:snurenderer
rem PaintScreen 15
rem ShadeBoxAt 3 1 27 120 2
rem ShadeBoxAt 1 33 2 87 1
wait 2500
rem PaintScreen 15
goto doschooser

:doschooser
set /p jaguardos=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt
if %jaguardos%==1 goto bigwaiternonboot
if %jaguardos%==2 goto bigwaiter

:bigwaiter
cls
ping Localhost -n 2 >nul
goto JBOOTDOSAFTER


:bigwaiternonboot
cls
ping Localhost -n 2 >nul
goto CL



:snui
set flagID=snui
set taskID=""
rem ShadeBoxAt 3 1 27 120 2
rem ShadeBoxAt 1 33 2 87 1
rem ShadeBoxAt 2 34 1 87 2
rem ShadeBoxAt 2 1 1 87 1
rem PrintColorAt *Bubbles 1 8 0 9 
rem PrintColorAt *Games 1 18 0 9
rem PrintColorAt PathFinder1.8 1 26 0 9
rem PrintColorAt Reload Desktop 1 41 0 9
rem PrintColorAt JaguarOS 2 . 5 - Public Ver. 1 88 0 9
rem PrintColorAt .X. 1 117 15 12
rem PrintColorAt Welcome, %usar%. :) 29 1 0 3
rem PrintColorAt %hour%:%minute% %ampm%, %mydate% 29 100 0 3
rem PrintColorAt File 1 63 15 1
rem MouseCMD 2,1,5,1 8,1,15,1 18,1,23,1 26,1,38,1 41,1,54,1 63,1,66,1 117,1,119,1 104,29,119,29 1,29,11,29 get

if %result%==1 goto test
if %result%==2 goto bubbles
if %result%==3 goto lega
if %result%==4 goto FileSystem
if %result%==5 goto test3
if %result%==6 goto multifinder
if %result%==7 goto ENDJAGGUI
if %result%==8 goto dateus
if %result%==9 goto usernamesetter
if %result%==0 goto CLI



:multifinder
rem Locate 25 1
rem ShadeBoxAt 2 63 5 11 4
rem PrintColorAt { 2 63 15 1
rem PrintColorAt { 3 63 15 1
rem PrintColorAt { 4 63 15 1
rem PrintColorAt { 5 63 15 1
rem PrintColorAt { 6 63 15 1
rem PrintColorAt { 7 63 15 1
rem PrintColorAt - 7 63 15 1
rem PrintColorAt - 7 64 15 1
rem PrintColorAt - 7 65 15 1
rem PrintColorAt - 7 66 15 1
rem PrintColorAt - 7 67 15 1
rem PrintColorAt - 7 68 15 1
rem PrintColorAt - 7 69 15 1
rem PrintColorAt - 7 70 15 1
rem PrintColorAt - 7 71 15 1
rem PrintColorAt - 7 72 15 1
rem PrintColorAt - 7 73 15 1
rem PrintColorAt } 2 73 15 1
rem PrintColorAt } 3 73 15 1
rem PrintColorAt } 4 73 15 1
rem PrintColorAt } 5 73 15 1
rem PrintColorAt } 6 73 15 1
rem PrintColorAt } 7 73 15 1
rem PrintColorAt - 7 73 15 1
rem ShadeBoxAt 8 64 1 11 1
rem ShadeBoxAt 3 74 6 1 1
rem PrintColorAt File 3 65 0 9
rem PrintColorAt %taskID% 5 65 0 3
rem MouseCMD 65,3,68,3 65,5,68,5 1,14,120,30 2,1,5,1 117,1,119,1 get

if %result%==1 goto jagblock
if %result%==2 goto %flagID%
if %result%==3 goto snui
if %result%==4 goto snui
if %result%==5 goto ENDJAGGUI
if %result%==0 goto CLI


:jagblock
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem PrintColorAt Reload Desktop 1 41 0 9
rem PrintColorAt File 1 63 15 1
rem MouseCMD 2,1,5,1 8,1,15,1 18,1,23,1 26,1,38,1 41,1,54,1 63,1,66,1 117,1,119,1 104,29,119,29 1,29,11,29 get

if %result%==1 goto test
if %result%==2 goto bubbles
if %result%==3 goto lega
if %result%==4 goto FileSystem
if %result%==5 goto test3
if %result%==6 goto multifinder
if %result%==7 goto ENDJAGGUI
if %result%==8 goto dateus
if %result%==9 goto usernamesetter
if %result%==0 goto CLI



:bubbles
set taskID=Bubl
set flagID=bubbles
set specID=BubbleGameSpec
rem ShadeBoxAt 2 41 5 19 2
rem ShadeBoxAt 7 58 1 2 2
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS ------  Bubble Popper Game{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt O 9 20 0 9
rem PrintColorAt O 9 27 0 9
rem PrintColorAt O 9 33 0 9
rem PrintColorAt O 9 39 0 9
rem PrintColorAt O 9 49 0 9
rem PrintColorAt O 12 20 0 9
rem PrintColorAt O 12 27 0 9
rem PrintColorAt O 12 33 0 9
rem PrintColorAt O 12 39 0 9
rem PrintColorAt O 12 49 0 9
rem PrintColorAt O 14 19 0 9
rem PrintColorAt O 14 53 0 9
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt *_-Bubble Popper-_* 7 27 0 3
rem PrintColorAt %specID% 1 41 0 9
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 20,9,20,9 27,9,27,9 33,9,33,9 39,9,39,9 49,9,49,9 20,12,20,12 27,12,27,12 33,12,33,12 39,12,39,12 49,12,49,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b3
if %result%==4 goto b4
if %result%==5 goto b5
if %result%==6 goto b6
if %result%==7 goto b7
if %result%==8 goto b8
if %result%==9 goto b9
if %result%==10 goto b10
if %result%==11 goto b11
if %result%==12 goto b12
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto snui
if %result%==16 goto multifinder
if %result%==17 goto bubblespec
if %result%==0 goto CLI






:bubblespec
rem Locate 25 1
rem ShadeBoxAt 2 42 4 16 4
rem PrintColorAt { 2 41 15 1
rem PrintColorAt { 3 41 15 1
rem PrintColorAt { 4 41 15 1
rem PrintColorAt { 5 41 15 1
rem PrintColorAt - 6 41 15 1
rem PrintColorAt - 6 42 15 1
rem PrintColorAt - 6 43 15 1
rem PrintColorAt - 6 44 15 1
rem PrintColorAt - 6 45 15 1
rem PrintColorAt - 6 46 15 1
rem PrintColorAt - 6 47 15 1
rem PrintColorAt - 6 48 15 1
rem PrintColorAt - 6 49 15 1
rem PrintColorAt - 6 50 15 1
rem PrintColorAt - 6 51 15 1
rem PrintColorAt - 6 52 15 1
rem PrintColorAt - 6 53 15 1
rem PrintColorAt - 6 54 15 1
rem PrintColorAt - 6 55 15 1
rem PrintColorAt - 6 56 15 1
rem PrintColorAt - 6 57 15 1
rem PrintColorAt - 6 58 15 1
rem PrintColorAt } 2 58 15 1
rem PrintColorAt } 3 58 15 1
rem PrintColorAt } 4 58 15 1
rem PrintColorAt } 5 58 15 1
rem PrintColorAt } 6 58 15 1
rem PrintColorAt - 6 58 15 1
rem ShadeBoxAt 7 42 1 17 1
rem ShadeBoxAt 3 59 5 1 1
rem PrintColorAt About Bubbles 3 43 0 3
rem PrintColorAt Reset Bubbles 5 43 0 11
rem MouseCMD 2,1,5,1 41,1,54,1 43,5,55,5 63,1,66,1 1,14,120,30 2,1,5,1 17,6,19,6 43,3,55,3 get

if %result%==1 goto snui
if %result%==2 goto bubbles
if %result%==3 goto bubbles
if %result%==4 goto multifinder
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto snui
if %result%==8 goto bubblesabout
if %result%==0 goto CLI



:bubblesabout
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS -- FileSystem Version 1.8{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Jaguar Bubble Popper, Version 1.2 8 19 15 1
rem PrintColorAt Pop Bubbles to your heart's content:) 9 19 0 9
rem PrintColorAt {@@} 11 34 0 3
rem PrintColorAt (C) Jason Jaguar Inc. 2024-25 13 23 0 11
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 41,1,54,1 63,1,66,1 1,14,120,30 17,6,19,6 get
if %result%==1 goto snui
if %result%==2 goto bubblespec
if %result%==3 goto multifinder
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==0 goto CLI



:b1
rem PrintColorAt O 9 20 0 0
rem MouseCMD 27,9,27,9 33,9,33,9 39,9,39,9 49,9,49,9 20,12,20,12 27,12,27,12 33,12,33,12 39,12,39,12 49,12,49,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b2
if %result%==2 goto b3
if %result%==3 goto b4
if %result%==4 goto b5
if %result%==5 goto b6
if %result%==6 goto b7
if %result%==7 goto b8
if %result%==8 goto b9
if %result%==9 goto b10
if %result%==10 goto b11
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI



:b2
rem PrintColorAt O 9 27 0 0
rem MouseCMD 20,9,20,9 33,9,33,9 39,9,39,9 49,9,49,9 20,12,20,12 27,12,27,12 33,12,33,12 39,12,39,12 49,12,49,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b3
if %result%==3 goto b4
if %result%==4 goto b5
if %result%==5 goto b6
if %result%==6 goto b7
if %result%==7 goto b8
if %result%==8 goto b9
if %result%==9 goto b10
if %result%==10 goto b11
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI



:b3
rem PrintColorAt O 9 33 0 0
rem MouseCMD 20,9,20,9 27,9,27,9 39,9,39,9 49,9,49,9 20,12,20,12 27,12,27,12 33,12,33,12 39,12,39,12 49,12,49,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b4
if %result%==4 goto b5
if %result%==5 goto b6
if %result%==6 goto b7
if %result%==7 goto b8
if %result%==8 goto b9
if %result%==9 goto b10
if %result%==10 goto b11
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI



:b4
rem PrintColorAt O 9 39 0 0
rem MouseCMD 20,9,20,9 27,9,27,9 33,9,33,9 49,9,49,9 20,12,20,12 27,12,27,12 33,12,33,12 39,12,39,12 49,12,49,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b3
if %result%==4 goto b5
if %result%==5 goto b6
if %result%==6 goto b7
if %result%==7 goto b8
if %result%==8 goto b9
if %result%==9 goto b10
if %result%==10 goto b11
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI




:b5
rem PrintColorAt O 9 49 0 0
rem MouseCMD 20,9,20,9 27,9,27,9 33,9,33,9 39,9,39,9 20,12,20,12 27,12,27,12 33,12,33,12 39,12,39,12 49,12,49,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b3
if %result%==4 goto b4
if %result%==5 goto b6
if %result%==6 goto b7
if %result%==7 goto b8
if %result%==8 goto b9
if %result%==9 goto b10
if %result%==10 goto b11
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI



:b6
rem PrintColorAt O 12 20 0 0
rem MouseCMD 20,9,20,9 27,9,27,9 33,9,33,9 39,9,39,9 49,9,49,9 27,12,27,12 33,12,33,12 39,12,39,12 49,12,49,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b3
if %result%==4 goto b4
if %result%==5 goto b5
if %result%==6 goto b7
if %result%==7 goto b8
if %result%==8 goto b9
if %result%==9 goto b10
if %result%==10 goto b11
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI


:b7
rem PrintColorAt O 12 27 0 0
rem MouseCMD 20,9,20,9 27,9,27,9 33,9,33,9 39,9,39,9 49,9,49,9 20,12,20,12 33,12,33,12 39,12,39,12 49,12,49,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b3
if %result%==4 goto b4
if %result%==5 goto b5
if %result%==6 goto b6
if %result%==7 goto b8
if %result%==8 goto b9
if %result%==9 goto b10
if %result%==10 goto b11
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI



:b8
rem PrintColorAt O 12 33 0 0
rem MouseCMD 20,9,20,9 27,9,27,9 33,9,33,9 39,9,39,9 49,9,49,9 20,12,20,12 27,12,27,12 39,12,39,12 49,12,49,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b3
if %result%==4 goto b4
if %result%==5 goto b5
if %result%==6 goto b6
if %result%==7 goto b7
if %result%==8 goto b9
if %result%==9 goto b10
if %result%==10 goto b11
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI



:b9
rem PrintColorAt O 12 39 0 0
rem MouseCMD 20,9,20,9 27,9,27,9 33,9,33,9 39,9,39,9 49,9,49,9 20,12,20,12 27,12,27,12 33,12,33,12 49,12,49,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b3
if %result%==4 goto b4
if %result%==5 goto b5
if %result%==6 goto b6
if %result%==7 goto b7
if %result%==8 goto b8
if %result%==9 goto b10
if %result%==10 goto b11
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI




:b10
rem PrintColorAt O 12 49 0 0
rem MouseCMD 20,9,20,9 27,9,27,9 33,9,33,9 39,9,39,9 49,9,49,9 20,12,20,12 27,12,27,12 33,12,33,12 39,12,39,12 19,14,19,14 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b3
if %result%==4 goto b4
if %result%==5 goto b5
if %result%==6 goto b6
if %result%==7 goto b7
if %result%==8 goto b8
if %result%==9 goto b9
if %result%==10 goto b11
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI




:b11
rem PrintColorAt O 14 19 0 0
rem MouseCMD 20,9,20,9 27,9,27,9 33,9,33,9 39,9,39,9 49,9,49,9 20,12,20,12 27,12,27,12 33,12,33,12 39,12,39,12 49,12,49,12 53,14,53,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b3
if %result%==4 goto b4
if %result%==5 goto b5
if %result%==6 goto b6
if %result%==7 goto b7
if %result%==8 goto b8
if %result%==9 goto b9
if %result%==10 goto b10
if %result%==11 goto b12
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI



:b12
rem PrintColorAt O 14 53 0 0
rem MouseCMD 20,9,20,9 27,9,27,9 33,9,33,9 39,9,39,9 49,9,49,9 20,12,20,12 27,12,27,12 33,12,33,12 39,12,39,12 49,12,49,12 19,14,19,14 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 get
if %result%==1 goto b1
if %result%==2 goto b2
if %result%==3 goto b3
if %result%==4 goto b4
if %result%==5 goto b5
if %result%==6 goto b6
if %result%==7 goto b7
if %result%==8 goto b8
if %result%==9 goto b9
if %result%==10 goto b10
if %result%==11 goto b11
if %result%==12 goto snui
if %result%==13 goto snui
if %result%==14 goto snui
if %result%==15 goto multifinder
if %result%==16 goto bubblespec
if %result%==0 goto CLI



:test
rem Locate 25 1
rem ShadeBoxAt 2 2 12 11 4
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem PrintColorAt { 2 2 0 9
rem PrintColorAt { 3 2 0 9
rem PrintColorAt { 4 2 0 9
rem PrintColorAt { 5 2 0 9
rem PrintColorAt { 6 2 0 9
rem PrintColorAt { 7 2 0 9
rem PrintColorAt { 8 2 0 9
rem PrintColorAt { 9 2 0 9
rem PrintColorAt { 10 2 0 9
rem PrintColorAt { 11 2 0 9
rem PrintColorAt { 12 2 0 9
rem PrintColorAt { 13 2 0 9
rem PrintColorAt - 13 2 0 9
rem PrintColorAt - 13 3 0 9
rem PrintColorAt - 13 4 0 9
rem PrintColorAt - 13 5 0 9
rem PrintColorAt - 13 6 0 9
rem PrintColorAt - 13 7 0 9
rem PrintColorAt - 13 8 0 9
rem PrintColorAt - 13 9 0 9
rem PrintColorAt - 13 10 0 9
rem PrintColorAt - 13 11 0 9
rem PrintColorAt - 13 12 0 9
rem PrintColorAt } 2 12 0 9
rem PrintColorAt } 3 12 0 9
rem PrintColorAt } 4 12 0 9
rem PrintColorAt } 5 12 0 9
rem PrintColorAt } 6 12 0 9
rem PrintColorAt } 7 12 0 9
rem PrintColorAt } 8 12 0 9
rem PrintColorAt } 9 12 0 9
rem PrintColorAt } 10 12 0 9
rem PrintColorAt } 11 12 0 9
rem PrintColorAt } 12 12 0 9
rem PrintColorAt - 13 12 0 9
rem ShadeBoxAt 14 3 1 11 1
rem ShadeBoxAt 3 13 12 1 1
rem PrintColorAt Settings 3 3 15 1
rem PrintColorAt About 5 3 0 3
rem PrintColorAt Backup 7 3 0 11
rem PrintColorAt Spec 9 3 15 5
rem PrintColorAt File 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 3,3,10,3 3,5,7,5 3,7,8,7 3,9,6,9 1,14,120,30 2,1,5,1 63,1,66,1 get
if %result%==1 goto jaguarsettings
if %result%==2 goto about
if %result%==3 goto fsysbackup
if %result%==4 goto spec
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==0 goto CLI




:fsysbackup
set taskID=Bkup
set flagID=fsysbackup
set specID=BackupLoadSpec
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Are you sure you want to backup 8 19 0 3
rem PrintColorAt Your Jason Jaguar FileSystem? 10 19 0 11
rem PrintColorAt *Yes* 13 24 0 3
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %specID% 1 41 0 9
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 41,1,54,1 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto jaguarbacklup
if %result%==6 goto snui
if %result%==7 goto backupspec
if %result%==0 goto CLI



:backupspec
rem Locate 25 1
rem ShadeBoxAt 2 42 4 16 4
rem PrintColorAt { 2 41 15 1
rem PrintColorAt { 3 41 15 1
rem PrintColorAt { 4 41 15 1
rem PrintColorAt { 5 41 15 1
rem PrintColorAt - 6 41 15 1
rem PrintColorAt - 6 42 15 1
rem PrintColorAt - 6 43 15 1
rem PrintColorAt - 6 44 15 1
rem PrintColorAt - 6 45 15 1
rem PrintColorAt - 6 46 15 1
rem PrintColorAt - 6 47 15 1
rem PrintColorAt - 6 48 15 1
rem PrintColorAt - 6 49 15 1
rem PrintColorAt - 6 50 15 1
rem PrintColorAt - 6 51 15 1
rem PrintColorAt - 6 52 15 1
rem PrintColorAt - 6 53 15 1
rem PrintColorAt - 6 54 15 1
rem PrintColorAt - 6 55 15 1
rem PrintColorAt - 6 56 15 1
rem PrintColorAt - 6 57 15 1
rem PrintColorAt - 6 58 15 1
rem PrintColorAt } 2 58 15 1
rem PrintColorAt } 3 58 15 1
rem PrintColorAt } 4 58 15 1
rem PrintColorAt } 5 58 15 1
rem PrintColorAt } 6 58 15 1
rem PrintColorAt - 6 58 15 1
rem ShadeBoxAt 7 42 1 17 1
rem ShadeBoxAt 3 59 5 1 1
rem PrintColorAt Boot Backup 3 43 0 3
rem MouseCMD 2,1,5,1 41,1,54,1 43,3,53,3 63,1,66,1 1,14,120,30 2,1,5,1 17,6,19,6 get

if %result%==1 goto snui
if %result%==2 goto fsysbackup
if %result%==3 goto drivebooterex
if %result%==4 goto multifinder
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto snui
if %result%==0 goto CLI



:drivebooterex
set taskID=Boot
set flagID=drivebooterex
set specID=ReturnToBackup
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Would you like to boot off 8 19 0 3
rem PrintColorAt A previous FileSystem Backup? 10 19 0 11
rem PrintColorAt *Yes* 13 24 0 3
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %specID% 1 41 0 9
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 41,1,54,1 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto reejaguarbacklup
if %result%==6 goto snui
if %result%==7 goto fsysbackup
if %result%==0 goto CLI



:reejaguarbacklup
if exist %SYSTEMDRIVE%\JasonJaguarFileSystemBackup goto reejaguarbackluptrue
if not exist %SYSTEMDRIVE%\JaguarSetup\jaguarautorun.txt goto reejaguarbacklupfalse


:reejaguarbacklupfalse
cls
rem PrintCenter Sorry, no FileSystem Backup detected. :( You will now return to the GUI. 15 0 9
pause
goto GUI


:reejaguarbackluptrue
xcopy %SYSTEMDRIVE%\JasonJaguarFileSystemBackup %SYSTEMDRIVE%\JasonJaguarFileSystem /E /H /C /I
cls
rem PrintCenter Re-integrating into previous FileSystem Backup... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
rem PrintCenter Jason Jaguar FileSystem re-integration complete! 23 0 9
pause
rem PrintCenter Your previous FileSystem backup is now bootable. 26 0 9
pause
goto gui




:jaguarbacklup
xcopy %SYSTEMDRIVE%\JasonJaguarFileSystem %SYSTEMDRIVE%\JasonJaguarFileSystemBackup /E /H /C /I
cls
rem PrintCenter Backing up the Jason Jaguar FileSystem... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
rem PrintCenter Jason Jaguar FileSystem backed up! 23 0 9
pause
rem PrintCenter Your FileSystem is now backed up in the %SYSTEMDRIVE% Drive in case you lose your files. 26 0 9
pause
goto gui




:jaguarsettings
set taskID=Sett
set flagID=jaguarsettings
set specID=SettReturnSpec
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - - Desktop Settings Menu{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt /====================================\ 7 18 0 11
rem PrintColorAt \====================================/ 14 18 0 11
rem PrintColorAt *Date/Time* 9 23 0 9
rem PrintColorAt *Username* 9 41 0 9
rem PrintColorAt *Capture System Specs* 12 19 0 3
rem PrintColorAt *DOS settings* 12 42 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %specID% 1 41 0 9
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 23,9,33,9 41,9,50,9 19,12,40,12 42,12,55,12 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto dateus
if %result%==6 goto oosernahm
if %result%==7 goto info
if %result%==8 goto settingsfordos
if %result%==0 goto CLI



:oosernahm
cls
echo. >%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
rem PaintScreen 1
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem ShadeBoxAt 13 20 1 34 3
rem PrintColorAt Input your desired username: 12 19 15 1
rem PrintColorAt { 13 19 0 9
rem GetInput
echo %result%>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
cls
rem PaintScreen 1
rem PrintCenter Inputting username... 21 15 0
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem PrintCenter Success :) 24 15 0
echo.
pause
cls
rem PaintScreen 1
set /p usar=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
rem PrintCenter Your username is saved at MainStorage(A)\OtherUserData\UserPass\username.txt :) 15 15 0
echo.
pause
goto gui






:info
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Would you like to capture 8 19 0 3
rem PrintColorAt Your PC's specifications? 10 19 0 11
rem PrintColorAt *Yes* 13 24 0 3
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %specID% 1 41 0 9
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 41,1,54,1 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto capturas
if %result%==6 goto jaguarsettings
if %result%==7 goto jaguarsettings
if %result%==0 goto CLI


:capturas
cls
echo.================================ >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
echo     JaguarOS_2.5_Desktop_Environment/JaguarDOS_2.5 >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
echo.================================ >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic computersystem get manufacturer,model,name >%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic cpu get name,numberofcores >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic bios get manufacturer,serialnumber,smbiosbiosversion >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic memorychip where "devicelocator != 'SYSTEM ROM'" get capacity,devicelocator,manufacturer,partnumber >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
ECHO OS: JaguarOS 2.5 Desktop Environment/JaguarDOS 2.5 >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic diskdrive get index,firmwarerevision,model,size >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic logicaldisk get description,deviceid,freespace,size,volumename >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic NIC where "physicaladapter=TRUE" get MACAddress,ProductName | findstr /v /%SYSTEMDRIVE%"Virtual" >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic nicconfig where ipenabled="TRUE" get description,macaddress,ipaddress,dhcpleaseobtained >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
echo. >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
echo.===================================== >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
echo     @Copyright Jason Jaguar.inc, 2025 >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
echo.===================================== >>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
cls
rem PrintCenter Capturing system specs... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
rem PrintCenter PC's specifications saved! 23 0 9
pause
rem PrintCenter Your PC's specifications are now captured and saved to the A: Drive's "OtherUserData" directory. 27 0 9
pause
goto gui



:about
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JaguarOS Desktop Environment 9 21 15 1
rem PrintColorAt Public Release Ver. 2.5 10 24 0 9
rem PrintColorAt {@@} 12 34 0 3
rem PrintColorAt (C) Jason Jaguar Inc. 2025 13 23 0 11
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==0 goto CLI


:dateus
set specID=SettReturnSpec
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt The date is %mydate%, 9 24 15 1
rem PrintColorAt and the time is %hour%:%minute% %ampm%. 12 22 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt *Re-Sync* 7 20 0 3
rem PrintColorAt %specID% 1 41 0 9
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 20,7,28,7 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto jaguarsettings
if %result%==6 goto daterchange
if %result%==0 goto CLI


:daterchange
rem Function to update date and time variables
rem Get the current date
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i

rem Get the current time
set mytime=!time!

rem Parse the time
for /F "tokens=1-3 delims=:" %%a in ("!mytime!") do (
    set hour=%%a
    set minute=%%b
    set second=%%c
)

rem Determine AM or PM
if !hour! lss 12 (
    set ampm=AM
) else (
    set ampm=PM
)

rem Convert hour to 12-hour format
if !hour! gtr 12 (
    set /A hour-=12
) else if !hour!==00 (
    set hour=12
)
goto dateus




:settingsfordos
set /p jaguardos=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt
if %jaguardos%==1 goto settingsfordosno
if %jaguardos%==2 goto settingsfordosyes

:settingsfordosno
echo 1 >%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt
set specID=SettReturnSpec
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Revert to JaguarDOS BOOT upon 9 21 15 1
rem PrintColorAt clicking .X. at the top right 10 21 15 1
rem PrintColorAt (Click X for Yes, click again for no.) 11 18 0 9
rem PrintColorAt ([ ]) 13 35 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %specID% 1 41 0 9
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 35,13,39,13 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto jaguarsettings
if %result%==6 goto settingsfordosyes
if %result%==0 goto CLI



:settingsfordosyes
echo 2 >%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt
set specID=SettReturnSpec
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Revert to JaguarDOS BOOT upon 9 21 15 1
rem PrintColorAt clicking .X. at the top right 10 21 15 1
rem PrintColorAt (Click X for Yes, click again for no.) 11 18 0 9
rem PrintColorAt ([X]) 13 35 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %specID% 1 41 0 9
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 41,1,54,1 35,13,39,13 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto jaguarsettings
if %result%==6 goto settingsfordosno
if %result%==0 goto CLI





:spec
rem Locate 25 1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 9 9 12 11 4
rem ShadeBoxAt 9 10 4 5 4
rem PrintColorAt { 9 9 0 9
rem PrintColorAt { 10 9 0 9
rem PrintColorAt { 11 9 0 9
rem PrintColorAt { 12 9 0 9
rem PrintColorAt { 13 9 0 9
rem PrintColorAt { 14 9 0 9
rem PrintColorAt { 15 9 0 9
rem PrintColorAt { 16 9 0 9
rem PrintColorAt { 17 9 0 9
rem PrintColorAt { 18 9 0 9
rem PrintColorAt { 19 9 0 9
rem PrintColorAt { 20 9 0 9
rem PrintColorAt - 20 9 0 9
rem PrintColorAt - 20 10 0 9
rem PrintColorAt - 20 11 0 9
rem PrintColorAt - 20 12 0 9
rem PrintColorAt - 20 13 0 9
rem PrintColorAt - 20 14 0 9
rem PrintColorAt - 20 15 0 9
rem PrintColorAt - 20 16 0 9
rem PrintColorAt - 20 17 0 9
rem PrintColorAt - 20 18 0 9
rem PrintColorAt - 20 19 0 9
rem PrintColorAt } 9 19 0 9
rem PrintColorAt } 10 19 0 9
rem PrintColorAt } 11 19 0 9
rem PrintColorAt } 12 19 0 9
rem PrintColorAt } 13 19 0 9
rem PrintColorAt } 14 19 0 9
rem PrintColorAt } 15 19 0 9
rem PrintColorAt } 16 19 0 9
rem PrintColorAt } 17 19 0 9
rem PrintColorAt } 18 19 0 9
rem PrintColorAt } 19 19 0 9
rem PrintColorAt - 20 19 0 9
rem ShadeBoxAt 9 10 4 9 4
rem ShadeBoxAt 13 10 2 4 4
rem PrintColorAt Calc 10 10 15 1
rem PrintColorAt Word 12 10 0 9
rem PrintColorAt CMD 14 10 0 3
rem PrintColorAt Updater 16 10 0 11
rem PrintColorAt Reinst 18 10 15 5
rem ShadeBoxAt 21 10 1 11 1
rem ShadeBoxAt 10 20 12 1 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 3,3,10,3 3,5,7,5 3,7,8,7 1,21,120,30 2,1,5,1 10,10,13,10 10,12,13,12 10,14,13,14 10,16,16,16 1,21,120,30 63,1,66,1 10,18,16,18 get
if %result%==1 goto jaguarsettings
if %result%==2 goto about
if %result%==3 goto fsysbackup
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto calcu
if %result%==7 goto word
if %result%==8 goto CL
if %result%==9 goto osysupdate
if %result%==10 goto snui
if %result%==11 goto multifinder
if %result%==12 goto reinst
if %result%==0 goto CLI


:osysupdate
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Are you sure you want to download 8 19 0 3
rem PrintColorAt JaguarOS's latest Public Release? 10 19 0 11
rem PrintColorAt *Yes* 13 24 0 3
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto yesupdate
if %result%==6 goto snui
if %result%==0 goto CLI


:yesupdate
cls
cd %USERPROFILE%\Desktop\
set "_rnd=JaguarOSSOURCECODE"
for /f "tokens=2 delims= " %%a in ('curl -sL https://api.github.com/repos/jasonjaguarinc/Jason-Jaguar-OS/releases/latest ^| find /i "browser_download_url"') do curl -sL %%~a -o "%_rnd%.bat"
rem PrintCenter Downloading latest version of JaguarOS... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

if not exist "%SYSTEMDRIVE%\Users\%USERNAME%\Desktop\JaguarOSSOURCECODE.bat" goto updateyusincorrect
if exist "%SYSTEMDRIVE%\Users\%USERNAME%\Desktop\JaguarOSSOURCECODE.bat" goto updateyuscorrect


:updateyuscorrect
rem ClearColor
rem Locate 30 1
rem PrintCenter Your JaguarOS update has downloaded successfully off the internet! 23 0 9
pause
rem PrintCenter It's saved on your Windows desktop, use Advanced BAT to EXE Converter to build it when you want to update. 26 0 9
pause
goto GUI


:updateyusincorrect
cls
rem PrintCenter Sorry, unable to download update at the moment. :( You will now return to the GUI. 15 0 9
pause
goto GUI



:reinst
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Are you sure you want to reinstall 8 19 0 3
rem PrintColorAt JaguarOS 2.5 Public Release? 10 19 0 11
rem PrintColorAt *Yes* 13 24 0 3
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto yestal
if %result%==6 goto snui
if %result%==0 goto CLI



:yestal
rd /s /q %SYSTEMDRIVE%\JasonJaguarFileSystem
cls
rem PrintCenter Removing Jason Jaguar FileSystem... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
rem PrintCenter Jason Jaguar FileSystem removed! 23 0 9
pause
rem PrintCenter Your OS/FileSystem will now reinstall 26 0 9
pause
goto snuingsure

:snuingsure
goto biosboot





:word
cls
color 0a
set "color=%_color_choice%"
set "_file=0"
set "output_file=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents\JAGUARWORD.txt"
goto go_back7
:go_back7
if not exist "%output_file%" (
  echo. > "%output_file%"
)

cls
echo Welcome to the JaguarOS Office Word Processor :)
echo Type all your text here, and it will be saved in the Jaguar FileSystem's A: Drive in Documents.
echo.
echo @. Save and exit the JAGUAR WORD document editor
echo *. Change text color
echo #. Clear JAGUAR WORD Writing Cache
echo:
echo       JAGUAR WORD 1.2:
echo =========================================
type "%output_file%"
echo =========================================

set /p "_txt="
if "%_txt%" == "@" (
  goto :go_out7
) else if "%_txt%" == "*" (
  goto :go_color7
) else if "%_txt%" == "#" (
  echo. > "%output_file%"
) else (
  echo % >> "%output_file%"
  for /f "delims=" %%g in ("%_txt%") do echo %%~g >> "%output_file%"
)

goto :go_back7

:go_out7
echo Saved to "%output_file%".
pause
goto gui


:go_color7
cls & title ******* CHANGE TEXT COLOR *******

echo Select a text color (1-9):
echo 1 - Blue
echo 2 - Green
echo 3 - Cyan
echo 4 - Red
echo 5 - Magenta
echo 6 - Brown
echo 7 - Gray
echo 8 - Light Gray
echo 9 - Light Blue

set /p "_color_choice="
if "%_color_choice%" LEQ 9 (
  color %_color_choice%
  echo Text color changed to %_color_choice%.
  pause
) else (
  echo Invalid color choice.
  pause
)

goto go_back7




:CL
cls
goto CLI

:CLI
color 0a
echo.
echo.
echo JaguarDOS, Ver. 2.5 Command Line Interface
echo (C) Copyright Jason Jaguar Inc, 2025
echo.
set /p CMD=@%usar%jaguarcmd}
  
if %CMD%==help goto helpcmd
if %CMD%==? goto helpcmd
if %CMD%==HELP goto helpcmd
if %CMD%==RET goto biosboot
if %CMD%==ret goto biosboot
if %CMD%==GUI goto gui
if %CMD%==gui goto gui
if %CMD%==ABT goto abt
if %CMD%==abt goto abt
if %CMD%==SYS goto infotus
if %CMD%==sys goto infotus
if %CMD%==WRD goto word
if %CMD%==wrd goto word
if %CMD%==DIR goto directory
if %CMD%==dir goto directory
if %CMD%==REM goto remlove
if %CMD%==rem goto remlove
if %CMD%==APP goto appruncmd
if %CMD%==app goto appruncmd
if %CMD%==TRE goto fyletree
if %CMD%==tre goto fyletree
if %CMD%==EXT goto ext
if %CMD%==ext goto ext
if %CMD%==CLK goto clk
if %CMD%==clk goto clk
if %CMD%==SZE goto sizel
if %CMD%==sze goto sizel
if %CMD%==CLC goto clialc
if %CMD%==clc goto clialc
if %CMD%==ERR goto chkhelp
if %CMD%==err goto chkhelp
if %CMD%==CLS goto ceeelless
if %CMD%==cls goto ceeelless
if %CMD%==RNS goto rinset
if %CMD%==rns goto rinset
if %CMD%==COD goto jagcode
if %CMD%==cod goto jagcode
if %CMD%==DOS goto revertdos
if %CMD%==dos goto revertdos
if %CMD%==BCK goto BACKKUPCMD
if %CMD%==bck goto BACKKUPCMD
if %CMD%==NUK goto nukefyle
if %CMD%==nuk goto nukefyle
if %CMD%==BOT goto BOOTBACKKUPCMD
if %CMD%==bot goto BOOTBACKKUPCMD
if %CMD%==UPD goto yesupdatecmd
if %CMD%==upd goto yesupdatecmd
if %CMD%==STR goto terminalmarket
if %CMD%==str goto terminalmarket
if %CMD%==CHG goto jaguarchangercmd
if %CMD%==chg goto jaguarchangercmd
if %CMD%==DTC goto daterchangecmd
if %CMD%==dtc goto daterchangecmd
if %CMD%==USR goto jagusernamechangecmd
if %CMD%==usr goto jagusernamechangecmd
goto chkhelp



:CLIUS
color 0a
echo.
set /p CMD=@%usar%jaguarcmd}
  
if %CMD%==help goto helpcmd
if %CMD%==? goto helpcmd
if %CMD%==HELP goto helpcmd
if %CMD%==RET goto biosboot
if %CMD%==ret goto biosboot
if %CMD%==GUI goto gui
if %CMD%==gui goto gui
if %CMD%==ABT goto abt
if %CMD%==abt goto abt
if %CMD%==SYS goto infotus
if %CMD%==sys goto infotus
if %CMD%==WRD goto word
if %CMD%==wrd goto word
if %CMD%==DIR goto directory
if %CMD%==dir goto directory
if %CMD%==REM goto remlove
if %CMD%==rem goto remlove
if %CMD%==APP goto appruncmd
if %CMD%==app goto appruncmd
if %CMD%==TRE goto fyletree
if %CMD%==tre goto fyletree
if %CMD%==EXT goto ext
if %CMD%==ext goto ext
if %CMD%==CLK goto clk
if %CMD%==clk goto clk
if %CMD%==SZE goto sizel
if %CMD%==sze goto sizel
if %CMD%==CLC goto clialc
if %CMD%==clc goto clialc
if %CMD%==ERR goto chkhelp
if %CMD%==err goto chkhelp
if %CMD%==CLS goto ceeelless
if %CMD%==cls goto ceeelless
if %CMD%==RNS goto rinset
if %CMD%==rns goto rinset
if %CMD%==COD goto jagcode
if %CMD%==cod goto jagcode
if %CMD%==DOS goto revertdos
if %CMD%==dos goto revertdos
if %CMD%==BCK goto BACKKUPCMD
if %CMD%==bck goto BACKKUPCMD
if %CMD%==NUK goto nukefyle
if %CMD%==nuk goto nukefyle
if %CMD%==BOT goto BOOTBACKKUPCMD
if %CMD%==bot goto BOOTBACKKUPCMD
if %CMD%==UPD goto yesupdatecmd
if %CMD%==upd goto yesupdatecmd
if %CMD%==STR goto terminalmarket
if %CMD%==str goto terminalmarket
if %CMD%==CHG goto jaguarchangercmd
if %CMD%==chg goto jaguarchangercmd
if %CMD%==DTC goto daterchangecmd
if %CMD%==dtc goto daterchangecmd
if %CMD%==USR goto jagusernamechangecmd
if %CMD%==usr goto jagusernamechangecmd
goto chkhelp


:helpcmd
echo RET     Directs the user to the main startup sequence for both new and returning users.
echo GUI     Returns the user to Graphical Shell for JaguarOS.
echo ABT     Displays the user's Operating System and FileSystem versions.
echo SYS     Displays the system info for the computer.
echo WRD     Directs the user to the JaguarOS Word Processor.
echo DIR     Lets the user easily make directory folders.
echo REM     Lets the user easily remove folders if they know the name of the folder.
echo TRE     Opens the Terminal's file browser, including an in-depth directory tree for the FileSystem drives.
echo APP     Runs software from the external App(B) drive.
echo EXT     Exits JaguarOS 2.5.
echo CLK     Shows the date and time.
echo SZE     Displays the size of the FileSystem drives for JaguarOS.
echo CLC     Directs the user to the calculator.
echo ERR     Tests the error-throwing system for the CLI.
echo CLS     Clears the Command Terminal menu.
echo RNS     Reinstalls the JaguarOS 2.5 Desktop Environment and FileSystem.
echo DOS     Exits out of JaguarOS 2.5 Desktop Environment and FileSystem, and then reverts to the JaguarDOS Boot Version.
echo COD     Directs the user to the Code Builder, which allows them to write a full JaguarOS-compatible program within the terminal.
echo BCK     Creates a backup of the user's FileSystem on the %SYSTEMDRIVE% Drive in the event of lost data.
echo NUK     Nukes your current FileSystem install, directing the user to a pre-install version of JaguarDOS Boot 2.5.
echo BOT     Boots from a FileSystem Backup currently on the %SYSTEMDRIVE% Drive.
echo UPD     Downloads latest update of JaguarOS from the Jason Jaguar servers.
echo STR     Opens the Terminal's JaguarOS Online Store, from which you can download JaguarOS compatible software.
echo CHG     Lets the user pick whether the red button on the top right of the Desktop goes to JaguarDOS or JaguarDOS Boot.
echo DTC     Re-syncs JaguarOS's time and date to the correct settings.
echo USR     Allows the user to enter a new username.
goto CLIUS



:jagusernamechangecmd
echo. >%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
set /p usarcmd="{Input your desired username:}"
echo %usarcmd%>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
echo.
echo Success :)
echo.
set /p usar=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
echo.
echo Your username, %usar%, is saved at MainStorage(A)\OtherUserData\UserPass\username.txt :)
echo.
goto CLIUS



:daterchangecmd
rem Function to update date and time variables
rem Get the current date
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i

rem Get the current time
set mytime=!time!

rem Parse the time
for /F "tokens=1-3 delims=:" %%a in ("!mytime!") do (
    set hour=%%a
    set minute=%%b
    set second=%%c
)

rem Determine AM or PM
if !hour! lss 12 (
    set ampm=AM
) else (
    set ampm=PM
)

rem Convert hour to 12-hour format
if !hour! gtr 12 (
    set /A hour-=12
) else if !hour!==00 (
    set hour=12
)
echo System Date and Time Re-synced.
goto CLIUS




:jaguarchangercmd
CHOICE /C 123 /N /M "Would you like to exit to JaguarDOS Boot when the red .X. is clicked on the top right of the desktop? Press 1 for No, 2 for Yes, and 3 to return."
 if errorlevel 3 goto CLIUS
 if errorlevel 2 goto settingsfordosyescmd
 if errorlevel 1 goto settingsfordosnocmd

:settingsfordosyescmd
echo 2 >%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt
goto CLIUS

:settingsfordosnocmd
echo 1 >%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt
goto CLIUS



:terminalmarket
color 0a
echo.
echo.
echo --*_-JaguarOS Online Store-_*--
echo.
echo.
echo  What games or software what would you like to download? (This is currently all that's available on the store.)
set /p marketed=@%usar%jaguarcmd} Type "1" for Oregon Trail, type "2" for Poketrion Force, and type "@" to go back the Terminal.

if %marketed%==1 goto puttinggamecmd
if %marketed%==2 goto puttinggamecmd2
if %marketed%==@ goto CLIUS


:puttinggamecmd
cls
set "URL=https://github.com/jasonjaguarinc/JaguarGAMES/releases/download/OregonTrail/APP.bat"
set "TARGET_DIR=%SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\"

curl -L -s -o "%TARGET_DIR%APP.bat" "%URL%"
rem PrintCenter Downloading the Oregon Trail: Batch Version... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\APP.bat goto gamesoftincorrectcmd
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\APP.bat goto gamesoftcorrectcmd


:gamesoftcorrectcmd
rem ClearColor
rem Locate 30 1
rem PrintCenter Your software has downloaded successfully off the internet! 23 0 9
pause
rem PrintCenter It's saved in your App(B) Drive, able to be run from the JaguarOS PathFinder. 26 0 9
pause
goto terminalmarket


:gamesoftincorrectcmd
cls
rem PrintCenter Sorry, unable to download software at the moment. :( You will now return to the GUI. 15 0 9
pause
goto terminalmarket



:puttinggamecmd2
cls
set "URL=https://github.com/jasonjaguarinc/JaguarGAMES/releases/download/PoketrionForce/APP.bat"
set "TARGET_DIR=%SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\"

curl -L -s -o "%TARGET_DIR%APP.bat" "%URL%"
rem PrintCenter Downloading Poketrion Force: Demo... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\APP.bat goto gamesoftincorrectcmd2
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\APP.bat goto gamesoftcorrectcmd2


:gamesoftcorrectcmd2
rem ClearColor
rem Locate 30 1
rem PrintCenter Your software has downloaded successfully off the internet! 23 0 9
pause
rem PrintCenter It's saved in your App(B) Drive, able to be run from the JaguarOS PathFinder. 26 0 9
pause
goto terminalmarket


:gamesoftincorrectcmd2
cls
rem PrintCenter Sorry, unable to download software at the moment. :( You will now return to the GUI. 15 0 9
pause
goto terminalmarket




:yesupdatecmd
set /p dataed=@%usar%jaguarcmd} Are you sure you want to download the latest version of JaguarOS? Y/N

if %dataed%==Y goto yesupdate
if %dataed%==y goto yesupdate
if %dataed%==N goto CLIUS
if %dataed%==n goto CLIUS


:nukefyle
set /p backwup=@%usar%jaguarcmd} Are you sure you want to nuke your entire FileSystem and revert to the initial install? Y/N

if %backwup%==Y goto BIGSNUGGIE
if %backwup%==y goto BIGSNUGGIE
if %backwup%==N goto CLIUS
if %backwup%==n goto CLIUS



:BIGSNUGGIE
RMDIR %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B) /s /q
RMDIR %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) /s /q
RMDIR %SYSTEMDRIVE%\JasonJaguarFileSystem /s /q
RMDIR %SYSTEMDRIVE%\JaguarSetup /s /q
cls
rem PrintCenter Destroying your install of the Jason Jaguar FileSystem... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
rem PrintCenter Jason Jaguar FileSystem destroyed! 23 0 9
pause
rem PrintCenter You will now revert to a pre-install state and your files are now gone. 26 0 9
pause
goto undersnowren

:undersnowren
rem PaintScreen 15
rem ShadeBoxAt 3 1 27 120 2
rem ShadeBoxAt 1 33 2 87 1
wait 2500
rem PaintScreen 15
goto bigwaiter7

:bigwaiter7
cls
ping Localhost -n 2 >nul
goto prebiosstart





:BOOTBACKKUPCMD
set /p backwup=@%usar%jaguarcmd} Are you sure you want to boot from a FileSystem Backup? Y/N

if %backwup%==Y goto BOOTBACKALUP
if %backwup%==y goto BOOTBACKALUP
if %backwup%==N goto CLIUS
if %backwup%==n goto CLIUS


:BOOTBACKALUP
xcopy %SYSTEMDRIVE%\JasonJaguarFileSystemBackup %SYSTEMDRIVE%\JasonJaguarFileSystem /E /H /C /I /Q
cls
rem PrintCenter Re-integrating FileSystem and Backup... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
rem PrintCenter Jason Jaguar FileSystem Backup is now bootable! 23 0 9
pause
rem PrintCenter You will boot into the Backup that exists on your %SYSTEMDRIVE% Drive. 26 0 9
pause
goto CLIUS






:BACKKUPCMD
set /p backwup=@%usar%jaguarcmd} Are you sure you want to create a backup of your FileSystem? Y/N

if %backwup%==Y goto BACKALUP
if %backwup%==y goto BACKALUP
if %backwup%==N goto CLIUS
if %backwup%==n goto CLIUS


:BACKALUP
xcopy %SYSTEMDRIVE%\JasonJaguarFileSystem %SYSTEMDRIVE%\JasonJaguarFileSystemBackup /E /H /C /I 
cls
rem PrintCenter Backing up the Jason Jaguar FileSystem... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
rem PrintCenter Jason Jaguar FileSystem backed up! 23 0 9
pause
rem PrintCenter Your FileSystem is now backed up in the %SYSTEMDRIVE% Drive in case you lose your files. 26 0 9
pause
goto CLIUS



:revertdos
set /p REVVERT=@%usar%jaguarcmd} This will end your OS 2.5 session. Y/N?

if %REVVERT%==Y goto WORSEYDOS
if %REVVERT%==y goto WORSEYDOS
if %REVVERT%==N goto CLIUS
if %REVVERT%==n goto CLIUS


:WORSEYDOS
cls
ping Localhost -n 2 >nul
goto JBOOTDOSAFTER



:chkhelp
echo ERR. Type "help" or "?" for more info.
goto CLIUS


:clialc
cls
color 0a
echo.
echo.
echo.
echo ________JaguarDOS Terminal Calculator________
echo.
echo Press @ to return to the Terminal.
echo.
set /p expression= Enter expression to calculate:
if %expression%==@ goto CL

goto reicalc

:reicalc
set /a ans=%expression%
echo.
echo = %ans%
echo.
pause
goto clialc


:infotus
cls
echo.====================================
echo   JaguarOS 2.5 Desktop Environment
echo.====================================
ECHO Machine:
wmic computersystem get manufacturer,model,name
ECHO CPU:
wmic cpu get name,numberofcores
ECHO BIOS:
wmic bios get manufacturer,serialnumber,smbiosbiosversion
ECHO RAM sticks:
wmic memorychip where "devicelocator != 'SYSTEM ROM'" get capacity,devicelocator,manufacturer,partnumber
ECHO OS: JaguarOS 2.5 Desktop Environment/JaguarDOS 2.5
ECHO Physical drives:
wmic diskdrive get index,firmwarerevision,model,size
ECHO Logical drives:
wmic logicaldisk get description,deviceid,freespace,size,volumename
ECHO Physical network interface(s):
wmic NIC where "physicaladapter=TRUE" get MACAddress,ProductName | findstr /v /%SYSTEMDRIVE%"Virtual"
ECHO Currently active network interfaces:
wmic nicconfig where ipenabled="TRUE" get description,macaddress,ipaddress,dhcpleaseobtained
echo.=======================================
echo     @Copyright Jason Jaguar.inc, 2025
echo.=======================================
echo.
goto CLIUS

PAUSE
goto CLIUS


:appruncmd
color 0a
CHOICE /C 12 /N /M "Would you like to run software from the App(B) drive? [Press 1 for yes, 2 to go back to the Command Terminal]"


IF %ERRORLEVEL% EQU 2 GOTO CLIUSUS
IF %ERRORLEVEL% EQU 1 GOTO soffy



:jagcode
cls
color 0a
set "color=%_color_choice%"
set "_file=0"
set "output_file=%SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\app.bat"
goto go_back1
:go_back1
if not exist "%output_file%" (
  echo. > "%output_file%"
)

cls
echo Welcome to the JaguarDOS (tm) Inc. Code Builder :)
echo Write your Jason Jaguar-compatible code here, and it will be saved in the Jaguar FileSystem's App(B:) Drive to be later installed and run.
echo (Make sure not to make any typos, there is no delete function implemented which is very annoying)
echo.
echo @. Save and exit the JaguarDOS CODE BUILDER
echo *. Change text color
echo #. Clear CODE BUILDER Writing Cache
echo:
echo       CODE BUILDER 1.3:
echo =========================================
type "%output_file%"
echo =========================================

set /p "_txt="
if "%_txt%" == "@" (
  goto :go_out1
) else if "%_txt%" == "*" (
  goto :go_color1
) else if "%_txt%" == "#" (
  echo. > "%output_file%"
) else (
  echo % >> "%output_file%"
  for /f "delims=" %%g in ("%_txt%") do echo %%~g >> "%output_file%"
)

goto :go_back1

:go_out1
echo Saved to "%output_file%".
pause
goto CLI


:go_color1
cls & title ******* CHANGE TEXT COLOR *******

echo Select a text color (1-9):
echo 1 - Blue
echo 2 - Green
echo 3 - Cyan
echo 4 - Red
echo 5 - Magenta
echo 6 - Brown
echo 7 - Gray
echo 8 - Light Gray
echo 9 - Light Blue

set /p "_color_choice="
if "%_color_choice%" LEQ 9 (
  color %_color_choice%
  echo Text color changed to %_color_choice%.
  pause
) else (
  echo Invalid color choice.
  pause
)

goto go_back1




:abt
echo ======================================
echo OS: JaguarOS 2.5 Desktop Environment
echo.======================================
echo.
echo.=========================================
echo Jason Jaguar FileSystem (tm) Version: 1.8
echo.=========================================
goto CLIUS


:directory
set /p "fyle=What would you like to name the directory folder? "
if "%fyle%"=="" (
    echo Please enter a name and try again ...
    goto CLIUS
)

echo Creating folder ...
mkdir "%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\%fyle%" || (
    echo Directory not found ...
    goto CLIUS
)
echo Directory created successfuly! 
goto CLIUS


:remlove
set /p bhas=@%usar%jaguarcmd}What's the name of the folder you want to delete?:
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\%bhas% goto presiadface
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\%bhas% goto delete_folder


:presiadface
if not defined %bhas% goto fullhyuks
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\%bhas% goto siadface


:delete_folder
rmdir %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\%bhas%
goto cyhalm

:cyhalm
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\%bhas% goto barffarb
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\%bhas% goto siadface

:barffarb
echo Folder %bhas% deleted successfully.
goto CLIUS

:siadface
echo Directory unable to remove.
goto CLIUS


:fullhyuks
echo Please enter a real name and try again.
goto CLIUS





:ext
exit





:FileSystem
set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem"
cd /d "%_folderPath%"
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) set folde1=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) set folde1=0
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B) set folde2=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B) set folde2=0

if %folde1% leq 0 if %folde2% leq 0 set _folderCount=0
if %folde1% geq 1 if %folde2% leq 0 set _folderCount=1
if %folde1% leq 0 if %folde2% geq 1 set _folderCount=1
if %folde1% geq 1 if %folde2% geq 1 set _folderCount=2

set taskID="Path"
set flagID=FileSystem
set specID="PathFinderSpec"
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.8 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JasonJaguarFileSystem 7 34 15 1
rem PrintColorAt ( 11 23 0 6
rem PrintColorAt ) 11 32 0 6
rem PrintColorAt / 10 23 0 6
rem PrintColorAt - 10 24 0 6
rem PrintColorAt - 10 25 0 6
rem PrintColorAt - 10 26 0 6
rem PrintColorAt - 10 27 0 6
rem PrintColorAt - 10 28 0 6
rem PrintColorAt - 10 29 0 6
rem PrintColorAt - 10 30 0 6
rem PrintColorAt - 10 31 0 6
rem PrintColorAt \ 10 32 0 6
rem PrintColorAt \ 12 23 0 6
rem PrintColorAt - 12 24 0 6
rem PrintColorAt - 12 25 0 6
rem PrintColorAt - 12 26 0 6
rem PrintColorAt - 12 27 0 6
rem PrintColorAt - 12 28 0 6
rem PrintColorAt - 12 29 0 6
rem PrintColorAt - 12 30 0 6
rem PrintColorAt - 12 31 0 6
rem PrintColorAt / 12 32 0 6
rem PrintColorAt A: Drive 11 24 0 14

rem PrintColorAt ( 11 41 0 6
rem PrintColorAt ) 11 50 0 6
rem PrintColorAt / 10 41 0 6
rem PrintColorAt - 10 42 0 6
rem PrintColorAt - 10 43 0 6
rem PrintColorAt - 10 44 0 6
rem PrintColorAt - 10 45 0 6
rem PrintColorAt - 10 46 0 6
rem PrintColorAt - 10 47 0 6
rem PrintColorAt - 10 48 0 6
rem PrintColorAt - 10 49 0 6
rem PrintColorAt \ 10 50 0 6
rem PrintColorAt \ 12 41 0 6
rem PrintColorAt - 12 42 0 6
rem PrintColorAt - 12 43 0 6
rem PrintColorAt - 12 44 0 6
rem PrintColorAt - 12 45 0 6
rem PrintColorAt - 12 46 0 6
rem PrintColorAt - 12 47 0 6
rem PrintColorAt - 12 48 0 6
rem PrintColorAt - 12 49 0 6
rem PrintColorAt / 12 50 0 6
rem PrintColorAt B: Drive 11 42 0 14
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 0) 14 21 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %specID% 1 41 0 9
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 54,6,56,6 41,10,50,12 23,10,31,12 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 34,7,54,7 get

if %result%==1 goto resizefile1
if %result%==2 goto smally1
if %result%==3 goto AYDRIVE
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto multifinder
if %result%==7 goto pathspec
if %result%==8 goto FileSystem
if %result%==0 goto CLI




:pathspec
rem Locate 25 1
rem ShadeBoxAt 2 42 4 16 4
rem PrintColorAt { 2 41 15 1
rem PrintColorAt { 3 41 15 1
rem PrintColorAt { 4 41 15 1
rem PrintColorAt { 5 41 15 1
rem PrintColorAt - 6 41 15 1
rem PrintColorAt - 6 42 15 1
rem PrintColorAt - 6 43 15 1
rem PrintColorAt - 6 44 15 1
rem PrintColorAt - 6 45 15 1
rem PrintColorAt - 6 46 15 1
rem PrintColorAt - 6 47 15 1
rem PrintColorAt - 6 48 15 1
rem PrintColorAt - 6 49 15 1
rem PrintColorAt - 6 50 15 1
rem PrintColorAt - 6 51 15 1
rem PrintColorAt - 6 52 15 1
rem PrintColorAt - 6 53 15 1
rem PrintColorAt - 6 54 15 1
rem PrintColorAt - 6 55 15 1
rem PrintColorAt - 6 56 15 1
rem PrintColorAt - 6 57 15 1
rem PrintColorAt - 6 58 15 1
rem PrintColorAt } 2 58 15 1
rem PrintColorAt } 3 58 15 1
rem PrintColorAt } 4 58 15 1
rem PrintColorAt } 5 58 15 1
rem PrintColorAt } 6 58 15 1
rem PrintColorAt - 6 58 15 1
rem ShadeBoxAt 7 42 1 17 1
rem ShadeBoxAt 3 59 5 1 1
rem PrintColorAt About 3 44 0 3
rem PrintColorAt Drives 5 44 0 11
rem MouseCMD 2,1,5,1 41,1,54,1 44,3,51,3 44,5,51,5 63,1,66,1 17,6,19,6 get

if %result%==1 goto snui
if %result%==2 goto FileSystem
if %result%==3 goto pathspecabout
if %result%==4 goto pathspecdrive
if %result%==5 goto multifinder
if %result%==6 goto snui
if %result%==0 goto CLI




:pathspecabout
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS -- FileSystem Version 1.8{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JaguarOS PathFinder, Version 1.8 8 19 15 1
rem PrintColorAt The folder and Desktop manager 9 19 0 9
rem PrintColorAt {@@} 11 34 0 3
rem PrintColorAt (C) Jason Jaguar Inc. 2025 13 23 0 11
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 41,1,54,1 63,1,66,1 17,6,19,6 get
if %result%==1 goto snui
if %result%==2 goto pathspec
if %result%==3 goto multifinder
if %result%==4 goto snui
if %result%==0 goto CLI




:pathspecdrive
rem Locate 25 1
rem ShadeBoxAt 2 42 4 16 4
rem PrintColorAt { 2 41 15 1
rem PrintColorAt { 3 41 15 1
rem PrintColorAt { 4 41 15 1
rem PrintColorAt { 5 41 15 1
rem PrintColorAt - 6 41 15 1
rem PrintColorAt - 6 42 15 1
rem PrintColorAt - 6 43 15 1
rem PrintColorAt - 6 44 15 1
rem PrintColorAt - 6 45 15 1
rem PrintColorAt - 6 46 15 1
rem PrintColorAt - 6 47 15 1
rem PrintColorAt - 6 48 15 1
rem PrintColorAt - 6 49 15 1
rem PrintColorAt - 6 50 15 1
rem PrintColorAt - 6 51 15 1
rem PrintColorAt - 6 52 15 1
rem PrintColorAt - 6 53 15 1
rem PrintColorAt - 6 54 15 1
rem PrintColorAt - 6 55 15 1
rem PrintColorAt - 6 56 15 1
rem PrintColorAt - 6 57 15 1
rem PrintColorAt - 6 58 15 1
rem PrintColorAt } 2 58 15 1
rem PrintColorAt } 3 58 15 1
rem PrintColorAt } 4 58 15 1
rem PrintColorAt } 5 58 15 1
rem PrintColorAt } 6 58 15 1
rem PrintColorAt - 6 58 15 1
rem ShadeBoxAt 7 42 1 17 1
rem ShadeBoxAt 3 59 5 1 1
rem PrintColorAt A: Drive 3 44 0 3
rem PrintColorAt B: Drive 5 44 0 11
rem MouseCMD 2,1,5,1 41,1,54,1 44,3,51,3 44,5,51,5 63,1,66,1 17,6,19,6 get

if %result%==1 goto snui
if %result%==2 goto FileSystem
if %result%==3 goto AYDRIVE
if %result%==4 goto smally1
if %result%==5 goto multifinder
if %result%==6 goto snui
if %result%==0 goto CLI





:resizefile1
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) set folde1=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) set folde1=0
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B) set folde2=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B) set folde2=0

if %folde1% leq 0 if %folde2% leq 0 set _folderCount=0
if %folde1% geq 1 if %folde2% leq 0 set _folderCount=1
if %folde1% leq 0 if %folde2% geq 1 set _folderCount=1
if %folde1% geq 1 if %folde2% geq 1 set _folderCount=2

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem"
cd /d "%_folderPath%"
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.8 PathFinder 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt { 16 17 0 8
rem PrintColorAt { 17 17 0 8
rem PrintColorAt { 18 17 0 8
rem PrintColorAt { 19 17 0 8
rem PrintColorAt { 20 17 0 8
rem PrintColorAt { 21 17 0 8
rem PrintColorAt { 22 17 0 8
rem PrintColorAt { 23 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt - 24 18 0 8
rem PrintColorAt - 24 19 0 8
rem PrintColorAt - 24 20 0 8
rem PrintColorAt - 24 21 0 8
rem PrintColorAt - 24 22 0 8
rem PrintColorAt - 24 23 0 8
rem PrintColorAt - 24 24 0 8
rem PrintColorAt - 24 25 0 8
rem PrintColorAt - 24 26 0 8
rem PrintColorAt - 24 27 0 8
rem PrintColorAt - 24 28 0 8
rem PrintColorAt - 24 29 0 8
rem PrintColorAt - 24 30 0 8
rem PrintColorAt - 24 31 0 8
rem PrintColorAt - 24 32 0 8
rem PrintColorAt - 24 33 0 8
rem PrintColorAt - 24 34 0 8
rem PrintColorAt - 24 35 0 8
rem PrintColorAt - 24 36 0 8
rem PrintColorAt - 24 37 0 8
rem PrintColorAt - 24 38 0 8
rem PrintColorAt - 24 39 0 8
rem PrintColorAt - 24 40 0 8
rem PrintColorAt - 24 41 0 8
rem PrintColorAt - 24 42 0 8
rem PrintColorAt - 24 43 0 8
rem PrintColorAt - 24 44 0 8
rem PrintColorAt - 24 45 0 8
rem PrintColorAt - 24 46 0 8
rem PrintColorAt - 24 47 0 8
rem PrintColorAt - 24 48 0 8
rem PrintColorAt - 24 49 0 8
rem PrintColorAt - 24 50 0 8
rem PrintColorAt - 24 51 0 8
rem PrintColorAt - 24 52 0 8
rem PrintColorAt - 24 53 0 8
rem PrintColorAt - 24 54 0 8
rem PrintColorAt - 24 55 0 8
rem PrintColorAt - 24 56 0 8
rem PrintColorAt - 24 57 0 8
rem PrintColorAt - 24 58 0 8
rem PrintColorAt - 24 59 0 8
rem PrintColorAt - 24 60 0 8
rem PrintColorAt - 24 61 0 8
rem PrintColorAt - 24 62 0 8
rem PrintColorAt - 24 63 0 8
rem PrintColorAt - 24 64 0 8
rem PrintColorAt - 24 65 0 8
rem PrintColorAt - 24 66 0 8
rem PrintColorAt - 24 67 0 8
rem PrintColorAt - 24 68 0 8
rem PrintColorAt - 24 69 0 8
rem PrintColorAt - 24 70 0 8
rem PrintColorAt - 24 71 0 8
rem PrintColorAt - 24 72 0 8
rem PrintColorAt - 24 73 0 8
rem PrintColorAt - 24 74 0 8
rem PrintColorAt } 7 74 0 8
rem PrintColorAt } 8 74 0 8
rem PrintColorAt } 9 74 0 8
rem PrintColorAt } 10 74 0 8
rem PrintColorAt } 11 74 0 8
rem PrintColorAt } 12 74 0 8
rem PrintColorAt } 13 74 0 8
rem PrintColorAt } 14 74 0 8
rem PrintColorAt } 15 74 0 8
rem PrintColorAt } 16 74 0 8
rem PrintColorAt } 17 74 0 8
rem PrintColorAt } 18 74 0 8
rem PrintColorAt } 19 74 0 8
rem PrintColorAt } 20 74 0 8
rem PrintColorAt } 21 74 0 8
rem PrintColorAt } 22 74 0 8
rem PrintColorAt } 23 74 0 8
rem PrintColorAt } 24 74 0 8
rem PrintColorAt JasonJaguarFileSystem 7 39 15 1
rem PrintColorAt ( 11 23 0 6
rem PrintColorAt ) 11 32 0 6
rem PrintColorAt / 10 23 0 6
rem PrintColorAt - 10 24 0 6
rem PrintColorAt - 10 25 0 6
rem PrintColorAt - 10 26 0 6
rem PrintColorAt - 10 27 0 6
rem PrintColorAt - 10 28 0 6
rem PrintColorAt - 10 29 0 6
rem PrintColorAt - 10 30 0 6
rem PrintColorAt - 10 31 0 6
rem PrintColorAt \ 10 32 0 6
rem PrintColorAt \ 12 23 0 6
rem PrintColorAt - 12 24 0 6
rem PrintColorAt - 12 25 0 6
rem PrintColorAt - 12 26 0 6
rem PrintColorAt - 12 27 0 6
rem PrintColorAt - 12 28 0 6
rem PrintColorAt - 12 29 0 6
rem PrintColorAt - 12 30 0 6
rem PrintColorAt - 12 31 0 6
rem PrintColorAt / 12 32 0 6
rem PrintColorAt A: Drive 11 24 0 14

rem PrintColorAt ( 11 41 0 6
rem PrintColorAt ) 11 50 0 6
rem PrintColorAt / 10 41 0 6
rem PrintColorAt - 10 42 0 6
rem PrintColorAt - 10 43 0 6
rem PrintColorAt - 10 44 0 6
rem PrintColorAt - 10 45 0 6
rem PrintColorAt - 10 46 0 6
rem PrintColorAt - 10 47 0 6
rem PrintColorAt - 10 48 0 6
rem PrintColorAt - 10 49 0 6
rem PrintColorAt \ 10 50 0 6
rem PrintColorAt \ 12 41 0 6
rem PrintColorAt - 12 42 0 6
rem PrintColorAt - 12 43 0 6
rem PrintColorAt - 12 44 0 6
rem PrintColorAt - 12 45 0 6
rem PrintColorAt - 12 46 0 6
rem PrintColorAt - 12 47 0 6
rem PrintColorAt - 12 48 0 6
rem PrintColorAt - 12 49 0 6
rem PrintColorAt / 12 50 0 6
rem PrintColorAt B: Drive 11 42 0 14
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 0) 23 33 0 3
rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem MouseCMD 72,6,74,6 23,10,32,12 41,10,50,12 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 39,7,59,7 get

if %result%==1 goto FileSystem
if %result%==2 goto AYDRIVEBIG
if %result%==3 goto APPDRIVEBIG
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto multifinder
if %result%==7 goto pathspec
if %result%==8 goto resizefile1
if %result%==0 goto CLI



:APPDRIVEBIG
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B) goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B) goto APPDRIVELBEEG

:APPDRIVELBEEG
set _folderCount=0

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)"
cd /d "%_folderPath%"
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.8 PathFinder 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt { 16 17 0 8
rem PrintColorAt { 17 17 0 8
rem PrintColorAt { 18 17 0 8
rem PrintColorAt { 19 17 0 8
rem PrintColorAt { 20 17 0 8
rem PrintColorAt { 21 17 0 8
rem PrintColorAt { 22 17 0 8
rem PrintColorAt { 23 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt - 24 18 0 8
rem PrintColorAt - 24 19 0 8
rem PrintColorAt - 24 20 0 8
rem PrintColorAt - 24 21 0 8
rem PrintColorAt - 24 22 0 8
rem PrintColorAt - 24 23 0 8
rem PrintColorAt - 24 24 0 8
rem PrintColorAt - 24 25 0 8
rem PrintColorAt - 24 26 0 8
rem PrintColorAt - 24 27 0 8
rem PrintColorAt - 24 28 0 8
rem PrintColorAt - 24 29 0 8
rem PrintColorAt - 24 30 0 8
rem PrintColorAt - 24 31 0 8
rem PrintColorAt - 24 32 0 8
rem PrintColorAt - 24 33 0 8
rem PrintColorAt - 24 34 0 8
rem PrintColorAt - 24 35 0 8
rem PrintColorAt - 24 36 0 8
rem PrintColorAt - 24 37 0 8
rem PrintColorAt - 24 38 0 8
rem PrintColorAt - 24 39 0 8
rem PrintColorAt - 24 40 0 8
rem PrintColorAt - 24 41 0 8
rem PrintColorAt - 24 42 0 8
rem PrintColorAt - 24 43 0 8
rem PrintColorAt - 24 44 0 8
rem PrintColorAt - 24 45 0 8
rem PrintColorAt - 24 46 0 8
rem PrintColorAt - 24 47 0 8
rem PrintColorAt - 24 48 0 8
rem PrintColorAt - 24 49 0 8
rem PrintColorAt - 24 50 0 8
rem PrintColorAt - 24 51 0 8
rem PrintColorAt - 24 52 0 8
rem PrintColorAt - 24 53 0 8
rem PrintColorAt - 24 54 0 8
rem PrintColorAt - 24 55 0 8
rem PrintColorAt - 24 56 0 8
rem PrintColorAt - 24 57 0 8
rem PrintColorAt - 24 58 0 8
rem PrintColorAt - 24 59 0 8
rem PrintColorAt - 24 60 0 8
rem PrintColorAt - 24 61 0 8
rem PrintColorAt - 24 62 0 8
rem PrintColorAt - 24 63 0 8
rem PrintColorAt - 24 64 0 8
rem PrintColorAt - 24 65 0 8
rem PrintColorAt - 24 66 0 8
rem PrintColorAt - 24 67 0 8
rem PrintColorAt - 24 68 0 8
rem PrintColorAt - 24 69 0 8
rem PrintColorAt - 24 70 0 8
rem PrintColorAt - 24 71 0 8
rem PrintColorAt - 24 72 0 8
rem PrintColorAt - 24 73 0 8
rem PrintColorAt - 24 74 0 8
rem PrintColorAt } 7 74 0 8
rem PrintColorAt } 8 74 0 8
rem PrintColorAt } 9 74 0 8
rem PrintColorAt } 10 74 0 8
rem PrintColorAt } 11 74 0 8
rem PrintColorAt } 12 74 0 8
rem PrintColorAt } 13 74 0 8
rem PrintColorAt } 14 74 0 8
rem PrintColorAt } 15 74 0 8
rem PrintColorAt } 16 74 0 8
rem PrintColorAt } 17 74 0 8
rem PrintColorAt } 18 74 0 8
rem PrintColorAt } 19 74 0 8
rem PrintColorAt } 20 74 0 8
rem PrintColorAt } 21 74 0 8
rem PrintColorAt } 22 74 0 8
rem PrintColorAt } 23 74 0 8
rem PrintColorAt } 24 74 0 8
rem PrintColorAt JasonJaguarFileSystem/B: Drive 7 39 15 1
rem PrintColorAt ( 11 23 0 9
rem PrintColorAt ) 11 31 0 9
rem PrintColorAt / 10 23 0 9
rem PrintColorAt - 10 24 0 9
rem PrintColorAt - 10 25 0 9
rem PrintColorAt - 10 26 0 9
rem PrintColorAt - 10 27 0 9
rem PrintColorAt - 10 28 0 9
rem PrintColorAt - 10 29 0 9
rem PrintColorAt - 10 30 0 9
rem PrintColorAt \ 10 31 0 9
rem PrintColorAt \ 12 23 0 9
rem PrintColorAt - 12 24 0 9
rem PrintColorAt - 12 25 0 9
rem PrintColorAt - 12 26 0 9
rem PrintColorAt - 12 27 0 9
rem PrintColorAt - 12 28 0 9
rem PrintColorAt - 12 29 0 9
rem PrintColorAt - 12 30 0 9
rem PrintColorAt / 12 31 0 9
rem PrintColorAt APP.BAT 11 24 0 3
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 1) 23 33 0 3
rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem MouseCMD 19,7,21,7 72,6,74,6 23,10,31,12 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 39,7,59,7 61,7,68,7 get

if %result%==1 goto resizefile1
if %result%==2 goto smally1
if %result%==3 goto apprun
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto multifinder
if %result%==7 goto pathspec
if %result%==8 goto resizefile1
if %result%==9 goto APPDRIVEBIG
if %result%==0 goto CLI


:smally1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B) goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B) goto APPDRIVELSMALL


:foldernotfound
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.8 PathFinder 6 20 0 9
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt { 16 17 0 8
rem PrintColorAt { 17 17 0 8
rem PrintColorAt { 18 17 0 8
rem PrintColorAt { 19 17 0 8
rem PrintColorAt { 20 17 0 8
rem PrintColorAt { 21 17 0 8
rem PrintColorAt { 22 17 0 8
rem PrintColorAt { 23 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt - 24 18 0 8
rem PrintColorAt - 24 19 0 8
rem PrintColorAt - 24 20 0 8
rem PrintColorAt - 24 21 0 8
rem PrintColorAt - 24 22 0 8
rem PrintColorAt - 24 23 0 8
rem PrintColorAt - 24 24 0 8
rem PrintColorAt - 24 25 0 8
rem PrintColorAt - 24 26 0 8
rem PrintColorAt - 24 27 0 8
rem PrintColorAt - 24 28 0 8
rem PrintColorAt - 24 29 0 8
rem PrintColorAt - 24 30 0 8
rem PrintColorAt - 24 31 0 8
rem PrintColorAt - 24 32 0 8
rem PrintColorAt - 24 33 0 8
rem PrintColorAt - 24 34 0 8
rem PrintColorAt - 24 35 0 8
rem PrintColorAt - 24 36 0 8
rem PrintColorAt - 24 37 0 8
rem PrintColorAt - 24 38 0 8
rem PrintColorAt - 24 39 0 8
rem PrintColorAt - 24 40 0 8
rem PrintColorAt - 24 41 0 8
rem PrintColorAt - 24 42 0 8
rem PrintColorAt - 24 43 0 8
rem PrintColorAt - 24 44 0 8
rem PrintColorAt - 24 45 0 8
rem PrintColorAt - 24 46 0 8
rem PrintColorAt - 24 47 0 8
rem PrintColorAt - 24 48 0 8
rem PrintColorAt - 24 49 0 8
rem PrintColorAt - 24 50 0 8
rem PrintColorAt - 24 51 0 8
rem PrintColorAt - 24 52 0 8
rem PrintColorAt - 24 53 0 8
rem PrintColorAt - 24 54 0 8
rem PrintColorAt - 24 55 0 8
rem PrintColorAt - 24 56 0 8
rem PrintColorAt - 24 57 0 8
rem PrintColorAt - 24 58 0 8
rem PrintColorAt - 24 59 0 8
rem PrintColorAt - 24 60 0 8
rem PrintColorAt - 24 61 0 8
rem PrintColorAt - 24 62 0 8
rem PrintColorAt - 24 63 0 8
rem PrintColorAt - 24 64 0 8
rem PrintColorAt - 24 65 0 8
rem PrintColorAt - 24 66 0 8
rem PrintColorAt - 24 67 0 8
rem PrintColorAt - 24 68 0 8
rem PrintColorAt - 24 69 0 8
rem PrintColorAt - 24 70 0 8
rem PrintColorAt - 24 71 0 8
rem PrintColorAt - 24 72 0 8
rem PrintColorAt - 24 73 0 8
rem PrintColorAt - 24 74 0 8
rem PrintColorAt } 7 74 0 8
rem PrintColorAt } 8 74 0 8
rem PrintColorAt } 9 74 0 8
rem PrintColorAt } 10 74 0 8
rem PrintColorAt } 11 74 0 8
rem PrintColorAt } 12 74 0 8
rem PrintColorAt } 13 74 0 8
rem PrintColorAt } 14 74 0 8
rem PrintColorAt } 15 74 0 8
rem PrintColorAt } 16 74 0 8
rem PrintColorAt } 17 74 0 8
rem PrintColorAt } 18 74 0 8
rem PrintColorAt } 19 74 0 8
rem PrintColorAt } 20 74 0 8
rem PrintColorAt } 21 74 0 8
rem PrintColorAt } 22 74 0 8
rem PrintColorAt } 23 74 0 8
rem PrintColorAt } 24 74 0 8

rem rem dividing line between windowing code and the stuff above
rem PrintColorAt ( 13 19 0 9
rem PrintColorAt ( 14 19 0 9
rem PrintColorAt / 12 19 0 9
rem PrintColorAt - 12 20 0 9
rem PrintColorAt - 12 21 0 9
rem PrintColorAt - 12 22 0 9
rem PrintColorAt - 12 23 0 9
rem PrintColorAt - 12 24 0 9
rem PrintColorAt - 12 25 0 9
rem PrintColorAt - 12 26 0 9
rem PrintColorAt - 12 27 0 9
rem PrintColorAt - 12 28 0 9
rem PrintColorAt - 12 29 0 9
rem PrintColorAt - 12 30 0 9
rem PrintColorAt - 12 31 0 9
rem PrintColorAt \ 12 32 0 9
rem PrintColorAt \ 15 19 0 9
rem PrintColorAt - 15 20 0 9
rem PrintColorAt - 15 21 0 9
rem PrintColorAt - 15 22 0 9
rem PrintColorAt - 15 23 0 9
rem PrintColorAt - 15 24 0 9
rem PrintColorAt - 15 25 0 9
rem PrintColorAt - 15 26 0 9
rem PrintColorAt - 15 27 0 9
rem PrintColorAt - 15 28 0 9
rem PrintColorAt - 15 29 0 9
rem PrintColorAt - 15 30 0 9
rem PrintColorAt - 15 31 0 9
rem PrintColorAt / 15 32 0 9
rem PrintColorAt Sorry, couldn't find or load specified folder :( 11 20 0 3
rem PrintColorAt Press the back button to redirect 13 21 0 11
rem PrintColorAt to the JasonJaguarFileSystem directory. 14 21 0 11
rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 19,7,21,7 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto FileSystem
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones1 20 0 3



:APPDRIVELSMALL

set _folderCount=0

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)"
cd /d "%_folderPath%"
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.8 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JasonJaguarFileSystem 7 34 15 1
rem PrintColorAt /B: Drive 8 34 0 9
rem PrintColorAt ( 11 23 0 9
rem PrintColorAt ) 11 31 0 9
rem PrintColorAt / 10 23 0 9
rem PrintColorAt - 10 24 0 9
rem PrintColorAt - 10 25 0 9
rem PrintColorAt - 10 26 0 9
rem PrintColorAt - 10 27 0 9
rem PrintColorAt - 10 28 0 9
rem PrintColorAt - 10 29 0 9
rem PrintColorAt - 10 30 0 9
rem PrintColorAt \ 10 31 0 9
rem PrintColorAt \ 12 23 0 9
rem PrintColorAt - 12 24 0 9
rem PrintColorAt - 12 25 0 9
rem PrintColorAt - 12 26 0 9
rem PrintColorAt - 12 27 0 9
rem PrintColorAt - 12 28 0 9
rem PrintColorAt - 12 29 0 9
rem PrintColorAt - 12 30 0 9
rem PrintColorAt / 12 31 0 9
rem PrintColorAt APP.BAT 11 24 0 3
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 1) 14 21 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 19,7,21,7 54,6,56,6 23,10,31,12 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 34,7,54,7 34,8,42,8 get

if %result%==1 goto FileSystem
if %result%==2 goto APPDRIVEBIG
if %result%==3 goto apprun
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto multifinder
if %result%==7 goto pathspec
if %result%==8 goto FileSystem
if %result%==9 goto smally1
if %result%==0 goto CLI




:AYDRIVE
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) goto AYDRIVEL

:AYDRIVEL
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents set folde1=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents set folde1=0
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData set folde2=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData set folde2=0

if %folde1% leq 0 if %folde2% leq 0 set _folderCount=0
if %folde1% geq 1 if %folde2% leq 0 set _folderCount=1
if %folde1% leq 0 if %folde2% geq 1 set _folderCount=1
if %folde1% geq 1 if %folde2% geq 1 set _folderCount=2

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)"
cd /d "%_folderPath%"
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.8 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JasonJaguarFileSystem 7 34 15 1
rem PrintColorAt /A: Drive 8 34 0 9
rem PrintColorAt ( 11 23 0 6
rem PrintColorAt ) 11 33 0 6
rem PrintColorAt / 10 23 0 6
rem PrintColorAt - 10 24 0 6
rem PrintColorAt - 10 25 0 6
rem PrintColorAt - 10 26 0 6
rem PrintColorAt - 10 27 0 6
rem PrintColorAt - 10 28 0 6
rem PrintColorAt - 10 29 0 6
rem PrintColorAt - 10 30 0 6
rem PrintColorAt - 10 31 0 6
rem PrintColorAt - 10 32 0 6
rem PrintColorAt \ 10 33 0 6
rem PrintColorAt \ 12 23 0 6
rem PrintColorAt - 12 24 0 6
rem PrintColorAt - 12 25 0 6
rem PrintColorAt - 12 26 0 6
rem PrintColorAt - 12 27 0 6
rem PrintColorAt - 12 28 0 6
rem PrintColorAt - 12 29 0 6
rem PrintColorAt - 12 30 0 6
rem PrintColorAt - 12 31 0 6
rem PrintColorAt - 12 32 0 6
rem PrintColorAt / 12 33 0 6
rem PrintColorAt Documents 11 24 0 14

rem PrintColorAt ( 11 38 0 6
rem PrintColorAt ) 11 52 0 6
rem PrintColorAt / 10 38 0 6
rem PrintColorAt - 10 39 0 6
rem PrintColorAt - 10 40 0 6
rem PrintColorAt - 10 41 0 6
rem PrintColorAt - 10 42 0 6
rem PrintColorAt - 10 43 0 6
rem PrintColorAt - 10 44 0 6
rem PrintColorAt - 10 45 0 6
rem PrintColorAt - 10 46 0 6
rem PrintColorAt - 10 47 0 6
rem PrintColorAt - 10 48 0 6
rem PrintColorAt - 10 49 0 6
rem PrintColorAt - 10 50 0 6
rem PrintColorAt - 10 51 0 6
rem PrintColorAt \ 10 52 0 6
rem PrintColorAt \ 12 38 0 6
rem PrintColorAt - 12 39 0 6
rem PrintColorAt - 12 40 0 6
rem PrintColorAt - 12 41 0 6
rem PrintColorAt - 12 42 0 6
rem PrintColorAt - 12 43 0 6
rem PrintColorAt - 12 44 0 6
rem PrintColorAt - 12 45 0 6
rem PrintColorAt - 12 46 0 6
rem PrintColorAt - 12 47 0 6
rem PrintColorAt - 12 48 0 6
rem PrintColorAt - 12 49 0 6
rem PrintColorAt - 12 50 0 6
rem PrintColorAt - 12 51 0 6
rem PrintColorAt / 12 52 0 6
rem PrintColorAt OtherUserData 11 39 0 14
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 0) 14 21 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 54,6,56,6 19,7,21,7 23,10,33,12 38,10,52,12 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 34,7,54,7 34,8,42,8 get

if %result%==1 goto AYDRIVEBIG
if %result%==2 goto FileSystem
if %result%==3 goto documuntsmall
if %result%==4 goto otherusersmall
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
if %result%==9 goto FileSystem
if %result%==10 goto AYDRIVE
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones




:AYDRIVEBIG
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) goto AYDRIVELBEEG

:AYDRIVELBEEG

if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents set folde1=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents set folde1=0
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData set folde2=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData set folde2=0

if %folde1% leq 0 if %folde2% leq 0 set _folderCount=0
if %folde1% geq 1 if %folde2% leq 0 set _folderCount=1
if %folde1% leq 0 if %folde2% geq 1 set _folderCount=1
if %folde1% geq 1 if %folde2% geq 1 set _folderCount=2

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)"
cd /d "%_folderPath%"
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.8 PathFinder 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt { 16 17 0 8
rem PrintColorAt { 17 17 0 8
rem PrintColorAt { 18 17 0 8
rem PrintColorAt { 19 17 0 8
rem PrintColorAt { 20 17 0 8
rem PrintColorAt { 21 17 0 8
rem PrintColorAt { 22 17 0 8
rem PrintColorAt { 23 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt - 24 18 0 8
rem PrintColorAt - 24 19 0 8
rem PrintColorAt - 24 20 0 8
rem PrintColorAt - 24 21 0 8
rem PrintColorAt - 24 22 0 8
rem PrintColorAt - 24 23 0 8
rem PrintColorAt - 24 24 0 8
rem PrintColorAt - 24 25 0 8
rem PrintColorAt - 24 26 0 8
rem PrintColorAt - 24 27 0 8
rem PrintColorAt - 24 28 0 8
rem PrintColorAt - 24 29 0 8
rem PrintColorAt - 24 30 0 8
rem PrintColorAt - 24 31 0 8
rem PrintColorAt - 24 32 0 8
rem PrintColorAt - 24 33 0 8
rem PrintColorAt - 24 34 0 8
rem PrintColorAt - 24 35 0 8
rem PrintColorAt - 24 36 0 8
rem PrintColorAt - 24 37 0 8
rem PrintColorAt - 24 38 0 8
rem PrintColorAt - 24 39 0 8
rem PrintColorAt - 24 40 0 8
rem PrintColorAt - 24 41 0 8
rem PrintColorAt - 24 42 0 8
rem PrintColorAt - 24 43 0 8
rem PrintColorAt - 24 44 0 8
rem PrintColorAt - 24 45 0 8
rem PrintColorAt - 24 46 0 8
rem PrintColorAt - 24 47 0 8
rem PrintColorAt - 24 48 0 8
rem PrintColorAt - 24 49 0 8
rem PrintColorAt - 24 50 0 8
rem PrintColorAt - 24 51 0 8
rem PrintColorAt - 24 52 0 8
rem PrintColorAt - 24 53 0 8
rem PrintColorAt - 24 54 0 8
rem PrintColorAt - 24 55 0 8
rem PrintColorAt - 24 56 0 8
rem PrintColorAt - 24 57 0 8
rem PrintColorAt - 24 58 0 8
rem PrintColorAt - 24 59 0 8
rem PrintColorAt - 24 60 0 8
rem PrintColorAt - 24 61 0 8
rem PrintColorAt - 24 62 0 8
rem PrintColorAt - 24 63 0 8
rem PrintColorAt - 24 64 0 8
rem PrintColorAt - 24 65 0 8
rem PrintColorAt - 24 66 0 8
rem PrintColorAt - 24 67 0 8
rem PrintColorAt - 24 68 0 8
rem PrintColorAt - 24 69 0 8
rem PrintColorAt - 24 70 0 8
rem PrintColorAt - 24 71 0 8
rem PrintColorAt - 24 72 0 8
rem PrintColorAt - 24 73 0 8
rem PrintColorAt - 24 74 0 8
rem PrintColorAt } 7 74 0 8
rem PrintColorAt } 8 74 0 8
rem PrintColorAt } 9 74 0 8
rem PrintColorAt } 10 74 0 8
rem PrintColorAt } 11 74 0 8
rem PrintColorAt } 12 74 0 8
rem PrintColorAt } 13 74 0 8
rem PrintColorAt } 14 74 0 8
rem PrintColorAt } 15 74 0 8
rem PrintColorAt } 16 74 0 8
rem PrintColorAt } 17 74 0 8
rem PrintColorAt } 18 74 0 8
rem PrintColorAt } 19 74 0 8
rem PrintColorAt } 20 74 0 8
rem PrintColorAt } 21 74 0 8
rem PrintColorAt } 22 74 0 8
rem PrintColorAt } 23 74 0 8
rem PrintColorAt } 24 74 0 8
rem PrintColorAt JasonJaguarFileSystem 7 34 15 1
rem PrintColorAt /A: Drive 8 34 0 9
rem PrintColorAt ( 11 23 0 6
rem PrintColorAt ) 11 33 0 6
rem PrintColorAt / 10 23 0 6
rem PrintColorAt - 10 24 0 6
rem PrintColorAt - 10 25 0 6
rem PrintColorAt - 10 26 0 6
rem PrintColorAt - 10 27 0 6
rem PrintColorAt - 10 28 0 6
rem PrintColorAt - 10 29 0 6
rem PrintColorAt - 10 30 0 6
rem PrintColorAt - 10 31 0 6
rem PrintColorAt - 10 32 0 6
rem PrintColorAt \ 10 33 0 6
rem PrintColorAt \ 12 23 0 6
rem PrintColorAt - 12 24 0 6
rem PrintColorAt - 12 25 0 6
rem PrintColorAt - 12 26 0 6
rem PrintColorAt - 12 27 0 6
rem PrintColorAt - 12 28 0 6
rem PrintColorAt - 12 29 0 6
rem PrintColorAt - 12 30 0 6
rem PrintColorAt - 12 31 0 6
rem PrintColorAt - 12 32 0 6
rem PrintColorAt / 12 33 0 6
rem PrintColorAt Documents 11 24 0 14

rem PrintColorAt ( 11 38 0 6
rem PrintColorAt ) 11 52 0 6
rem PrintColorAt / 10 38 0 6
rem PrintColorAt - 10 39 0 6
rem PrintColorAt - 10 40 0 6
rem PrintColorAt - 10 41 0 6
rem PrintColorAt - 10 42 0 6
rem PrintColorAt - 10 43 0 6
rem PrintColorAt - 10 44 0 6
rem PrintColorAt - 10 45 0 6
rem PrintColorAt - 10 46 0 6
rem PrintColorAt - 10 47 0 6
rem PrintColorAt - 10 48 0 6
rem PrintColorAt - 10 49 0 6
rem PrintColorAt - 10 50 0 6
rem PrintColorAt - 10 51 0 6
rem PrintColorAt \ 10 52 0 6
rem PrintColorAt \ 12 38 0 6
rem PrintColorAt - 12 39 0 6
rem PrintColorAt - 12 40 0 6
rem PrintColorAt - 12 41 0 6
rem PrintColorAt - 12 42 0 6
rem PrintColorAt - 12 43 0 6
rem PrintColorAt - 12 44 0 6
rem PrintColorAt - 12 45 0 6
rem PrintColorAt - 12 46 0 6
rem PrintColorAt - 12 47 0 6
rem PrintColorAt - 12 48 0 6
rem PrintColorAt - 12 49 0 6
rem PrintColorAt - 12 50 0 6
rem PrintColorAt - 12 51 0 6
rem PrintColorAt / 12 52 0 6
rem PrintColorAt OtherUserData 11 39 0 14
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 0) 23 33 0 3
rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 72,6,74,6 19,7,21,7 23,10,33,12 38,10,52,12 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 34,7,54,7 34,8,42,8 get

if %result%==1 goto AYDRIVE
if %result%==2 goto resizefile1
if %result%==3 goto documuntbeeg
if %result%==4 goto otheruserbeeg
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
if %result%==9 goto resizefile1
if %result%==10 goto AYDRIVEBIG
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones




:documuntbeeg
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents goto DOCUMBER

:DOCUMBER

set _folderCount=0

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents"
cd /d "%_folderPath%"
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.8 PathFinder 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt { 16 17 0 8
rem PrintColorAt { 17 17 0 8
rem PrintColorAt { 18 17 0 8
rem PrintColorAt { 19 17 0 8
rem PrintColorAt { 20 17 0 8
rem PrintColorAt { 21 17 0 8
rem PrintColorAt { 22 17 0 8
rem PrintColorAt { 23 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt - 24 18 0 8
rem PrintColorAt - 24 19 0 8
rem PrintColorAt - 24 20 0 8
rem PrintColorAt - 24 21 0 8
rem PrintColorAt - 24 22 0 8
rem PrintColorAt - 24 23 0 8
rem PrintColorAt - 24 24 0 8
rem PrintColorAt - 24 25 0 8
rem PrintColorAt - 24 26 0 8
rem PrintColorAt - 24 27 0 8
rem PrintColorAt - 24 28 0 8
rem PrintColorAt - 24 29 0 8
rem PrintColorAt - 24 30 0 8
rem PrintColorAt - 24 31 0 8
rem PrintColorAt - 24 32 0 8
rem PrintColorAt - 24 33 0 8
rem PrintColorAt - 24 34 0 8
rem PrintColorAt - 24 35 0 8
rem PrintColorAt - 24 36 0 8
rem PrintColorAt - 24 37 0 8
rem PrintColorAt - 24 38 0 8
rem PrintColorAt - 24 39 0 8
rem PrintColorAt - 24 40 0 8
rem PrintColorAt - 24 41 0 8
rem PrintColorAt - 24 42 0 8
rem PrintColorAt - 24 43 0 8
rem PrintColorAt - 24 44 0 8
rem PrintColorAt - 24 45 0 8
rem PrintColorAt - 24 46 0 8
rem PrintColorAt - 24 47 0 8
rem PrintColorAt - 24 48 0 8
rem PrintColorAt - 24 49 0 8
rem PrintColorAt - 24 50 0 8
rem PrintColorAt - 24 51 0 8
rem PrintColorAt - 24 52 0 8
rem PrintColorAt - 24 53 0 8
rem PrintColorAt - 24 54 0 8
rem PrintColorAt - 24 55 0 8
rem PrintColorAt - 24 56 0 8
rem PrintColorAt - 24 57 0 8
rem PrintColorAt - 24 58 0 8
rem PrintColorAt - 24 59 0 8
rem PrintColorAt - 24 60 0 8
rem PrintColorAt - 24 61 0 8
rem PrintColorAt - 24 62 0 8
rem PrintColorAt - 24 63 0 8
rem PrintColorAt - 24 64 0 8
rem PrintColorAt - 24 65 0 8
rem PrintColorAt - 24 66 0 8
rem PrintColorAt - 24 67 0 8
rem PrintColorAt - 24 68 0 8
rem PrintColorAt - 24 69 0 8
rem PrintColorAt - 24 70 0 8
rem PrintColorAt - 24 71 0 8
rem PrintColorAt - 24 72 0 8
rem PrintColorAt - 24 73 0 8
rem PrintColorAt - 24 74 0 8
rem PrintColorAt } 7 74 0 8
rem PrintColorAt } 8 74 0 8
rem PrintColorAt } 9 74 0 8
rem PrintColorAt } 10 74 0 8
rem PrintColorAt } 11 74 0 8
rem PrintColorAt } 12 74 0 8
rem PrintColorAt } 13 74 0 8
rem PrintColorAt } 14 74 0 8
rem PrintColorAt } 15 74 0 8
rem PrintColorAt } 16 74 0 8
rem PrintColorAt } 17 74 0 8
rem PrintColorAt } 18 74 0 8
rem PrintColorAt } 19 74 0 8
rem PrintColorAt } 20 74 0 8
rem PrintColorAt } 21 74 0 8
rem PrintColorAt } 22 74 0 8
rem PrintColorAt } 23 74 0 8
rem PrintColorAt } 24 74 0 8
rem PrintColorAt JasonJaguarFileSystem/A: Drive 7 39 15 1
rem PrintColorAt /Documents 8 39 0 9
rem PrintColorAt ( 11 23 0 9
rem PrintColorAt ) 11 38 0 9
rem PrintColorAt / 10 23 0 9
rem PrintColorAt - 10 24 0 9
rem PrintColorAt - 10 25 0 9
rem PrintColorAt - 10 26 0 9
rem PrintColorAt - 10 27 0 9
rem PrintColorAt - 10 28 0 9
rem PrintColorAt - 10 29 0 9
rem PrintColorAt - 10 30 0 9
rem PrintColorAt - 10 31 0 9
rem PrintColorAt - 10 32 0 9
rem PrintColorAt - 10 33 0 9
rem PrintColorAt - 10 34 0 9
rem PrintColorAt - 10 35 0 9
rem PrintColorAt - 10 36 0 9
rem PrintColorAt - 10 37 0 9
rem PrintColorAt \ 10 38 0 9
rem PrintColorAt \ 12 23 0 9
rem PrintColorAt - 12 24 0 9
rem PrintColorAt - 12 25 0 9
rem PrintColorAt - 12 26 0 9
rem PrintColorAt - 12 27 0 9
rem PrintColorAt - 12 28 0 9
rem PrintColorAt - 12 29 0 9
rem PrintColorAt - 12 30 0 9
rem PrintColorAt - 12 31 0 9
rem PrintColorAt - 12 32 0 9
rem PrintColorAt - 12 33 0 9
rem PrintColorAt - 12 34 0 9
rem PrintColorAt - 12 35 0 9
rem PrintColorAt - 12 36 0 9
rem PrintColorAt - 12 37 0 9
rem PrintColorAt / 12 38 0 9
rem PrintColorAt JAGUARWORD.txt 11 24 0 3
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 1) 23 33 0 3
rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem MouseCMD 19,7,21,7 72,6,74,6 23,10,38,12 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 39,7,59,7 61,7,68,7 39,8,48,8 get

if %result%==1 goto AYDRIVEBIG
if %result%==2 goto documuntsmall
if %result%==3 goto jaguarwordread
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto multifinder
if %result%==7 goto pathspec
if %result%==8 goto resizefile1
if %result%==9 goto AYDRIVEBIG
if %result%==10 goto documuntbeeg
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones


:documuntsmall
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents goto DOCUMBERSMULK

:DOCUMBERSMULK

set _folderCount=0

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents"
cd /d "%_folderPath%"
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.8 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JasonJaguarFileSystem 7 34 15 1
rem PrintColorAt /A: Drive 8 34 0 9
rem PrintColorAt /Documents 9 34 0 3
rem PrintColorAt ( 11 23 0 9
rem PrintColorAt ) 11 38 0 9
rem PrintColorAt / 10 23 0 9
rem PrintColorAt - 10 24 0 9
rem PrintColorAt - 10 25 0 9
rem PrintColorAt - 10 26 0 9
rem PrintColorAt - 10 27 0 9
rem PrintColorAt - 10 28 0 9
rem PrintColorAt - 10 29 0 9
rem PrintColorAt - 10 30 0 9
rem PrintColorAt - 10 31 0 9
rem PrintColorAt - 10 32 0 9
rem PrintColorAt - 10 33 0 9
rem PrintColorAt - 10 34 0 9
rem PrintColorAt - 10 35 0 9
rem PrintColorAt - 10 36 0 9
rem PrintColorAt - 10 37 0 9
rem PrintColorAt \ 10 38 0 9
rem PrintColorAt \ 12 23 0 9
rem PrintColorAt - 12 24 0 9
rem PrintColorAt - 12 25 0 9
rem PrintColorAt - 12 26 0 9
rem PrintColorAt - 12 27 0 9
rem PrintColorAt - 12 28 0 9
rem PrintColorAt - 12 29 0 9
rem PrintColorAt - 12 30 0 9
rem PrintColorAt - 12 31 0 9
rem PrintColorAt - 12 32 0 9
rem PrintColorAt - 12 33 0 9
rem PrintColorAt - 12 34 0 9
rem PrintColorAt - 12 35 0 9
rem PrintColorAt - 12 36 0 9
rem PrintColorAt - 12 37 0 9
rem PrintColorAt / 12 38 0 9
rem PrintColorAt JAGUARWORD.txt 11 24 0 3
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 1) 14 21 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 19,7,21,7 54,6,56,6 23,10,38,12 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 34,7,54,7 34,8,42,8 34,9,43,9 get

if %result%==1 goto AYDRIVE
if %result%==2 goto documuntbeeg
if %result%==3 goto jaguarwordread
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto multifinder
if %result%==7 goto pathspec
if %result%==8 goto FileSystem
if %result%==9 goto AYDRIVE
if %result%==10 goto documuntsmall
if %result%==0 goto CLI


rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones






:otherusersmall
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData goto USERTINYT

:USERTINYT

if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData set folde=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData set folde=0

if %folde% leq 0 set _folderCount=0
if %folde% geq 1 set _folderCount=1

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData"
cd /d "%_folderPath%"
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.8 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JasonJaguarFileSystem 7 34 15 1
rem PrintColorAt /A: Drive 8 34 0 9
rem PrintColorAt /OtherUserData 9 34 0 3
rem PrintColorAt ( 9 19 0 9
rem PrintColorAt ( 10 19 0 9
rem PrintColorAt ( 11 19 0 9
rem PrintColorAt ( 12 19 0 9
rem PrintColorAt ) 9 28 0 9
rem PrintColorAt ) 10 29 0 9
rem PrintColorAt ) 11 31 0 9
rem PrintColorAt ) 12 33 0 9
rem PrintColorAt / 8 19 0 9
rem PrintColorAt - 8 20 0 9
rem PrintColorAt - 8 21 0 9
rem PrintColorAt - 8 22 0 9
rem PrintColorAt - 8 23 0 9
rem PrintColorAt - 8 24 0 9
rem PrintColorAt - 8 25 0 9
rem PrintColorAt - 8 26 0 9
rem PrintColorAt - 8 27 0 9
rem PrintColorAt - 8 28 0 9
rem PrintColorAt \ 8 28 0 9
rem PrintColorAt \ 13 19 0 9
rem PrintColorAt - 13 20 0 9
rem PrintColorAt - 13 21 0 9
rem PrintColorAt - 13 22 0 9
rem PrintColorAt - 13 23 0 9
rem PrintColorAt - 13 24 0 9
rem PrintColorAt - 13 25 0 9
rem PrintColorAt - 13 26 0 9
rem PrintColorAt - 13 27 0 9
rem PrintColorAt - 13 28 0 9
rem PrintColorAt - 13 29 0 9
rem PrintColorAt - 13 30 0 9
rem PrintColorAt - 13 31 0 9
rem PrintColorAt - 13 32 0 9
rem PrintColorAt / 13 33 0 9
rem PrintColorAt mathinput.txt 12 20 0 11

rem PrintColorAt ( 12 38 0 6
rem PrintColorAt ) 12 47 0 6
rem PrintColorAt / 11 38 0 6
rem PrintColorAt - 11 39 0 6
rem PrintColorAt - 11 40 0 6
rem PrintColorAt - 11 41 0 6
rem PrintColorAt - 11 42 0 6
rem PrintColorAt - 11 43 0 6
rem PrintColorAt - 11 44 0 6
rem PrintColorAt - 11 45 0 6
rem PrintColorAt - 11 46 0 6
rem PrintColorAt \ 11 47 0 6
rem PrintColorAt \ 13 38 0 6
rem PrintColorAt - 13 39 0 6
rem PrintColorAt - 13 40 0 6
rem PrintColorAt - 13 41 0 6
rem PrintColorAt - 13 42 0 6
rem PrintColorAt - 13 43 0 6
rem PrintColorAt - 13 44 0 6
rem PrintColorAt - 13 45 0 6
rem PrintColorAt - 13 46 0 6
rem PrintColorAt / 13 47 0 6
rem PrintColorAt calc.txt 9 20 15 1


rem PrintColorAt calc2.txt 10 20 0 9


rem PrintColorAt UserPass 12 39 0 14


rem PrintColorAt sysinfo.txt 11 20 0 3
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 5) 14 21 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones
rem MouseCMD 20,9,27,9 20,10,28,10 20,11,30,11 20,12,32,12 39,12,46,12 19,7,21,7 54,6,56,6 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 34,7,54,7 34,8,42,8 34,9,47,9 get

if %result%==1 goto calcread
if %result%==2 goto calc2read
if %result%==3 goto sysinforead
if %result%==4 goto mathinputread
if %result%==5 goto userpasssmall
if %result%==6 goto AYDRIVE
if %result%==7 goto otheruserbeeg
if %result%==8 goto snui
if %result%==9 goto snui
if %result%==10 goto multifinder
if %result%==11 goto pathspec
if %result%==12 goto FileSystem
if %result%==13 goto AYDRIVE
if %result%==14 goto otherusersmall
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones

rem rem first four on these are answer questrion




:otheruserbeeg
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData goto USERBEEGT

:USERBEEGT

if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData set folde=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData set folde=0

if %folde% leq 0 set _folderCount=0
if %folde% geq 1 set _folderCount=1

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData"
cd /d "%_folderPath%"
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.8 PathFinder 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt { 16 17 0 8
rem PrintColorAt { 17 17 0 8
rem PrintColorAt { 18 17 0 8
rem PrintColorAt { 19 17 0 8
rem PrintColorAt { 20 17 0 8
rem PrintColorAt { 21 17 0 8
rem PrintColorAt { 22 17 0 8
rem PrintColorAt { 23 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt - 24 18 0 8
rem PrintColorAt - 24 19 0 8
rem PrintColorAt - 24 20 0 8
rem PrintColorAt - 24 21 0 8
rem PrintColorAt - 24 22 0 8
rem PrintColorAt - 24 23 0 8
rem PrintColorAt - 24 24 0 8
rem PrintColorAt - 24 25 0 8
rem PrintColorAt - 24 26 0 8
rem PrintColorAt - 24 27 0 8
rem PrintColorAt - 24 28 0 8
rem PrintColorAt - 24 29 0 8
rem PrintColorAt - 24 30 0 8
rem PrintColorAt - 24 31 0 8
rem PrintColorAt - 24 32 0 8
rem PrintColorAt - 24 33 0 8
rem PrintColorAt - 24 34 0 8
rem PrintColorAt - 24 35 0 8
rem PrintColorAt - 24 36 0 8
rem PrintColorAt - 24 37 0 8
rem PrintColorAt - 24 38 0 8
rem PrintColorAt - 24 39 0 8
rem PrintColorAt - 24 40 0 8
rem PrintColorAt - 24 41 0 8
rem PrintColorAt - 24 42 0 8
rem PrintColorAt - 24 43 0 8
rem PrintColorAt - 24 44 0 8
rem PrintColorAt - 24 45 0 8
rem PrintColorAt - 24 46 0 8
rem PrintColorAt - 24 47 0 8
rem PrintColorAt - 24 48 0 8
rem PrintColorAt - 24 49 0 8
rem PrintColorAt - 24 50 0 8
rem PrintColorAt - 24 51 0 8
rem PrintColorAt - 24 52 0 8
rem PrintColorAt - 24 53 0 8
rem PrintColorAt - 24 54 0 8
rem PrintColorAt - 24 55 0 8
rem PrintColorAt - 24 56 0 8
rem PrintColorAt - 24 57 0 8
rem PrintColorAt - 24 58 0 8
rem PrintColorAt - 24 59 0 8
rem PrintColorAt - 24 60 0 8
rem PrintColorAt - 24 61 0 8
rem PrintColorAt - 24 62 0 8
rem PrintColorAt - 24 63 0 8
rem PrintColorAt - 24 64 0 8
rem PrintColorAt - 24 65 0 8
rem PrintColorAt - 24 66 0 8
rem PrintColorAt - 24 67 0 8
rem PrintColorAt - 24 68 0 8
rem PrintColorAt - 24 69 0 8
rem PrintColorAt - 24 70 0 8
rem PrintColorAt - 24 71 0 8
rem PrintColorAt - 24 72 0 8
rem PrintColorAt - 24 73 0 8
rem PrintColorAt - 24 74 0 8
rem PrintColorAt } 7 74 0 8
rem PrintColorAt } 8 74 0 8
rem PrintColorAt } 9 74 0 8
rem PrintColorAt } 10 74 0 8
rem PrintColorAt } 11 74 0 8
rem PrintColorAt } 12 74 0 8
rem PrintColorAt } 13 74 0 8
rem PrintColorAt } 14 74 0 8
rem PrintColorAt } 15 74 0 8
rem PrintColorAt } 16 74 0 8
rem PrintColorAt } 17 74 0 8
rem PrintColorAt } 18 74 0 8
rem PrintColorAt } 19 74 0 8
rem PrintColorAt } 20 74 0 8
rem PrintColorAt } 21 74 0 8
rem PrintColorAt } 22 74 0 8
rem PrintColorAt } 23 74 0 8
rem PrintColorAt } 24 74 0 8
rem PrintColorAt JasonJaguarFileSystem/A: Drive 7 34 15 1
rem PrintColorAt /OtherUserData 8 34 0 9
rem PrintColorAt ( 10 19 0 9
rem PrintColorAt ( 11 19 0 9
rem PrintColorAt ( 12 19 0 9
rem PrintColorAt ( 13 19 0 9
rem PrintColorAt ( 14 19 0 9
rem PrintColorAt ) 10 28 0 9
rem PrintColorAt ) 11 29 0 9
rem PrintColorAt ) 12 31 0 9
rem PrintColorAt ) 13 33 0 9
rem PrintColorAt ) 14 33 0 9
rem PrintColorAt / 9 19 0 9
rem PrintColorAt - 9 20 0 9
rem PrintColorAt - 9 21 0 9
rem PrintColorAt - 9 22 0 9
rem PrintColorAt - 9 23 0 9
rem PrintColorAt - 9 24 0 9
rem PrintColorAt - 9 25 0 9
rem PrintColorAt - 9 26 0 9
rem PrintColorAt - 9 27 0 9
rem PrintColorAt - 9 28 0 9
rem PrintColorAt \ 9 28 0 9
rem PrintColorAt \ 15 19 0 9
rem PrintColorAt - 15 20 0 9
rem PrintColorAt - 15 21 0 9
rem PrintColorAt - 15 22 0 9
rem PrintColorAt - 15 23 0 9
rem PrintColorAt - 15 24 0 9
rem PrintColorAt - 15 25 0 9
rem PrintColorAt - 15 26 0 9
rem PrintColorAt - 15 27 0 9
rem PrintColorAt - 15 28 0 9
rem PrintColorAt - 15 29 0 9
rem PrintColorAt - 15 30 0 9
rem PrintColorAt - 15 31 0 9
rem PrintColorAt - 15 32 0 9
rem PrintColorAt / 15 33 0 9
rem PrintColorAt mathinput.txt 13 20 0 11

rem PrintColorAt JaguarDOS.txt 14 20 0 5

rem PrintColorAt ( 12 38 0 6
rem PrintColorAt ) 12 47 0 6
rem PrintColorAt / 11 38 0 6
rem PrintColorAt - 11 39 0 6
rem PrintColorAt - 11 40 0 6
rem PrintColorAt - 11 41 0 6
rem PrintColorAt - 11 42 0 6
rem PrintColorAt - 11 43 0 6
rem PrintColorAt - 11 44 0 6
rem PrintColorAt - 11 45 0 6
rem PrintColorAt - 11 46 0 6
rem PrintColorAt \ 11 47 0 6
rem PrintColorAt \ 13 38 0 6
rem PrintColorAt - 13 39 0 6
rem PrintColorAt - 13 40 0 6
rem PrintColorAt - 13 41 0 6
rem PrintColorAt - 13 42 0 6
rem PrintColorAt - 13 43 0 6
rem PrintColorAt - 13 44 0 6
rem PrintColorAt - 13 45 0 6
rem PrintColorAt - 13 46 0 6
rem PrintColorAt / 13 47 0 6
rem PrintColorAt calc.txt 10 20 15 1


rem PrintColorAt calc2.txt 11 20 0 9


rem PrintColorAt UserPass 12 39 0 14


rem PrintColorAt sysinfo.txt 12 20 0 3
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 5) 23 33 0 3
rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 20,10,27,10 20,11,28,11 20,12,30,12 20,13,32,13 38,11,47,13 19,7,21,7 72,6,74,6 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 20,14,32,14 34,7,54,7 56,7,63,7 34,8,47,8 get

if %result%==1 goto calcread
if %result%==2 goto calc2read
if %result%==3 goto sysinforead
if %result%==4 goto mathinputread
if %result%==5 goto userpassbeeg
if %result%==6 goto AYDRIVEBIG
if %result%==7 goto otherusersmall
if %result%==8 goto snui
if %result%==9 goto snui
if %result%==10 goto multifinder
if %result%==11 goto pathspec
if %result%==12 goto jaguardosread
if %result%==13 goto resizefile1
if %result%==14 goto AYDRIVEBIG
if %result%==15 goto otheruserbeeg
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones






:userpasssmall
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass goto TINYUSERPASTE

:TINYUSERPASTE

set _folderCount=0

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass"
cd /d "%_folderPath%"
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.8 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JasonJaguarFileSystem 7 34 15 1
rem PrintColorAt /A: Drive 8 34 0 9
rem PrintColorAt /OtherUserData 9 34 0 3
rem PrintColorAt /UserPass 10 34 0 11
rem PrintColorAt ( 10 19 0 9
rem PrintColorAt ) 10 32 0 9
rem PrintColorAt / 9 19 0 9
rem PrintColorAt - 9 20 0 9
rem PrintColorAt - 9 21 0 9
rem PrintColorAt - 9 22 0 9
rem PrintColorAt - 9 23 0 9
rem PrintColorAt - 9 24 0 9
rem PrintColorAt - 9 25 0 9
rem PrintColorAt - 9 26 0 9
rem PrintColorAt - 9 27 0 9
rem PrintColorAt - 9 28 0 9
rem PrintColorAt - 9 29 0 9
rem PrintColorAt - 9 30 0 9
rem PrintColorAt - 9 31 0 9
rem PrintColorAt \ 9 32 0 9
rem PrintColorAt \ 11 19 0 9
rem PrintColorAt - 11 20 0 9
rem PrintColorAt - 11 21 0 9
rem PrintColorAt - 11 22 0 9
rem PrintColorAt - 11 23 0 9
rem PrintColorAt - 11 24 0 9
rem PrintColorAt - 11 25 0 9
rem PrintColorAt - 11 26 0 9
rem PrintColorAt - 11 27 0 9
rem PrintColorAt - 11 28 0 9
rem PrintColorAt - 11 29 0 9
rem PrintColorAt - 11 30 0 9
rem PrintColorAt - 11 31 0 9
rem PrintColorAt / 11 32 0 9
rem PrintColorAt username.txt 10 20 0 3
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 1) 14 21 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones
rem MouseCMD 19,9,32,11 19,7,21,7 54,6,56,6 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 34,7,54,7 34,8,42,8 34,9,47,9 34,10,42,10 get


if %result%==1 goto userpassread
if %result%==2 goto otherusersmall
if %result%==3 goto userpassbeeg
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto multifinder
if %result%==7 goto pathspec
if %result%==8 goto FileSystem
if %result%==9 goto AYDRIVE
if %result%==10 goto otherusersmall
if %result%==11 goto userpasssmall
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones

rem rem first four on these are answer questrion





:userpassbeeg
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass goto BEEGUSERPASTE

:BEEGUSERPASTE

set _folderCount=0

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass"
cd /d "%_folderPath%"
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.8 PathFinder 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt { 16 17 0 8
rem PrintColorAt { 17 17 0 8
rem PrintColorAt { 18 17 0 8
rem PrintColorAt { 19 17 0 8
rem PrintColorAt { 20 17 0 8
rem PrintColorAt { 21 17 0 8
rem PrintColorAt { 22 17 0 8
rem PrintColorAt { 23 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt - 24 18 0 8
rem PrintColorAt - 24 19 0 8
rem PrintColorAt - 24 20 0 8
rem PrintColorAt - 24 21 0 8
rem PrintColorAt - 24 22 0 8
rem PrintColorAt - 24 23 0 8
rem PrintColorAt - 24 24 0 8
rem PrintColorAt - 24 25 0 8
rem PrintColorAt - 24 26 0 8
rem PrintColorAt - 24 27 0 8
rem PrintColorAt - 24 28 0 8
rem PrintColorAt - 24 29 0 8
rem PrintColorAt - 24 30 0 8
rem PrintColorAt - 24 31 0 8
rem PrintColorAt - 24 32 0 8
rem PrintColorAt - 24 33 0 8
rem PrintColorAt - 24 34 0 8
rem PrintColorAt - 24 35 0 8
rem PrintColorAt - 24 36 0 8
rem PrintColorAt - 24 37 0 8
rem PrintColorAt - 24 38 0 8
rem PrintColorAt - 24 39 0 8
rem PrintColorAt - 24 40 0 8
rem PrintColorAt - 24 41 0 8
rem PrintColorAt - 24 42 0 8
rem PrintColorAt - 24 43 0 8
rem PrintColorAt - 24 44 0 8
rem PrintColorAt - 24 45 0 8
rem PrintColorAt - 24 46 0 8
rem PrintColorAt - 24 47 0 8
rem PrintColorAt - 24 48 0 8
rem PrintColorAt - 24 49 0 8
rem PrintColorAt - 24 50 0 8
rem PrintColorAt - 24 51 0 8
rem PrintColorAt - 24 52 0 8
rem PrintColorAt - 24 53 0 8
rem PrintColorAt - 24 54 0 8
rem PrintColorAt - 24 55 0 8
rem PrintColorAt - 24 56 0 8
rem PrintColorAt - 24 57 0 8
rem PrintColorAt - 24 58 0 8
rem PrintColorAt - 24 59 0 8
rem PrintColorAt - 24 60 0 8
rem PrintColorAt - 24 61 0 8
rem PrintColorAt - 24 62 0 8
rem PrintColorAt - 24 63 0 8
rem PrintColorAt - 24 64 0 8
rem PrintColorAt - 24 65 0 8
rem PrintColorAt - 24 66 0 8
rem PrintColorAt - 24 67 0 8
rem PrintColorAt - 24 68 0 8
rem PrintColorAt - 24 69 0 8
rem PrintColorAt - 24 70 0 8
rem PrintColorAt - 24 71 0 8
rem PrintColorAt - 24 72 0 8
rem PrintColorAt - 24 73 0 8
rem PrintColorAt - 24 74 0 8
rem PrintColorAt } 7 74 0 8
rem PrintColorAt } 8 74 0 8
rem PrintColorAt } 9 74 0 8
rem PrintColorAt } 10 74 0 8
rem PrintColorAt } 11 74 0 8
rem PrintColorAt } 12 74 0 8
rem PrintColorAt } 13 74 0 8
rem PrintColorAt } 14 74 0 8
rem PrintColorAt } 15 74 0 8
rem PrintColorAt } 16 74 0 8
rem PrintColorAt } 17 74 0 8
rem PrintColorAt } 18 74 0 8
rem PrintColorAt } 19 74 0 8
rem PrintColorAt } 20 74 0 8
rem PrintColorAt } 21 74 0 8
rem PrintColorAt } 22 74 0 8
rem PrintColorAt } 23 74 0 8
rem PrintColorAt } 24 74 0 8
rem PrintColorAt JasonJaguarFileSystem/A: Drive 7 34 15 1
rem PrintColorAt /OtherUserData/UserPass 8 34 0 9
rem PrintColorAt ( 13 19 0 9
rem PrintColorAt ) 13 32 0 9
rem PrintColorAt / 12 19 0 9
rem PrintColorAt - 12 20 0 9
rem PrintColorAt - 12 21 0 9
rem PrintColorAt - 12 22 0 9
rem PrintColorAt - 12 23 0 9
rem PrintColorAt - 12 24 0 9
rem PrintColorAt - 12 25 0 9
rem PrintColorAt - 12 26 0 9
rem PrintColorAt - 12 27 0 9
rem PrintColorAt - 12 28 0 9
rem PrintColorAt - 12 29 0 9
rem PrintColorAt - 12 30 0 9
rem PrintColorAt - 12 31 0 9
rem PrintColorAt \ 12 32 0 9
rem PrintColorAt \ 14 19 0 9
rem PrintColorAt - 14 20 0 9
rem PrintColorAt - 14 21 0 9
rem PrintColorAt - 14 22 0 9
rem PrintColorAt - 14 23 0 9
rem PrintColorAt - 14 24 0 9
rem PrintColorAt - 14 25 0 9
rem PrintColorAt - 14 26 0 9
rem PrintColorAt - 14 27 0 9
rem PrintColorAt - 14 28 0 9
rem PrintColorAt - 14 29 0 9
rem PrintColorAt - 14 30 0 9
rem PrintColorAt - 14 31 0 9
rem PrintColorAt / 14 32 0 9
rem PrintColorAt username.txt 13 20 0 3
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 1) 23 33 0 3
rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones
rem MouseCMD 19,12,32,14 19,7,21,7 72,6,74,6 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 34,7,54,7 56,7,63,7 34,8,47,8 49,8,56,8 get


if %result%==1 goto userpassread
if %result%==2 goto otheruserbeeg
if %result%==3 goto userpasssmall
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto multifinder
if %result%==7 goto pathspec
if %result%==8 goto resizefile1
if %result%==9 goto AYDRIVEBIG
if %result%==10 goto otheruserbeeg
if %result%==11 goto userpassbeeg
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones

rem rem first four on these are answer questrion



:calcread
set wordID=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
goto readbeegorsmall


:calc2read
set wordID=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
goto readbeegorsmall

:sysinforead
set wordID=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
goto readbeegorsmall

:mathinputread
set wordID=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
goto readbeegorsmall

:jaguarwordread
set wordID=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents\JAGUARWORD.txt
goto readbeegorsmall

:userpassread
set wordID=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
goto readbeegorsmall

:jaguardosread
set wordID=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\JaguarDOS.txt
goto readbeegorsmall


:readbeegorsmall
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.8 PathFinder 6 20 0 9
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt { 16 17 0 8
rem PrintColorAt { 17 17 0 8
rem PrintColorAt { 18 17 0 8
rem PrintColorAt { 19 17 0 8
rem PrintColorAt { 20 17 0 8
rem PrintColorAt { 21 17 0 8
rem PrintColorAt { 22 17 0 8
rem PrintColorAt { 23 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt - 24 18 0 8
rem PrintColorAt - 24 19 0 8
rem PrintColorAt - 24 20 0 8
rem PrintColorAt - 24 21 0 8
rem PrintColorAt - 24 22 0 8
rem PrintColorAt - 24 23 0 8
rem PrintColorAt - 24 24 0 8
rem PrintColorAt - 24 25 0 8
rem PrintColorAt - 24 26 0 8
rem PrintColorAt - 24 27 0 8
rem PrintColorAt - 24 28 0 8
rem PrintColorAt - 24 29 0 8
rem PrintColorAt - 24 30 0 8
rem PrintColorAt - 24 31 0 8
rem PrintColorAt - 24 32 0 8
rem PrintColorAt - 24 33 0 8
rem PrintColorAt - 24 34 0 8
rem PrintColorAt - 24 35 0 8
rem PrintColorAt - 24 36 0 8
rem PrintColorAt - 24 37 0 8
rem PrintColorAt - 24 38 0 8
rem PrintColorAt - 24 39 0 8
rem PrintColorAt - 24 40 0 8
rem PrintColorAt - 24 41 0 8
rem PrintColorAt - 24 42 0 8
rem PrintColorAt - 24 43 0 8
rem PrintColorAt - 24 44 0 8
rem PrintColorAt - 24 45 0 8
rem PrintColorAt - 24 46 0 8
rem PrintColorAt - 24 47 0 8
rem PrintColorAt - 24 48 0 8
rem PrintColorAt - 24 49 0 8
rem PrintColorAt - 24 50 0 8
rem PrintColorAt - 24 51 0 8
rem PrintColorAt - 24 52 0 8
rem PrintColorAt - 24 53 0 8
rem PrintColorAt - 24 54 0 8
rem PrintColorAt - 24 55 0 8
rem PrintColorAt - 24 56 0 8
rem PrintColorAt - 24 57 0 8
rem PrintColorAt - 24 58 0 8
rem PrintColorAt - 24 59 0 8
rem PrintColorAt - 24 60 0 8
rem PrintColorAt - 24 61 0 8
rem PrintColorAt - 24 62 0 8
rem PrintColorAt - 24 63 0 8
rem PrintColorAt - 24 64 0 8
rem PrintColorAt - 24 65 0 8
rem PrintColorAt - 24 66 0 8
rem PrintColorAt - 24 67 0 8
rem PrintColorAt - 24 68 0 8
rem PrintColorAt - 24 69 0 8
rem PrintColorAt - 24 70 0 8
rem PrintColorAt - 24 71 0 8
rem PrintColorAt - 24 72 0 8
rem PrintColorAt - 24 73 0 8
rem PrintColorAt - 24 74 0 8
rem PrintColorAt } 7 74 0 8
rem PrintColorAt } 8 74 0 8
rem PrintColorAt } 9 74 0 8
rem PrintColorAt } 10 74 0 8
rem PrintColorAt } 11 74 0 8
rem PrintColorAt } 12 74 0 8
rem PrintColorAt } 13 74 0 8
rem PrintColorAt } 14 74 0 8
rem PrintColorAt } 15 74 0 8
rem PrintColorAt } 16 74 0 8
rem PrintColorAt } 17 74 0 8
rem PrintColorAt } 18 74 0 8
rem PrintColorAt } 19 74 0 8
rem PrintColorAt } 20 74 0 8
rem PrintColorAt } 21 74 0 8
rem PrintColorAt } 22 74 0 8
rem PrintColorAt } 23 74 0 8
rem PrintColorAt } 24 74 0 8

rem rem dividing line between windowing code and the stuff above
rem PrintColorAt ( 13 19 0 9
rem PrintColorAt ) 13 32 0 9
rem PrintColorAt / 12 19 0 9
rem PrintColorAt - 12 20 0 9
rem PrintColorAt - 12 21 0 9
rem PrintColorAt - 12 22 0 9
rem PrintColorAt - 12 23 0 9
rem PrintColorAt - 12 24 0 9
rem PrintColorAt - 12 25 0 9
rem PrintColorAt - 12 26 0 9
rem PrintColorAt - 12 27 0 9
rem PrintColorAt - 12 28 0 9
rem PrintColorAt - 12 29 0 9
rem PrintColorAt - 12 30 0 9
rem PrintColorAt - 12 31 0 9
rem PrintColorAt \ 12 32 0 9
rem PrintColorAt \ 14 19 0 9
rem PrintColorAt - 14 20 0 9
rem PrintColorAt - 14 21 0 9
rem PrintColorAt - 14 22 0 9
rem PrintColorAt - 14 23 0 9
rem PrintColorAt - 14 24 0 9
rem PrintColorAt - 14 25 0 9
rem PrintColorAt - 14 26 0 9
rem PrintColorAt - 14 27 0 9
rem PrintColorAt - 14 28 0 9
rem PrintColorAt - 14 29 0 9
rem PrintColorAt - 14 30 0 9
rem PrintColorAt - 14 31 0 9
rem PrintColorAt / 14 32 0 9
rem PrintColorAt Would you like to be redirected to Jaguar Reader 11 20 0 3
rem PrintColorAt so you can view this file? 12 20 0 11
rem PrintColorAt Yes 13 21 0 3
rem PrintColorAt No 13 28 15 12
rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 21,13,23,13 28,13,29,13 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto plainwordread
if %result%==2 goto AYDRIVE
if %result%==3 goto snui
if %result%==4 goto snui
if %result%==5 goto multifinder
if %result%==6 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones





:sasdy
set /p usar=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
rem Function to update date and time variables
rem Get the current date
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i

rem Get the current time
set mytime=!time!

rem Parse the time
for /F "tokens=1-3 delims=:" %%a in ("!mytime!") do (
    set hour=%%a
    set minute=%%b
    set second=%%c
)

rem Determine AM or PM
if !hour! lss 12 (
    set ampm=AM
) else (
    set ampm=PM
)

rem Convert hour to 12-hour format
if !hour! gtr 12 (
    set /A hour-=12
) else if !hour!==00 (
    set hour=12
)
cls
rem PaintScreen 15
rem ShadeBoxAt 3 1 27 120 2
rem ShadeBoxAt 1 33 2 87 1
rem ShadeBoxAt 2 34 1 87 2
rem ShadeBoxAt 2 1 1 87 1
rem Locate 25 1
rem PrintColorAt JaguarOS 2 . 5 - Public Ver. 1 88 0 9
rem PrintColorAt .X. 1 117 15 12
rem PrintColorAt Welcome, %usar%. :) 29 1 0 3
rem PrintColorAt {@@} 1 2 0 9
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem rem WIDTH THEN HEIGHT FOR COORDINATES THOUGH
rem PrintColorAt *Bubbles 1 8 0 9
rem PrintColorAt *Games 1 18 0 9
rem PrintColorAt PathFinder1.7 1 26 0 9
rem PrintColorAt PathFinderSpec 1 41 0 9
rem PrintColorAt %hour%:%minute% %ampm%, %mydate% 29 100 0 3
rem PrintColorAt File 1 63 15 1

rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.8 PathFinder 6 20 0 9
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt { 16 17 0 8
rem PrintColorAt { 17 17 0 8
rem PrintColorAt { 18 17 0 8
rem PrintColorAt { 19 17 0 8
rem PrintColorAt { 20 17 0 8
rem PrintColorAt { 21 17 0 8
rem PrintColorAt { 22 17 0 8
rem PrintColorAt { 23 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt { 24 17 0 8
rem PrintColorAt - 24 18 0 8
rem PrintColorAt - 24 19 0 8
rem PrintColorAt - 24 20 0 8
rem PrintColorAt - 24 21 0 8
rem PrintColorAt - 24 22 0 8
rem PrintColorAt - 24 23 0 8
rem PrintColorAt - 24 24 0 8
rem PrintColorAt - 24 25 0 8
rem PrintColorAt - 24 26 0 8
rem PrintColorAt - 24 27 0 8
rem PrintColorAt - 24 28 0 8
rem PrintColorAt - 24 29 0 8
rem PrintColorAt - 24 30 0 8
rem PrintColorAt - 24 31 0 8
rem PrintColorAt - 24 32 0 8
rem PrintColorAt - 24 33 0 8
rem PrintColorAt - 24 34 0 8
rem PrintColorAt - 24 35 0 8
rem PrintColorAt - 24 36 0 8
rem PrintColorAt - 24 37 0 8
rem PrintColorAt - 24 38 0 8
rem PrintColorAt - 24 39 0 8
rem PrintColorAt - 24 40 0 8
rem PrintColorAt - 24 41 0 8
rem PrintColorAt - 24 42 0 8
rem PrintColorAt - 24 43 0 8
rem PrintColorAt - 24 44 0 8
rem PrintColorAt - 24 45 0 8
rem PrintColorAt - 24 46 0 8
rem PrintColorAt - 24 47 0 8
rem PrintColorAt - 24 48 0 8
rem PrintColorAt - 24 49 0 8
rem PrintColorAt - 24 50 0 8
rem PrintColorAt - 24 51 0 8
rem PrintColorAt - 24 52 0 8
rem PrintColorAt - 24 53 0 8
rem PrintColorAt - 24 54 0 8
rem PrintColorAt - 24 55 0 8
rem PrintColorAt - 24 56 0 8
rem PrintColorAt - 24 57 0 8
rem PrintColorAt - 24 58 0 8
rem PrintColorAt - 24 59 0 8
rem PrintColorAt - 24 60 0 8
rem PrintColorAt - 24 61 0 8
rem PrintColorAt - 24 62 0 8
rem PrintColorAt - 24 63 0 8
rem PrintColorAt - 24 64 0 8
rem PrintColorAt - 24 65 0 8
rem PrintColorAt - 24 66 0 8
rem PrintColorAt - 24 67 0 8
rem PrintColorAt - 24 68 0 8
rem PrintColorAt - 24 69 0 8
rem PrintColorAt - 24 70 0 8
rem PrintColorAt - 24 71 0 8
rem PrintColorAt - 24 72 0 8
rem PrintColorAt - 24 73 0 8
rem PrintColorAt - 24 74 0 8
rem PrintColorAt } 7 74 0 8
rem PrintColorAt } 8 74 0 8
rem PrintColorAt } 9 74 0 8
rem PrintColorAt } 10 74 0 8
rem PrintColorAt } 11 74 0 8
rem PrintColorAt } 12 74 0 8
rem PrintColorAt } 13 74 0 8
rem PrintColorAt } 14 74 0 8
rem PrintColorAt } 15 74 0 8
rem PrintColorAt } 16 74 0 8
rem PrintColorAt } 17 74 0 8
rem PrintColorAt } 18 74 0 8
rem PrintColorAt } 19 74 0 8
rem PrintColorAt } 20 74 0 8
rem PrintColorAt } 21 74 0 8
rem PrintColorAt } 22 74 0 8
rem PrintColorAt } 23 74 0 8
rem PrintColorAt } 24 74 0 8
rem PrintColorAt ( 13 19 0 9
rem PrintColorAt ) 13 32 0 9
rem PrintColorAt / 12 19 0 9
rem PrintColorAt - 12 20 0 9
rem PrintColorAt - 12 21 0 9
rem PrintColorAt - 12 22 0 9
rem PrintColorAt - 12 23 0 9
rem PrintColorAt - 12 24 0 9
rem PrintColorAt - 12 25 0 9
rem PrintColorAt - 12 26 0 9
rem PrintColorAt - 12 27 0 9
rem PrintColorAt - 12 28 0 9
rem PrintColorAt - 12 29 0 9
rem PrintColorAt - 12 30 0 9
rem PrintColorAt - 12 31 0 9
rem PrintColorAt \ 12 32 0 9
rem PrintColorAt \ 14 19 0 9
rem PrintColorAt - 14 20 0 9
rem PrintColorAt - 14 21 0 9
rem PrintColorAt - 14 22 0 9
rem PrintColorAt - 14 23 0 9
rem PrintColorAt - 14 24 0 9
rem PrintColorAt - 14 25 0 9
rem PrintColorAt - 14 26 0 9
rem PrintColorAt - 14 27 0 9
rem PrintColorAt - 14 28 0 9
rem PrintColorAt - 14 29 0 9
rem PrintColorAt - 14 30 0 9
rem PrintColorAt - 14 31 0 9
rem PrintColorAt / 14 32 0 9
rem PrintColorAt Sorry, couldn't find or load specified file :( 11 20 0 3
rem PrintColorAt Press the back button to redirect to the A: Drive. 13 21 0 11
rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 19,7,21,7 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto AYDRIVE
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones





:plainwordread
cls
color 0a
set "_file=0"
set "output_file=%wordID%"
goto go_back
:go_back
if not exist "%output_file%" goto sasdy


cls
echo:
echo       JAGUAR READER 1.3:
echo =========================================
type "%output_file%"
echo =========================================


pause
goto brui





:brui
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) goto foldernotfound
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A) goto MAINSTOREEGA


:MAINSTOREEGA
set /p usar=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
rem Function to update date and time variables
rem Get the current date
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i

rem Get the current time
set mytime=!time!

rem Parse the time
for /F "tokens=1-3 delims=:" %%a in ("!mytime!") do (
    set hour=%%a
    set minute=%%b
    set second=%%c
)

rem Determine AM or PM
if !hour! lss 12 (
    set ampm=AM
) else (
    set ampm=PM
)

rem Convert hour to 12-hour format
if !hour! gtr 12 (
    set /A hour-=12
) else if !hour!==00 (
    set hour=12
)

if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents set folde1=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\Documents set folde1=0
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData set folde2=1
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData set folde2=0

if %folde1% leq 0 if %folde2% leq 0 set _folderCount=0
if %folde1% geq 1 if %folde2% leq 0 set _folderCount=1
if %folde1% leq 0 if %folde2% geq 1 set _folderCount=1
if %folde1% geq 1 if %folde2% geq 1 set _folderCount=2

set "_folderPath=%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)"
cd /d "%_folderPath%"

cls
set flagID=snui
rem PaintScreen 15
rem ShadeBoxAt 3 1 27 120 2
rem ShadeBoxAt 1 33 2 87 1
rem ShadeBoxAt 2 34 1 87 2
rem ShadeBoxAt 2 1 1 87 1
rem Locate 25 1
rem PrintColorAt JaguarOS 2 . 5 - Public Ver. 1 88 0 9
rem PrintColorAt .X. 1 117 15 12
rem PrintColorAt Welcome, %usar%. :) 29 1 0 3
rem PrintColorAt {@@} 1 2 0 9
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem rem WIDTH THEN HEIGHT FOR COORDINATES THOUGH
rem PrintColorAt *Bubbles 1 8 0 9
rem PrintColorAt *Games 1 18 0 9
rem PrintColorAt PathFinder1.7 1 26 0 9
rem PrintColorAt PathFinderSpec 1 41 0 9
rem PrintColorAt %hour%:%minute% %ampm%, %mydate% 29 100 0 3
rem PrintColorAt File 1 63 15 1

rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.8 6 20 0 9
rem PrintColorAt Directory: 7 23 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JasonJaguarFileSystem 7 34 15 1
rem PrintColorAt /A: Drive 8 34 0 9
rem PrintColorAt ( 11 23 0 6
rem PrintColorAt ) 11 33 0 6
rem PrintColorAt / 10 23 0 6
rem PrintColorAt - 10 24 0 6
rem PrintColorAt - 10 25 0 6
rem PrintColorAt - 10 26 0 6
rem PrintColorAt - 10 27 0 6
rem PrintColorAt - 10 28 0 6
rem PrintColorAt - 10 29 0 6
rem PrintColorAt - 10 30 0 6
rem PrintColorAt - 10 31 0 6
rem PrintColorAt - 10 32 0 6
rem PrintColorAt \ 10 33 0 6
rem PrintColorAt \ 12 23 0 6
rem PrintColorAt - 12 24 0 6
rem PrintColorAt - 12 25 0 6
rem PrintColorAt - 12 26 0 6
rem PrintColorAt - 12 27 0 6
rem PrintColorAt - 12 28 0 6
rem PrintColorAt - 12 29 0 6
rem PrintColorAt - 12 30 0 6
rem PrintColorAt - 12 31 0 6
rem PrintColorAt - 12 32 0 6
rem PrintColorAt / 12 33 0 6
rem PrintColorAt Documents 11 24 0 14

rem PrintColorAt ( 11 38 0 6
rem PrintColorAt ) 11 52 0 6
rem PrintColorAt / 10 38 0 6
rem PrintColorAt - 10 39 0 6
rem PrintColorAt - 10 40 0 6
rem PrintColorAt - 10 41 0 6
rem PrintColorAt - 10 42 0 6
rem PrintColorAt - 10 43 0 6
rem PrintColorAt - 10 44 0 6
rem PrintColorAt - 10 45 0 6
rem PrintColorAt - 10 46 0 6
rem PrintColorAt - 10 47 0 6
rem PrintColorAt - 10 48 0 6
rem PrintColorAt - 10 49 0 6
rem PrintColorAt - 10 50 0 6
rem PrintColorAt - 10 51 0 6
rem PrintColorAt \ 10 52 0 6
rem PrintColorAt \ 12 38 0 6
rem PrintColorAt - 12 39 0 6
rem PrintColorAt - 12 40 0 6
rem PrintColorAt - 12 41 0 6
rem PrintColorAt - 12 42 0 6
rem PrintColorAt - 12 43 0 6
rem PrintColorAt - 12 44 0 6
rem PrintColorAt - 12 45 0 6
rem PrintColorAt - 12 46 0 6
rem PrintColorAt - 12 47 0 6
rem PrintColorAt - 12 48 0 6
rem PrintColorAt - 12 49 0 6
rem PrintColorAt - 12 50 0 6
rem PrintColorAt - 12 51 0 6
rem PrintColorAt / 12 52 0 6
rem PrintColorAt OtherUserData 11 39 0 14
rem PrintColorAt (Folder(s): %_folderCount%)\___/(File(s): 0) 14 21 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 54,6,56,6 19,7,21,7 23,10,33,12 38,10,52,12 17,6,19,6 2,1,5,1 63,1,66,1 41,1,54,1 34,7,54,7 34,8,42,8 get

if %result%==1 goto AYDRIVEBIG
if %result%==2 goto FileSystem
if %result%==3 goto documuntsmall
if %result%==4 goto otherusersmall
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
if %result%==9 goto FileSystem
if %result%==10 goto smally1
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones








:fyletree
TREE %SYSTEMDRIVE%\JasonJaguarFileSystem\ /A /F
set /p replar=@%usar%jaguarcmd}Open file in any tree directory? Y/N

if %replar% EQU Y goto opanfyle1
if %replar% EQU y goto opanfyle1
if %replar% EQU N goto CLIUS
if %replar% EQU n goto CLIUS
goto CLIUS


:opanfyle1
cd %SYSTEMDRIVE%\JasonJaguarFileSystem\
set /p poan=@%usar%jaguarcmd}Directory name?

if exist %poan% goto tarballs1
if not exist %poan% goto insalad1


:tarballs1
cd %SYSTEMDRIVE%\JasonJaguarFileSystem\%poan%

set /p poan2=@%usar%jaguarcmd}File? (Press 0 to return to File Tree and Browser)

if %poan2% == 0 goto fyletree
if exist %poan2% goto fylevew1
if not exist %poan2% goto insalad2


:fylevew1
echo.===================================
echo %poan2%, found in %poan% directory.
echo.===================================
echo.
echo.====================================
type %poan2%
echo.====================================
echo.
CHOICE /C 1 /N /M "@%usar%jaguarcmd}Press "1" to return to the FileSystem."

IF %ERRORLEVEL% EQU 1 goto fyletree
goto fyletree


:insalad1
echo @%usar%jaguarcmd}Invalid or insufficient file path.
goto opanfyle1

:insalad2
echo @%usar%jaguarcmd}Invalid or insufficient file name.
goto tarballs1




:clk
time /t
date /t
goto CLIUS


:sizel
dir %SYSTEMDRIVE%\JasonJaguarFileSystem\ /s
pause
goto CLIUS


:ceeelless
cls
goto CLIUS



:filesys
cls
color 0a
TREE %SYSTEMDRIVE%\JasonJaguarFileSystem\ /A /F
set /p replar=@%usar%jaguarcmd}Open file in any tree directory? Y/N

if %replar% EQU Y goto opanfyle2
if %replar% EQU y goto opanfyle2
if %replar% EQU N goto GUI
if %replar% EQU n goto GUI
goto GUI


:opanfyle2
cd %SYSTEMDRIVE%\JasonJaguarFileSystem\
set /p poan=@%usar%jaguarcmd}Directory name?

if exist %poan% goto tarballs2
if not exist %poan% goto insalad3


:tarballs2
cd %SYSTEMDRIVE%\JasonJaguarFileSystem\%poan%

set /p poan2=@%usar%jaguarcmd}File? (Press 0 to return to File Tree and Browser)

if %poan2% == 0 goto filesys
if exist %poan2% goto fylevew4
if not exist %poan2% goto insalad4


:fylevew4
echo.===================================
echo %poan2%, found in %poan% directory.
echo.===================================
echo.
echo.====================================
type %poan2%
echo.====================================
echo.
CHOICE /C 1 /N /M "@%usar%jaguarcmd}Press "1" to return to the FileSystem."

IF %ERRORLEVEL% EQU 1 goto filesys
goto filesys


:insalad3
echo @%usar%jaguarcmd}Invalid or insufficient file path.
goto opanfyle2

:insalad4
echo @%usar%jaguarcmd}Invalid or insufficient file name.
goto tarballs2




:apprun
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Would you like to run software 9 18 0 3
rem PrintColorAt from an external drive? 11 20 0 11
rem PrintColorAt *Yes* 13 24 0 3
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto multifinder
if %result%==4 goto soffy
if %result%==5 goto APPDRIVELSMALL
if %result%==0 goto CLI




:soffy
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\app.bat goto soffycorrect
if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\app.bat goto soffyincorrect

:soffyincorrect
cls
rem PrintCenter Sorry, no external software detected as written. :( You will now return to the GUI. 15 0 9
pause
goto GUI


:soffycorrect
cls
rem PrintCenter Installing external software for booting... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

rem ClearColor
rem Locate 30 1
rem PrintCenter Your JaguarOS external software is installed! 23 0 9
pause
rem PrintCenter Your OS will now boot into the program until it is terminated. 26 0 9
pause
cd %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)
cls
color 0a
call app.bat
cls
echo The external program has terminated. You will now return to the GUI
pause
goto gui





:rinset
set /p snuinst=Are you sure you want to reinstall JaguarOS 2.5 Public Release and 1.8 FileSystem? Y/N?
if %result%==y goto yestal3
if %result%==Y goto yestal3
if %result%==n goto CLIUS
if %result%==N goto CLIUS

:yestal3
goto yestal




:lega
set taskID=Stor
set flagID=lega
set specID=OnlineStorSpec
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - - Game Store Downloader{/} 6 20 0 9
rem PrintColorAt -_*Online Downloader*_- 7 26 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt *_'Games in order of upload'_* 9 22 15 1
rem PrintColorAt -The Oregon Trail: Jaguar Version- 11 20 0 9
rem PrintColorAt *==/* 13 50 0 3
rem PrintColorAt *\==* 13 19 0 3
rem PrintColorAt *Download* 13 32 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %specID% 1 41 0 9
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 17,6,19,6 63,1,66,1 32,13,41,13 50,13,54,13 1,17,120,30 41,1,54,1 get  
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto multifinder
if %result%==4 goto dowanloader
if %result%==5 goto nextigame
if %result%==6 goto snui
if %result%==7 goto storespec
if %result%==0 goto CLI



:storespec
rem Locate 25 1
rem ShadeBoxAt 2 42 4 16 4
rem PrintColorAt { 2 41 15 1
rem PrintColorAt { 3 41 15 1
rem PrintColorAt { 4 41 15 1
rem PrintColorAt { 5 41 15 1
rem PrintColorAt - 6 41 15 1
rem PrintColorAt - 6 42 15 1
rem PrintColorAt - 6 43 15 1
rem PrintColorAt - 6 44 15 1
rem PrintColorAt - 6 45 15 1
rem PrintColorAt - 6 46 15 1
rem PrintColorAt - 6 47 15 1
rem PrintColorAt - 6 48 15 1
rem PrintColorAt - 6 49 15 1
rem PrintColorAt - 6 50 15 1
rem PrintColorAt - 6 51 15 1
rem PrintColorAt - 6 52 15 1
rem PrintColorAt - 6 53 15 1
rem PrintColorAt - 6 54 15 1
rem PrintColorAt - 6 55 15 1
rem PrintColorAt - 6 56 15 1
rem PrintColorAt - 6 57 15 1
rem PrintColorAt - 6 58 15 1
rem PrintColorAt } 2 58 15 1
rem PrintColorAt } 3 58 15 1
rem PrintColorAt } 4 58 15 1
rem PrintColorAt } 5 58 15 1
rem PrintColorAt } 6 58 15 1
rem PrintColorAt - 6 58 15 1
rem ShadeBoxAt 7 42 1 17 1
rem ShadeBoxAt 3 59 5 1 1
rem PrintColorAt About Store 3 43 0 3
rem PrintColorAt Software 5 43 0 11
rem MouseCMD 2,1,5,1 41,1,54,1 63,1,66,1 1,14,120,30 2,1,5,1 17,6,19,6 43,3,55,3 43,5,51,5 get

if %result%==1 goto snui
if %result%==2 goto lega
if %result%==3 goto multifinder
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto storesabout
if %result%==8 goto lega
if %result%==0 goto CLI



:storesabout
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JaguarOS Online Store, Version 1.2 8 19 15 1
rem PrintColorAt A place to download games and software 9 18 0 9
rem PrintColorAt {@@} 11 34 0 3
rem PrintColorAt (C) Jason Jaguar Inc. 2025 13 23 0 11
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 41,1,54,1 63,1,66,1 1,14,120,30 17,6,19,6 get
if %result%==1 goto snui
if %result%==2 goto storespec
if %result%==3 goto multifinder
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==0 goto CLI



:dowanloader
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - - Game Store Downloader{/} 6 20 0 9
rem PrintColorAt -_*Online Downloader*_- 7 26 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Would you like to download 9 23 0 3
rem PrintColorAt The Oregon Trail? 11 27 0 11
rem PrintColorAt *Yes* 13 24 0 3
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 41,1,54,1 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto puttinggame
if %result%==6 goto lega
if %result%==7 goto storespec
if %result%==0 goto CLI



:puttinggame
cls
set "URL=https://github.com/jasonjaguarinc/JaguarGAMES/releases/download/OregonTrail/APP.bat"
set "TARGET_DIR=%SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\"

curl -L -s -o "%TARGET_DIR%APP.bat" "%URL%"
rem PrintCenter Downloading the Oregon Trail: Batch Version... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\APP.bat goto gamesoftincorrect
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\APP.bat goto gamesoftcorrect


:gamesoftcorrect
rem ClearColor
rem Locate 30 1
rem PrintCenter Your software has downloaded successfully off the internet! 23 0 9
pause
rem PrintCenter It's saved in your App(B) Drive, able to be run from the JaguarOS PathFinder. 26 0 9
pause
goto GUI


:gamesoftincorrect
cls
rem PrintCenter Sorry, unable to download software at the moment. :( You will now return to the GUI. 15 0 9
pause
goto GUI




:nextigame
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - - Game Store Downloader{/} 6 20 0 9
rem PrintColorAt -_*Online Downloader*_- 7 26 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt *_'Games in order of upload'_* 9 22 15 1
rem PrintColorAt -Poketrion Force: Demo- 11 25 0 9
rem PrintColorAt *==/* 13 50 0 3
rem PrintColorAt *\==* 13 19 0 3
rem PrintColorAt *Download* 13 32 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 17,6,19,6 63,1,66,1 19,13,23,13 1,17,120,30 32,13,41,13 41,1,54,1 get  
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto multifinder
if %result%==4 goto lega
if %result%==5 goto snui
if %result%==6 goto dowanloader2
if %result%==7 goto storespec
if %result%==0 goto CLI


:dowanloader2
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - - Game Store Downloader{/} 6 20 0 9
rem PrintColorAt -_*Online Downloader*_- 7 26 0 3
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt Would you like to download 9 23 0 3
rem PrintColorAt Poketrion Force: Demo? 11 24 0 11
rem PrintColorAt *Yes* 13 24 0 3
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 41,1,54,1 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto puttinggame2
if %result%==6 goto lega
if %result%==7 goto storespec
if %result%==0 goto CLI



:puttinggame2
cls
set "URL=https://github.com/jasonjaguarinc/JaguarGAMES/releases/download/PoketrionForce/APP.bat"
set "TARGET_DIR=%SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\"

curl -L -s -o "%TARGET_DIR%APP.bat" "%URL%"
rem PrintCenter Downloading Poketrion Force: Demo... 21 0 9
rem CenterSelf
set FGcol=10
rem ChangeColor %FGcol% 0
rem PrintBoxAt 15 51 3 20 2
rem ChangeColor 0 %FGcol%

rem Wait 50
REM COPY FILES HERE

rem ShadeBoxAt 16 52 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 54 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 56 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 58 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 60 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 62 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 64 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 66 1 2 8

rem Wait 50
REM COPY MORE FILES HERE

rem ShadeBoxAt 16 68 1 2 8

if not exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\APP.bat goto gamesoftincorrect2
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\App(B)\APP.bat goto gamesoftcorrect2


:gamesoftcorrect2
rem ClearColor
rem Locate 30 1
rem PrintCenter Your software has downloaded successfully off the internet! 23 0 9
pause
rem PrintCenter It's saved in your App(B) Drive, able to be run from the JaguarOS PathFinder. 26 0 9
pause
goto GUI


:gamesoftincorrect2
cls
rem PrintCenter Sorry, unable to download software at the moment. :( You will now return to the GUI. 15 0 9
pause
goto GUI



:test2
cls
goto gui

:test3
cls
goto gui




:calcspec
rem Locate 25 1
rem ShadeBoxAt 2 42 4 16 4
rem PrintColorAt { 2 41 15 1
rem PrintColorAt { 3 41 15 1
rem PrintColorAt { 4 41 15 1
rem PrintColorAt { 5 41 15 1
rem PrintColorAt - 6 41 15 1
rem PrintColorAt - 6 42 15 1
rem PrintColorAt - 6 43 15 1
rem PrintColorAt - 6 44 15 1
rem PrintColorAt - 6 45 15 1
rem PrintColorAt - 6 46 15 1
rem PrintColorAt - 6 47 15 1
rem PrintColorAt - 6 48 15 1
rem PrintColorAt - 6 49 15 1
rem PrintColorAt - 6 50 15 1
rem PrintColorAt - 6 51 15 1
rem PrintColorAt - 6 52 15 1
rem PrintColorAt - 6 53 15 1
rem PrintColorAt - 6 54 15 1
rem PrintColorAt - 6 55 15 1
rem PrintColorAt - 6 56 15 1
rem PrintColorAt - 6 57 15 1
rem PrintColorAt - 6 58 15 1
rem PrintColorAt } 2 58 15 1
rem PrintColorAt } 3 58 15 1
rem PrintColorAt } 4 58 15 1
rem PrintColorAt } 5 58 15 1
rem PrintColorAt } 6 58 15 1
rem PrintColorAt - 6 58 15 1
rem ShadeBoxAt 7 42 1 17 1
rem ShadeBoxAt 3 59 5 1 1
rem PrintColorAt About Calc 3 44 0 3
rem PrintColorAt Reset Calc 5 44 0 11
rem MouseCMD 2,1,5,1 41,1,54,1 44,3,53,3 63,1,66,1 1,14,120,30 2,1,5,1 17,6,19,6 44,5,53,5 get

if %result%==1 goto snui
if %result%==2 goto calcu
if %result%==3 goto calcusabout
if %result%==4 goto multifinder
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto snui
if %result%==8 goto calcu
if %result%==0 goto CLI


:calcusabout
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS -- FileSystem Version 1.8{/} 6 20 0 9
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem PrintColorAt JaguarOS Calculator, Version 1.5 8 19 15 1
rem PrintColorAt A simple single digit calculator 9 19 0 9
rem PrintColorAt {@@} 11 34 0 3
rem PrintColorAt (C) Jason Jaguar Inc. 2025 13 23 0 11
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 41,1,54,1 63,1,66,1 1,14,120,30 17,6,19,6 get
if %result%==1 goto snui
if %result%==2 goto calcspec
if %result%==3 goto multifinder
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==0 goto CLI






:calcu
if exist %SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt goto mahincalc

:mahincalc
set taskID=Calc
set flagID=calcu
set specID=CalculatorSpec
echo.:>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
echo.:>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
echo.:>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
rem ShadeBoxAt 2 41 5 19 2
rem ShadeBoxAt 7 58 1 2 2
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt .1. 7 19 15 1
rem PrintColorAt .2. 9 19 0 9
rem PrintColorAt .3. 11 19 0 3
rem PrintColorAt .4. 13 19 0 11 
rem PrintColorAt .5. 7 23 15 1
rem PrintColorAt .6. 9 23 0 9
rem PrintColorAt .7. 11 23 0 3
rem PrintColorAt .8. 13 23 0 11
rem PrintColorAt .9. 7 27 15 1
rem PrintColorAt ./. 13 31 0 11
rem PrintColorAt .+. 7 31 15 1
rem PrintColorAt .-. 9 31 0 9
rem PrintColorAt .*. 11 31 0 3
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt JaguarOS - 2.5 Desktop Environment{/} 6 20 0 9                 
rem PrintColorAt { 7 17 0 8
rem PrintColorAt { 8 17 0 8
rem PrintColorAt { 9 17 0 8
rem PrintColorAt { 10 17 0 8
rem PrintColorAt { 11 17 0 8
rem PrintColorAt { 12 17 0 8
rem PrintColorAt { 13 17 0 8
rem PrintColorAt { 14 17 0 8
rem PrintColorAt { 15 17 0 8
rem PrintColorAt - 15 18 0 8
rem PrintColorAt - 15 19 0 8
rem PrintColorAt - 15 20 0 8
rem PrintColorAt - 15 21 0 8
rem PrintColorAt - 15 22 0 8
rem PrintColorAt - 15 23 0 8
rem PrintColorAt - 15 24 0 8
rem PrintColorAt - 15 25 0 8
rem PrintColorAt - 15 26 0 8
rem PrintColorAt - 15 27 0 8
rem PrintColorAt - 15 28 0 8
rem PrintColorAt - 15 29 0 8
rem PrintColorAt - 15 30 0 8
rem PrintColorAt - 15 31 0 8
rem PrintColorAt - 15 32 0 8
rem PrintColorAt - 15 33 0 8
rem PrintColorAt - 15 34 0 8
rem PrintColorAt - 15 35 0 8
rem PrintColorAt - 15 36 0 8
rem PrintColorAt - 15 37 0 8
rem PrintColorAt - 15 38 0 8
rem PrintColorAt - 15 39 0 8
rem PrintColorAt - 15 40 0 8
rem PrintColorAt - 15 41 0 8
rem PrintColorAt - 15 42 0 8
rem PrintColorAt - 15 43 0 8
rem PrintColorAt - 15 44 0 8
rem PrintColorAt - 15 45 0 8
rem PrintColorAt - 15 46 0 8
rem PrintColorAt - 15 47 0 8
rem PrintColorAt - 15 48 0 8
rem PrintColorAt - 15 49 0 8
rem PrintColorAt - 15 50 0 8
rem PrintColorAt - 15 51 0 8
rem PrintColorAt - 15 52 0 8
rem PrintColorAt - 15 53 0 8
rem PrintColorAt - 15 54 0 8
rem PrintColorAt - 15 55 0 8
rem PrintColorAt - 15 56 0 8
rem PrintColorAt } 7 56 0 8
rem PrintColorAt } 8 56 0 8
rem PrintColorAt } 9 56 0 8
rem PrintColorAt } 10 56 0 8
rem PrintColorAt } 11 56 0 8
rem PrintColorAt } 12 56 0 8
rem PrintColorAt } 13 56 0 8
rem PrintColorAt } 14 56 0 8
rem PrintColorAt } 15 56 0 8
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt : 7 36 0 0
rem PrintColorAt : 8 36 0 0
rem PrintColorAt : 9 36 0 0
rem PrintColorAt : 10 36 0 0
rem PrintColorAt : 11 36 0 0
rem PrintColorAt : 12 36 0 0
rem PrintColorAt : 13 36 0 0
rem PrintColorAt : 14 36 0 0
rem PrintColorAt %specID% 1 41 0 9
rem PrintColorAt %taskID% 1 63 15 1
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
if %result%==LEQ 9 goto gyolf
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI
echo:%result%>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt

:gotogyolf
goto gyolf


:snucalc
rem ShadeBoxAt 7 37 7 19 4
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
if %result%==LEQ 9 goto gyolf
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI
echo:%result%>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt


:gyolf
rem printColorAt %result% 8 38 15 1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem MouseCMD 31,7,33,7 31,9,33,9 31,11,33,11 31,13,33,13 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
if %result%==1 goto plush
if %result%==2 goto siubtract
if %result%==3 goto myultiply
if %result%==4 goto divdied
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto snui
if %result%==8 goto multifinder
if %result%==9 goto calcspec
if %result%==0 goto CLI

:plush
echo:+>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p mathinput=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
rem PrintColorAt %answer1% 8 38 15 1
rem PrintColorAt %mathinput% 8 42 15 1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
echo:%result%>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
if %result%==LEQ 9 goto ahnsar1
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI

:ahnsar1
set /p mathinput=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
set /p answer2=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
goto addcommand

:siubtract
echo:->%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p mathinput=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
rem PrintColorAt %answer1% 8 38 15 1
rem PrintColorAt %mathinput% 8 42 15 1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
echo:%result%>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
if %result%==LEQ 9 goto ahnsar2
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI 

:ahnsar2
set /p mathinput=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
set /p answer2=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
goto subtractcommand

:myultiply
echo:*>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p mathinput=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
rem PrintColorAt %answer1% 8 38 15 1
rem PrintColorAt %mathinput% 8 42 15 1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
echo:%result%>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
if %result%==LEQ 9 goto ahnsar3
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui 
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI

:ahnsar3
set /p mathinput=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
set /p answer2=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
goto multiplycommand

:divdied
echo:/>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p mathinput=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
rem PrintColorAt %answer1% 8 38 15 1
rem PrintColorAt %mathinput% 8 42 15 1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
echo:%result%>%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
if %result%==LEQ 9 goto ahnsar4
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui 
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI

:ahnsar4
set /p mathinput=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
set /p answer2=<%SYSTEMDRIVE%\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
goto dividecommand

:addcommand
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem Add %answer1% %answer2%
rem PrintColorAt %answer2% 8 46 15 1
rem PrintColorAt your answer is: 10 38 0 9
rem PrintColorAt %result% 12 38 0 3
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
if %result%==LEQ 9 goto gyobah4
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI

:gyobah4
goto snucalc

:subtractcommand
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem Subtract %answer1% %answer2%
rem PrintColorAt %answer2% 8 46 15 1
rem PrintColorAt your answer is: 10 38 0 9
rem PrintColorAt %result% 12 38 0 3
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
if %result%==LEQ 9 goto gyobah3
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI

:gyobah3
goto snucalc

:multiplycommand
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem Multiply %answer1% %answer2%
rem PrintColorAt %answer2% 8 46 15 1
rem PrintColorAt your answer is: 10 38 0 9
rem PrintColorAt %result% 12 38 0 3
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
if %result%==LEQ 9 goto gyobah2
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI

:gyobah2
goto snucalc

:dividecommand
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem Divide %answer1% %answer2%
rem PrintColorAt %answer2% 8 46 15 1
rem PrintColorAt your answer is: 10 38 0 9
rem PrintColorAt %result% 12 38 0 3
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
if %result%==LEQ 9 goto gyobah
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI

:gyobah
goto snucalc




:preosinstaller
cls
color 0a
echo You don't seem to have "Advanced BAT to EXE Converter" installed, which allows JaguarOS to create its graphics and pointer functionality. The software will be installed automatically for ease of use. It may take a minute, be patient.
pause
setlocal
cd %USERPROFILE%\Desktop\
set "_rnd=AdvancedBatToExeConverterSetup"
curl -sL https://www.battoexeconverter.com/downloads/advbattoexeconverter.exe do curl -sL %%~a -o "%_rnd%.exe"
echo You now have the latest version of BAT to EXE Converter, which is saved to your Windows desktop as "%_rnd%.exe" :) 
pause
echo This tool is backbone upon which all the important graphical functions are made, so it's critical to normal operation, and otherwise everything would crash.
pause
echo I'll now give you a small tutorial to show you how to build the OS all by yourself, it takes maybe 2 or 3 minutes max. Write this down or take a picture of the steps.
pause
echo Open the converter, take the OS source code you just installed or downloaded, and the "File" button at the top to select the "Open" option.
pause
echo Alternatively, you can also use the keyboard shortcut of "Control + O" or drag the batch source code file right into the text environment right below the "Advanced Command Wizard".
pause
echo Wait for the source code to load, and once the text pops on screen you  know when it's done. There's a symbol right next to the play button on the bar below where you clicked "File". Click that.
pause
echo You can also use the keyboard shortcut "Control + B" to start building the source code.
pause
echo Once in the build menu, don't change a single setting and just click on the bottom option that says "Build EXE". Save this EXE anywhere you want, but make sure it's somewhere you can find it easily.
pause
echo Once in the "Save EXE file" menu dialog, you can set the name to anything you want but keeping it as I set it makes it feel more authentic to me.
pause
echo After pressing save, it will then build the EXE from my source code and check through all the commands I used to make them work properly with your computer.
pause
echo You'll know when it's done when the bottom status text says "EXE Saved" and you see the EXE with the name you just put for it in the directory you set for it to go (usually the desktop in most cases). 
pause
echo After this, you've successfully built JaguarOS :) Click it and run, the graphics should work now once it's in normal operation.
pause
echo That's it :) Now you can enjoy the software, thank you for reading (if you don't follow the directions for building, you'll see these messages again. Open this BAT file again and take note of the directions if you need to).|| (
    echo(No source code found in the release assets. Exiting.
    >nul 2>&1 timeout /t 03 /nobreak 
    exit /b 1 
)
pause
exit




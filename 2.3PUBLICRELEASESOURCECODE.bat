@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\Snu 2.1\Downloads\Jason Jaguar 2.x Upgrade Versions\Jason Jaguar Operating System 2.3 ZDOS BACKUP MultiFile Operating System.exe
REM BFCPEICON=
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=2.3.0.0
REM BFCPEVERPRODUCT=Jason Jaguar OS 2.3 MultiFile OS
REM BFCPEVERDESC=The world's most advanced batch OS!
REM BFCPEVERCOMPANY=Jason Jaguar Inc. 
REM BFCPEVERCOPYRIGHT=Jason Jaguar Inc. Labs 1983 (C)
REM BFCPEWINDOWCENTER=1
REM BFCPEDISABLEQE=0
REM BFCPEWINDOWHEIGHT=30
REM BFCPEWINDOWWIDTH=120
REM BFCPEWTITLE=Jason Jaguar 2.3 GUI MultiFile System
REM BFCPEOPTIONEND
@echo off

setlocal EnableDelayedExpansion

set taskID=""
set flagID=""

if exist C:\JasonJaguarFileSystem\MainStorage(A) goto biosboot
if not exist C:\JasonJaguarFileSystem\MainStorage(A) goto JDOSBOOT


:JDOSBOOT
if exist C:\JaguarSetup\jaguarautorun.txt goto dosboot
if not exist C:\JaguarSetup\jaguarautorun.txt goto dbootfalse


:dbootfalse
mkdir C:\JaguarSetup
goto dosboot


:dosboot
cls
color 0a
echo.
echo.
echo JaguarDOS Boot, Ver. 2.3
echo (C) Copyright Jason Jaguar Inc, 2024
echo.
set /p DOO=C:\

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
set /p DOO=C:\

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
echo INS     Starts up the installation booting processes for Jason Jaguar 2.3 GUI OS and FileSystem.
echo CLK     Shows the date and time.
echo SZE     Declares the size of all directories and files contained on the FileSystem.
echo SET     Primes and sets the A: and B: drives for installation.
echo DEL     Deletes the C:\JaguarSetup directory and redirects to first boot.
echo ERR     Tests the error-throwing system for JaguarDOS.
echo CLS     Clears the Command Terminal menu.
goto dosboit



:deeleet
rmdir /S /Q  C:\JaguarSetup
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
if exist C:\JaguarSetup\jaguarautorun.txt goto setultrue
if not exist C:\JaguarSetup\jaguarautorun.txt goto setulfalse


:setultrue
echo Setup Booter Drive previously initialized.
goto dosboit

:setulfalse
echo Creating Setup Booter Drive...
echo "}KEYBOARD = TRUE /: MOUSE = TRUE /: BOOTJDOS = TRUE $%/. Argument 37692[KERNEL UNLOCK] a:JJFS b:JJFS 98^97765 P{ }CHRSET LODR: $:>^@%234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./{  }calexe.mtp %HDPS_INIT% %SINGULARITY_CORE_ENGAGE% %QEN_CALIBRATE% %RDF_ACTIVATE%:: set HDPS_INIT=1234567890{  " > C:\JaguarSetup\jaguarautorun.txt
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
if exist C:\JaguarSetup\jaguarautorun.txt goto instarttrue
if not exist C:\JaguarSetup\jaguarautorun.txt goto instartfalse


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
echo Jason Jaguar OS 2.3 Kernel loaded and booted. Setup will now restart into JJFileSystem 1.6 BIOS.
pause
goto biosboot




:JBOOTDOSAFTER
cls
color 0a
echo.
echo.
echo JaguarDOS Boot, Ver. 2.3
echo (C) Copyright Jason Jaguar Inc, 2024
echo.
set /p DOO=C:\

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
set /p DOO=C:\

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
echo INS     Boots into an installed copy of Jason Jaguar 2.3 GUI OS.
echo DOS     Boots into an installed copy of JaguarDOS 2.3.
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
if exist C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass goto cheloice
if not exist C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass goto create1

:create1
mkdir C:\JasonJaguarFileSystem
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
if exist C:\JasonJaguarFileSystem\MainStorage(A) goto mainstoragecheck2
if not exist C:\JasonJaguarFileSystem\MainStorage(A) goto create2



:create2
mkdir C:\JasonJaguarFileSystem\App(B)
mkdir C:\JasonJaguarFileSystem\MainStorage(A)
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
if exist C:\JasonJaguarFileSystem\MainStorage(A)\Documents goto mainstoragecheck3
if not exist C:\JasonJaguarFileSystem\MainStorage(A)\Documents goto create3




:create3
mkdir C:\JasonJaguarFileSystem\MainStorage(A)\Documents
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
if exist C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData goto mainstoragecheck4
if not exist C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData goto create4




:create4
mkdir C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData
mkdir C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass
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
rem PrintCenter Jason Jaguar 9 0 9
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
rem PrintCenter 2.3 OPERATING GUI 24 0 3
pause
goto madepass

:madepass
cls
if exist C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt goto loadingsys
if not exist C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt goto firsttime


:firsttime
rem PaintScreen 1
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt Jason Jaguar - 2.3 GUI Environment{/} 6 20 0 9
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
rem PrintColorAt Welcome to Jason Jaguar 2.3 :) 9 19 15 1
rem PrintColorAt Input your username: 12 19 15 1
rem PrintColorAt { 13 19 0 9
rem GetInput
echo %result%>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
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
set /p usar=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
rem PrintCenter Great, welcome %usar%. Enjoy Jason Jaguar 2.3 :) 15 15 0
echo.
pause
set taskID=""
set flagID=""
set wordID=""
goto loadingsys




rem WHEN MAKING VARIABLES, NO UPPERCASE, WHEN MAKING EQUALS FOR OPTION, NO SPACES
:loadingsys
cls
set /p usar=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
rem PrintCenter Loading Jason Jaguar 2.3 GUI Environment... 21 0 9
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
set /p usar=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
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
title Jason Jaguar 2.3 GUI
cls
set flagID=snui
rem PaintScreen 15
rem ShadeBoxAt 3 1 27 120 2
rem ShadeBoxAt 1 33 2 87 1
rem ShadeBoxAt 2 34 1 87 2
rem ShadeBoxAt 2 1 1 87 1
rem Locate 25 1
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 14 27 1 69 1
rem ShadeBoxAt 13 95 1 1 1
rem PrintColorAt Jason Jaguar 2.3 Public Ver. 1 88 0 9
rem PrintColorAt .X. 1 117 15 12
rem PrintColorAt Welcome, %usar%. :) 29 1 0 3
rem PrintColorAt {@@} 1 2 0 9
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem rem WIDTH THEN HEIGHT FOR COORDINATES THOUGH
rem PrintColorAt *Bubbles 1 8 0 9
rem PrintColorAt Legacy 1 18 0 9
rem PrintColorAt Folder System 1 26 0 9
rem PrintColorAt Reload Desktop 1 41 0 9
rem PrintColorAt %hour%:%minute% %ampm%, %mydate% 29 100 0 3
rem PrintColorAt File 1 63 15 1
rem MouseCMD 2,1,5,1 8,1,15,1 18,1,23,1 26,1,38,1 41,1,54,1 63,1,66,1 117,1,119,1 get

if %result%==1 goto test
if %result%==2 goto bubbles
if %result%==3 goto lega
if %result%==4 goto FileSystem
if %result%==5 goto test3
if %result%==6 goto multifinder
if %result%==7 goto ENDJAGGUI
if %result%==0 goto CLI




:ENDJAGGUI
set taskID=JEnd
set flagID=ENDJAGGUI
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt Jason Jaguar - 2.3 GUI Environment{/} 6 20 0 9
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
rem PrintColorAt This will end your OS 2.3 GUI session. 10 18 0 3
rem PrintColorAt *Yes* 13 24 0 9
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
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
goto bigwaiter

:bigwaiter
cls
ping Localhost -n 2 >nul
goto JBOOTDOSAFTER




:snui
set flagID=snui
set taskID=""
rem ShadeBoxAt 3 1 27 120 2
rem ShadeBoxAt 1 33 2 87 1
rem ShadeBoxAt 2 34 1 87 2
rem ShadeBoxAt 2 1 1 87 1
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 14 27 1 69 1
rem ShadeBoxAt 13 95 1 1 1
rem PrintColorAt *Bubbles 1 8 0 9 
rem PrintColorAt Legacy 1 18 0 9
rem PrintColorAt Folder System 1 26 0 9
rem PrintColorAt Reload Desktop 1 41 0 9
rem PrintColorAt Jason Jaguar 2.3 Public Ver. 1 88 0 9
rem PrintColorAt .X. 1 117 15 12
rem PrintColorAt Welcome, %usar%. :) 29 1 0 3
rem PrintColorAt %hour%:%minute% %ampm%, %mydate% 29 100 0 3
rem PrintColorAt File 1 63 15 1
rem MouseCMD 2,1,5,1 8,1,15,1 18,1,23,1 26,1,38,1 41,1,54,1 63,1,66,1 117,1,119,1 get

if %result%==1 goto test
if %result%==2 goto bubbles
if %result%==3 goto lega
if %result%==4 goto FileSystem
if %result%==5 goto test3
if %result%==6 goto multifinder
if %result%==7 goto ENDJAGGUI
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
rem MouseCMD 2,1,5,1 8,1,15,1 18,1,23,1 26,1,38,1 41,1,54,1 63,1,66,1 117,1,119,1 get

if %result%==1 goto test
if %result%==2 goto bubbles
if %result%==3 goto lega
if %result%==4 goto FileSystem
if %result%==5 goto test3
if %result%==6 goto multifinder
if %result%==7 goto ENDJAGGUI
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
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt Jason Jaguar -- Bubble Popper Game{/} 6 20 0 9
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
rem PrintColorAt Reset Bubbles 3 43 0 3
rem MouseCMD 2,1,5,1 41,1,54,1 43,3,55,3 63,1,66,1 1,14,120,30 2,1,5,1 17,6,19,6 get

if %result%==1 goto snui
if %result%==2 goto bubbles
if %result%==3 goto bubbles
if %result%==4 goto multifinder
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto snui
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
rem PrintColorAt Sysinfo 3 3 15 1
rem PrintColorAt About 5 3 0 9
rem PrintColorAt Date 7 3 0 3
rem PrintColorAt Spec 9 3 0 11
rem PrintColorAt Backup 11 3 15 5
rem PrintColorAt File 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 3,3,9,3 3,5,7,5 3,7,6,7 3,9,6,9 1,14,120,30 2,1,5,1 63,1,66,1 3,11,8,11 get
if %result%==1 goto info
if %result%==2 goto about
if %result%==3 goto dateus
if %result%==4 goto spec
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto fsysbackup
if %result%==0 goto CLI




:fsysbackup
set taskID=Bkup
set flagID=fsysbackup
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt Jason Jaguar - 2.3 GUI Environment{/} 6 20 0 9
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
rem PrintColorAt Are you sure you want to backup 8 19 15 1
rem PrintColorAt Your Jason Jaguar FileSystem? 10 19 15 1
rem PrintColorAt *Yes* 13 24 15 12
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto jaguarbacklup
if %result%==6 goto snui
if %result%==0 goto CLI






:jaguarbacklup
xcopy C:\JasonJaguarFileSystem C:\JasonJaguarFileSystemBackup /E /H /C /I
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
rem PrintCenter Your FileSystem is now backed up in the C: Drive in case you lose your files. 26 0 9
pause
goto gui







:info
cls
echo.================================
echo     Jason Jaguar__OS_2.3__GUI
echo.================================
wmic computersystem get manufacturer,model,name >C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic cpu get name,numberofcores >>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic bios get manufacturer,serialnumber,smbiosbiosversion >>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic memorychip where "devicelocator != 'SYSTEM ROM'" get capacity,devicelocator,manufacturer,partnumber >>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
ECHO OS: Jason Jaguar 2.3 Graphical User Shell >>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic diskdrive get index,firmwarerevision,model,size >>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic logicaldisk get description,deviceid,freespace,size,volumename >>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic NIC where "physicaladapter=TRUE" get MACAddress,ProductName | findstr /v /C:"Virtual" >>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
wmic nicconfig where ipenabled="TRUE" get description,macaddress,ipaddress,dhcpleaseobtained >>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
echo.=====================================
echo     @Copyright Jason Jaguar.inc, 2024
echo.=====================================
echo.
echo System specs are now captured. Be sure to check your 'OtherUserData' folder in 'MainStorage(A)' to find the full output. 
echo If you'd like to see the specs on the OS itself, check the Command Terminal by using the "SYS" command.
PAUSE
goto gui



:about
set taskID=Abot
set flagID=about
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt Jason Jaguar - 2.3 GUI Environment{/} 6 20 0 9
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
rem PrintColorAt Jason Jaguar OS 2.3 9 19 15 1
rem PrintColorAt Public Release Version 11 21 0 9
rem PrintColorAt (C) Jason Jaguar Inc. 2024 13 23 0 3
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==0 goto CLI


:dateus
set taskID=Date
set flagID=dateus
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt Jason Jaguar - 2.3 GUI Environment{/} 6 20 0 9
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
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
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
rem PrintColorAt Appinst 16 10 0 11
rem PrintColorAt Reinst 18 10 15 5
rem ShadeBoxAt 21 10 1 11 1
rem ShadeBoxAt 10 20 12 1 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 3,3,9,3 3,5,7,5 3,7,6,7 3,9,6,9 1,21,120,30 2,1,5,1 10,10,13,10 10,12,13,12 10,14,13,14 10,16,16,16 1,21,120,30 63,1,66,1 10,18,16,18 3,11,8,11 get
if %result%==1 goto info
if %result%==2 goto about
if %result%==3 goto dateus
if %result%==4 goto spec
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto calcu
if %result%==8 goto word
if %result%==9 goto CL
if %result%==10 goto apprun
if %result%==11 goto snui
if %result%==12 goto multifinder
if %result%==13 goto reinst
if %result%==14 goto fsysbackup
if %result%==0 goto CLI


:reinst
set taskID=Rein
set flagID=reinst
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt Jason Jaguar - 2.3 GUI Environment{/} 6 20 0 9
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
rem PrintColorAt Are you sure you want to reinstall 8 19 15 1
rem PrintColorAt Jason Jaguar 2.3 Public Release? 10 19 15 1
rem PrintColorAt *Yes* 13 24 15 12
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
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
rd /s /q C:\JasonJaguarFileSystem
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
set "output_file=C:\JasonJaguarFileSystem\MainStorage(A)\Documents\JAGUARWORD.txt"
goto go_back7
:go_back7
if not exist "%output_file%" (
  echo. > "%output_file%"
)

cls
echo Welcome to the Jason Jaguar (tm) Inc. Office Word Processor :)
echo Type all your text here, and it will be saved in the Jaguar DFS (Disk File System)
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
echo JaguarDOS, Ver. 2.3 Command Line Interface
echo (C) Copyright Jason Jaguar Inc, 2024
echo.
set /p CMD=@%usar%jaguarcmd}
  
if %CMD%==help goto helpcmd
if %CMD%==? goto helpcmd
if %CMD%==HELP goto helpcmd
if %CMD%==RET goto biosboot
if %CMD%==ret goto biosboot
if %CMD%==GUI goto gui
if %CMD%==gui goto gui
if %CMD%==JAG goto lega
if %CMD%==jag goto lega
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
if %CMD%==JAG goto lega
if %CMD%==jag goto lega
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
goto chkhelp


:helpcmd
echo RET     Directs the user to the main startup sequence for both new and returning users.
echo GUI     Returns the user to Graphical Shell for Jason Jaguar.
echo JAG     Directs the user to Jason Jaguar 1.2.9 for Legacy users.
echo ABT     Displays the user's Operating System and FileSystem versions.
echo SYS     Displays the system info for the computer.
echo WRD     Directs the user to the Jason Jaguar Word Processor.
echo DIR     Lets the user easily make directory folders.
echo REM     Lets the user easily remove folders if they know the name of the folder.
echo TRE     Opens the Terminal's file browser, including an in-depth directory tree for the FileSystem drives.
echo APP     Runs software from the external App(B) drive.
echo EXT     Exits Jason Jaguar 2.3.
echo CLK     Shows the date and time.
echo SZE     Displays the size of the FileSystem drives for Jason Jaguar.
echo CLC     Directs the user to the calculator.
echo ERR     Tests the error-throwing system for the CLI.
echo CLS     Clears the Command Terminal menu.
echo RNS     Reinstalls the Jason Jaguar 2.3 GUI OS and FileSystem.
echo DOS     Exits out of Jason Jaguar 2.3 GUI OS and FileSystem, and then reverts to the JaguarDOS Boot Version.
echo COD     Directs the user to the Code Builder, which allows them to write a full Jason Jaguar-compatible program within the terminal.
echo BCK     Creates a backup of the user's FileSystem on the C: Drive in the event of lost data.
goto CLIUS



:BACKKUPCMD
set /p backwup=@%usar%jaguarcmd} Are you sure you want to create a backup of your FileSystem? Y/N

if %backwup%==Y goto BACKALUP
if %backwup%==y goto BACKALUP
if %backwup%==N goto CLIUS
if %backwup%==n goto CLIUS


:BACKALUP
xcopy C:\JasonJaguarFileSystem C:\JasonJaguarFileSystemBackup /E /H /C /I
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
rem PrintCenter Your FileSystem is now backed up in the C: Drive in case you lose your files. 26 0 9
pause
goto CLIUS




:revertdos
set /p REVVERT=@%usar%jaguarcmd} This will end your OS 2.3 session. Y/N?

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
echo.
echo.
echo.
echo ________Calculator________
echo.
set /p expression= Enter expression to calculate:
set /a ans=%expression%
echo.
echo = %ans%
echo.
pause
cls

set /p option=Do you want to go back to the Jaguar DOS Command Terminal, Y/N?
if %option% == Y goto guiback
if %option% == N goto clialc

:guiback
cls
goto CLIUS


:infotus
cls
echo.=======================
echo     Jason Jaguar__OS_
echo.=======================
ECHO Machine:
wmic computersystem get manufacturer,model,name
ECHO CPU:
wmic cpu get name,numberofcores
ECHO BIOS:
wmic bios get manufacturer,serialnumber,smbiosbiosversion
ECHO RAM sticks:
wmic memorychip where "devicelocator != 'SYSTEM ROM'" get capacity,devicelocator,manufacturer,partnumber
ECHO OS: Jason Jaguar 2.3 Graphical User Shell
ECHO Physical drives:
wmic diskdrive get index,firmwarerevision,model,size
ECHO Logical drives:
wmic logicaldisk get description,deviceid,freespace,size,volumename
ECHO Physical network interface(s):
wmic NIC where "physicaladapter=TRUE" get MACAddress,ProductName | findstr /v /C:"Virtual"
ECHO Currently active network interfaces:
wmic nicconfig where ipenabled="TRUE" get description,macaddress,ipaddress,dhcpleaseobtained
echo.=======================================
echo     @Copyright Jason Jaguar.inc, 2024
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
set "output_file=C:\JasonJaguarFileSystem\App(B)\app.bat"
goto go_back1
:go_back1
if not exist "%output_file%" (
  echo. > "%output_file%"
)

cls
echo Welcome to the Jason Jaguar (tm) Inc. Code Builder :)
echo Write your Jason Jaguar-compatible code here, and it will be saved in the Jaguar DFS (Disk File System)'s App(B) drive to be later installed and run.
echo (Make sure not to make any typos, there is no delete function implemented which is very annoying)
echo.
echo @. Save and exit the Jason Jaguar CODE BUILDER
echo *. Change text color
echo #. Clear CODE BUILDER Writing Cache
echo:
echo       CODE BUILDER 1.2:
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
echo =================================================
echo OS: Jason Jaguar 2.3 Graphical Operating System
echo.=================================================
echo.
echo.=========================================
echo Jason Jaguar FileSystem (tm) Version: 1.6
echo.=========================================
goto CLIUS


:directory
cls
set /p fyle=@%usar%jaguarcmd}What would you like to name the directory folder?:

if "%fyle%"=="" (
  echo @%usar%jaguarcmd}Please enter a name and try again.
  pause
  goto directory
)

:create_folder

mkdir "C:\JasonJaguarFileSystem\MainStorage(A)\"%fyle%"
ping Localhost -n 2 >nul
echo Creating folder...
ping Localhost -n 2 >nul
echo Creating folder..
ping Localhost -n 2 >nul
cls
goto chalm

:chalm
if exist "C:\JasonJaguarFileSystem\MainStorage(A)\"%fyle%"" echo @%usar%jaguarcmd}Directory created successfully.
goto CLIUS
if not exist "C:\JasonJaguarFileSystem\MainStorage(A)\"%fyle%"" goto sadface

:sadface
cls
echo @%usar%jaguarcmd}Directory not found.
pause
goto directory


:remlove
cls
set /p fyler=What's the name of the folder you want to delete?:

if "%fyler%"=="" (
  echo Please enter a name and try again.
  pause
  goto remlove
)

:delete_folder

rmdir "C:\JasonJaguarFileSystem\MainStorage(A)\"%fyler%"
ping Localhost -n 2 >nul
echo Deleting folder...
ping Localhost -n 2 >nul
echo Deleting folder..
ping Localhost -n 2 >nul
cls
goto cyhalm

:cyhalm
if not exist "C:\JasonJaguarFileSystem\MainStorage(A)\"%fyler%"" echo Folder "%fyler%" deleted successfully!
goto CLIUS
if exist "C:\JasonJaguarFileSystem\MainStorage(A)\"%fyler%"" goto siadface

:siadface
cls
echo :( it didn't work
pause
goto remlove




:ext
exit





:FileSystem
set taskID="Path"
set flagID=FileSystem
set specID="PathFinderSpec"
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.6 6 20 0 9
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
rem PrintColorAt ( 11 23 0 9
rem PrintColorAt ) 11 32 0 9
rem PrintColorAt / 10 23 0 9
rem PrintColorAt - 10 24 0 9
rem PrintColorAt - 10 25 0 9
rem PrintColorAt - 10 26 0 9
rem PrintColorAt - 10 27 0 9
rem PrintColorAt - 10 28 0 9
rem PrintColorAt - 10 29 0 9
rem PrintColorAt - 10 30 0 9
rem PrintColorAt - 10 31 0 9
rem PrintColorAt \ 10 32 0 9
rem PrintColorAt \ 12 23 0 9
rem PrintColorAt - 12 24 0 9
rem PrintColorAt - 12 25 0 9
rem PrintColorAt - 12 26 0 9
rem PrintColorAt - 12 27 0 9
rem PrintColorAt - 12 28 0 9
rem PrintColorAt - 12 29 0 9
rem PrintColorAt - 12 30 0 9
rem PrintColorAt - 12 31 0 9
rem PrintColorAt / 12 32 0 9
rem PrintColorAt A: Drive 11 24 0 3

rem PrintColorAt ( 11 41 0 9
rem PrintColorAt ) 11 50 0 9
rem PrintColorAt / 10 41 0 9
rem PrintColorAt - 10 42 0 9
rem PrintColorAt - 10 43 0 9
rem PrintColorAt - 10 44 0 9
rem PrintColorAt - 10 45 0 9
rem PrintColorAt - 10 46 0 9
rem PrintColorAt - 10 47 0 9
rem PrintColorAt - 10 48 0 9
rem PrintColorAt - 10 49 0 9
rem PrintColorAt \ 10 50 0 9
rem PrintColorAt \ 12 41 0 9
rem PrintColorAt - 12 42 0 9
rem PrintColorAt - 12 43 0 9
rem PrintColorAt - 12 44 0 9
rem PrintColorAt - 12 45 0 9
rem PrintColorAt - 12 46 0 9
rem PrintColorAt - 12 47 0 9
rem PrintColorAt - 12 48 0 9
rem PrintColorAt - 12 49 0 9
rem PrintColorAt / 12 50 0 9
rem PrintColorAt B: Drive 11 42 0 3

rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %specID% 1 41 0 9
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 54,6,56,6 41,10,50,12 23,10,31,12 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto resizefile1
if %result%==2 goto smally1
if %result%==3 goto AYDRIVE
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
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
rem PrintColorAt A: Drive 3 44 0 3
rem PrintColorAt B: Drive 5 44 0 11
rem MouseCMD 2,1,5,1 41,1,54,1 44,3,51,3 44,5,51,5 63,1,66,1 1,14,120,30 17,6,19,6 get

if %result%==1 goto snui
if %result%==2 goto FileSystem
if %result%==3 goto AYDRIVE
if %result%==4 goto smally1
if %result%==5 goto multifinder
if %result%==6 goto snui
if %result%==7 goto snui
if %result%==0 goto CLI





:resizefile1
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt  features and menus. 13 77 0 9
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.6 PathFinder 6 20 0 9
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
rem PrintColorAt ( 11 23 0 9
rem PrintColorAt ) 11 32 0 9
rem PrintColorAt / 10 23 0 9
rem PrintColorAt - 10 24 0 9
rem PrintColorAt - 10 25 0 9
rem PrintColorAt - 10 26 0 9
rem PrintColorAt - 10 27 0 9
rem PrintColorAt - 10 28 0 9
rem PrintColorAt - 10 29 0 9
rem PrintColorAt - 10 30 0 9
rem PrintColorAt - 10 31 0 9
rem PrintColorAt \ 10 32 0 9
rem PrintColorAt \ 12 23 0 9
rem PrintColorAt - 12 24 0 9
rem PrintColorAt - 12 25 0 9
rem PrintColorAt - 12 26 0 9
rem PrintColorAt - 12 27 0 9
rem PrintColorAt - 12 28 0 9
rem PrintColorAt - 12 29 0 9
rem PrintColorAt - 12 30 0 9
rem PrintColorAt - 12 31 0 9
rem PrintColorAt / 12 32 0 9
rem PrintColorAt A: Drive 11 24 0 3

rem PrintColorAt ( 11 41 0 9
rem PrintColorAt ) 11 50 0 9
rem PrintColorAt / 10 41 0 9
rem PrintColorAt - 10 42 0 9
rem PrintColorAt - 10 43 0 9
rem PrintColorAt - 10 44 0 9
rem PrintColorAt - 10 45 0 9
rem PrintColorAt - 10 46 0 9
rem PrintColorAt - 10 47 0 9
rem PrintColorAt - 10 48 0 9
rem PrintColorAt - 10 49 0 9
rem PrintColorAt \ 10 50 0 9
rem PrintColorAt \ 12 41 0 9
rem PrintColorAt - 12 42 0 9
rem PrintColorAt - 12 43 0 9
rem PrintColorAt - 12 44 0 9
rem PrintColorAt - 12 45 0 9
rem PrintColorAt - 12 46 0 9
rem PrintColorAt - 12 47 0 9
rem PrintColorAt - 12 48 0 9
rem PrintColorAt - 12 49 0 9
rem PrintColorAt / 12 50 0 9
rem PrintColorAt B: Drive 11 42 0 3

rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem MouseCMD 72,6,74,6 23,10,32,12 41,10,50,12 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto FileSystem
if %result%==2 goto AYDRIVEBIG
if %result%==3 goto APPDRIVEBIG
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
if %result%==0 goto CLI



:APPDRIVEBIG
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt  features and menus. 13 77 0 9
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.6 PathFinder 6 20 0 9
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

rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem MouseCMD 19,7,21,7 72,6,74,6 23,10,31,12 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto resizefile1
if %result%==2 goto smally1
if %result%==3 goto apprun
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
if %result%==0 goto CLI


:smally1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.6 6 20 0 9
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

rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 19,7,21,7 54,6,56,6 23,10,31,12 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto FileSystem
if %result%==2 goto APPDRIVEBIG
if %result%==3 goto apprun
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
if %result%==0 goto CLI




:AYDRIVE
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.6 6 20 0 9
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
rem PrintColorAt ( 11 23 0 9
rem PrintColorAt ) 11 33 0 9
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
rem PrintColorAt \ 10 33 0 9
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
rem PrintColorAt / 12 33 0 9
rem PrintColorAt Documents 11 24 0 3

rem PrintColorAt ( 11 38 0 9
rem PrintColorAt ) 11 52 0 9
rem PrintColorAt / 10 38 0 9
rem PrintColorAt - 10 39 0 9
rem PrintColorAt - 10 40 0 9
rem PrintColorAt - 10 41 0 9
rem PrintColorAt - 10 42 0 9
rem PrintColorAt - 10 43 0 9
rem PrintColorAt - 10 44 0 9
rem PrintColorAt - 10 45 0 9
rem PrintColorAt - 10 46 0 9
rem PrintColorAt - 10 47 0 9
rem PrintColorAt - 10 48 0 9
rem PrintColorAt - 10 49 0 9
rem PrintColorAt - 10 50 0 9
rem PrintColorAt - 10 51 0 9
rem PrintColorAt \ 10 52 0 9
rem PrintColorAt \ 12 38 0 9
rem PrintColorAt - 12 39 0 9
rem PrintColorAt - 12 40 0 9
rem PrintColorAt - 12 41 0 9
rem PrintColorAt - 12 42 0 9
rem PrintColorAt - 12 43 0 9
rem PrintColorAt - 12 44 0 9
rem PrintColorAt - 12 45 0 9
rem PrintColorAt - 12 46 0 9
rem PrintColorAt - 12 47 0 9
rem PrintColorAt - 12 48 0 9
rem PrintColorAt - 12 49 0 9
rem PrintColorAt - 12 50 0 9
rem PrintColorAt - 12 51 0 9
rem PrintColorAt / 12 52 0 9
rem PrintColorAt OtherUserData 11 39 0 3

rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 54,6,56,6 19,7,21,7 23,10,33,12 38,10,52,12 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto AYDRIVEBIG
if %result%==2 goto FileSystem
if %result%==3 goto documuntsmall
if %result%==4 goto otherusersmall
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto snui
if %result%==8 goto multifinder
if %result%==9 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones




:AYDRIVEBIG
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt  features and menus. 13 77 0 9
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.6 PathFinder 6 20 0 9
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
rem PrintColorAt ( 11 23 0 9
rem PrintColorAt ) 11 33 0 9
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
rem PrintColorAt \ 10 33 0 9
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
rem PrintColorAt / 12 33 0 9
rem PrintColorAt Documents 11 24 0 3

rem PrintColorAt ( 11 38 0 9
rem PrintColorAt ) 11 52 0 9
rem PrintColorAt / 10 38 0 9
rem PrintColorAt - 10 39 0 9
rem PrintColorAt - 10 40 0 9
rem PrintColorAt - 10 41 0 9
rem PrintColorAt - 10 42 0 9
rem PrintColorAt - 10 43 0 9
rem PrintColorAt - 10 44 0 9
rem PrintColorAt - 10 45 0 9
rem PrintColorAt - 10 46 0 9
rem PrintColorAt - 10 47 0 9
rem PrintColorAt - 10 48 0 9
rem PrintColorAt - 10 49 0 9
rem PrintColorAt - 10 50 0 9
rem PrintColorAt - 10 51 0 9
rem PrintColorAt \ 10 52 0 9
rem PrintColorAt \ 12 38 0 9
rem PrintColorAt - 12 39 0 9
rem PrintColorAt - 12 40 0 9
rem PrintColorAt - 12 41 0 9
rem PrintColorAt - 12 42 0 9
rem PrintColorAt - 12 43 0 9
rem PrintColorAt - 12 44 0 9
rem PrintColorAt - 12 45 0 9
rem PrintColorAt - 12 46 0 9
rem PrintColorAt - 12 47 0 9
rem PrintColorAt - 12 48 0 9
rem PrintColorAt - 12 49 0 9
rem PrintColorAt - 12 50 0 9
rem PrintColorAt - 12 51 0 9
rem PrintColorAt / 12 52 0 9
rem PrintColorAt OtherUserData 11 39 0 3

rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 72,6,74,6 19,7,21,7 23,10,33,12 38,10,52,12 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto AYDRIVE
if %result%==2 goto resizefile1
if %result%==3 goto documuntbeeg
if %result%==4 goto otheruserbeeg
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto snui
if %result%==8 goto multifinder
if %result%==9 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones




:documuntbeeg
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt  features and menus. 13 77 0 9
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.6 PathFinder 6 20 0 9
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

rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem MouseCMD 19,7,21,7 72,6,74,6 23,10,38,12 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto AYDRIVEBIG
if %result%==2 goto documuntsmall
if %result%==3 goto jaguarwordread
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones


:documuntsmall
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.6 6 20 0 9
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

rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 19,7,21,7 54,6,56,6 23,10,38,12 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto AYDRIVE
if %result%==2 goto documuntbeeg
if %result%==3 goto jaguarwordread
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
if %result%==0 goto CLI


rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones






:otherusersmall
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.6 6 20 0 9
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
rem PrintColorAt ( 10 19 0 9
rem PrintColorAt ( 11 19 0 9
rem PrintColorAt ( 12 19 0 9
rem PrintColorAt ( 13 19 0 9
rem PrintColorAt ) 10 28 0 9
rem PrintColorAt ) 11 29 0 9
rem PrintColorAt ) 12 31 0 9
rem PrintColorAt ) 13 33 0 9
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
rem PrintColorAt - 14 32 0 9
rem PrintColorAt / 14 33 0 9
rem PrintColorAt mathinput.txt 13 20 0 11

rem PrintColorAt ( 12 38 0 9
rem PrintColorAt ) 12 47 0 9
rem PrintColorAt / 11 38 0 9
rem PrintColorAt - 11 39 0 9
rem PrintColorAt - 11 40 0 9
rem PrintColorAt - 11 41 0 9
rem PrintColorAt - 11 42 0 9
rem PrintColorAt - 11 43 0 9
rem PrintColorAt - 11 44 0 9
rem PrintColorAt - 11 45 0 9
rem PrintColorAt - 11 46 0 9
rem PrintColorAt \ 11 47 0 9
rem PrintColorAt \ 13 38 0 9
rem PrintColorAt - 13 39 0 9
rem PrintColorAt - 13 40 0 9
rem PrintColorAt - 13 41 0 9
rem PrintColorAt - 13 42 0 9
rem PrintColorAt - 13 43 0 9
rem PrintColorAt - 13 44 0 9
rem PrintColorAt - 13 45 0 9
rem PrintColorAt - 13 46 0 9
rem PrintColorAt / 13 47 0 9
rem PrintColorAt calc.txt 10 20 15 1


rem PrintColorAt calc2.txt 11 20 0 9


rem PrintColorAt UserPass 12 39 0 3


rem PrintColorAt sysinfo.txt 12 20 0 3

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
rem MouseCMD 20,10,27,10 20,11,28,11 20,12,30,12 20,13,32,13 39,12,46,12 19,7,21,7 54,6,56,6 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto calcread
if %result%==2 goto calc2read
if %result%==3 goto sysinforead
if %result%==4 goto mathinputread
if %result%==5 goto userpasssmall
if %result%==6 goto AYDRIVE
if %result%==7 goto otheruserbeeg
if %result%==8 goto snui
if %result%==9 goto snui
if %result%==10 goto snui
if %result%==11 goto multifinder
if %result%==12 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones

rem rem first four on these are answer questrion




:otheruserbeeg
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt  features and menus. 13 77 0 9
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.6 PathFinder 6 20 0 9
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
rem PrintColorAt ) 10 28 0 9
rem PrintColorAt ) 11 29 0 9
rem PrintColorAt ) 12 31 0 9
rem PrintColorAt ) 13 33 0 9
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
rem PrintColorAt - 14 32 0 9
rem PrintColorAt / 14 33 0 9
rem PrintColorAt mathinput.txt 13 20 0 11

rem PrintColorAt ( 12 38 0 9
rem PrintColorAt ) 12 47 0 9
rem PrintColorAt / 11 38 0 9
rem PrintColorAt - 11 39 0 9
rem PrintColorAt - 11 40 0 9
rem PrintColorAt - 11 41 0 9
rem PrintColorAt - 11 42 0 9
rem PrintColorAt - 11 43 0 9
rem PrintColorAt - 11 44 0 9
rem PrintColorAt - 11 45 0 9
rem PrintColorAt - 11 46 0 9
rem PrintColorAt \ 11 47 0 9
rem PrintColorAt \ 13 38 0 9
rem PrintColorAt - 13 39 0 9
rem PrintColorAt - 13 40 0 9
rem PrintColorAt - 13 41 0 9
rem PrintColorAt - 13 42 0 9
rem PrintColorAt - 13 43 0 9
rem PrintColorAt - 13 44 0 9
rem PrintColorAt - 13 45 0 9
rem PrintColorAt - 13 46 0 9
rem PrintColorAt / 13 47 0 9
rem PrintColorAt calc.txt 10 20 15 1


rem PrintColorAt calc2.txt 11 20 0 9


rem PrintColorAt UserPass 12 39 0 3


rem PrintColorAt sysinfo.txt 12 20 0 3

rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 20,10,27,10 20,11,28,11 20,12,30,12 20,13,32,13 39,12,46,12 19,7,21,7 72,6,74,6 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto calcread
if %result%==2 goto calc2read
if %result%==3 goto sysinforead
if %result%==4 goto mathinputread
if %result%==5 goto userpassbeeg
if %result%==6 goto AYDRIVEBIG
if %result%==7 goto otherusersmall
if %result%==8 goto snui
if %result%==9 goto snui
if %result%==10 goto snui
if %result%==11 goto multifinder
if %result%==12 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones






:userpasssmall
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.6 6 20 0 9
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
rem MouseCMD 19,12,32,14 19,7,21,7 54,6,56,6 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get


if %result%==1 goto userpassread
if %result%==2 goto otherusersmall
if %result%==3 goto userpassbeeg
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones

rem rem first four on these are answer questrion





:userpassbeeg
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt  features and menus. 13 77 0 9
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.6 PathFinder 6 20 0 9
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
rem MouseCMD 19,12,32,14 19,7,21,7 72,6,74,6 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get


if %result%==1 goto userpassread
if %result%==2 goto otheruserbeeg
if %result%==3 goto userpasssmall
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto multifinder
if %result%==8 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones

rem rem first four on these are answer questrion



:calcread
set wordID=C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
goto readbeegorsmall


:calc2read
set wordID=C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
goto readbeegorsmall

:sysinforead
set wordID=C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\sysinfo.txt
goto readbeegorsmall

:mathinputread
set wordID=C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
goto readbeegorsmall

:jaguarwordread
set wordID=C:\JasonJaguarFileSystem\MainStorage(A)\Documents\JAGUARWORD.txt
goto readbeegorsmall

:userpassread
set wordID=C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
goto readbeegorsmall





:readbeegorsmall
rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt  features and menus. 13 77 0 9
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.6 PathFinder 6 20 0 9
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
rem MouseCMD 21,13,23,13 28,13,29,13 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto plainwordread
if %result%==2 goto AYDRIVE
if %result%==3 goto snui
if %result%==4 goto snui
if %result%==5 goto snui
if %result%==6 goto multifinder
if %result%==7 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones





:sasdy
set /p usar=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
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
title Jason Jaguar 2.3 GUI
cls
rem PaintScreen 15
rem ShadeBoxAt 3 1 27 120 2
rem ShadeBoxAt 1 33 2 87 1
rem ShadeBoxAt 2 34 1 87 2
rem ShadeBoxAt 2 1 1 87 1
rem Locate 25 1
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 14 27 1 69 1
rem ShadeBoxAt 13 95 1 1 1
rem PrintColorAt Jason Jaguar 2.3 Public Ver. 1 88 0 9
rem PrintColorAt .X. 1 117 15 12
rem PrintColorAt Welcome, %usar%. :) 29 1 0 3
rem PrintColorAt {@@} 1 2 0 9
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem rem WIDTH THEN HEIGHT FOR COORDINATES THOUGH
rem PrintColorAt *Bubbles 1 8 0 9
rem PrintColorAt Legacy 1 18 0 9
rem PrintColorAt Folder System 1 26 0 9
rem PrintColorAt Reload Desktop 1 41 0 9
rem PrintColorAt %hour%:%minute% %ampm%, %mydate% 29 100 0 3
rem PrintColorAt File 1 63 15 1

rem ShadeBoxAt 6 17 18 58 4
rem PrintColorAt  features and menus. 13 77 0 9
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {/} 6 72 0 11
rem PrintColorAt Jason Jaguar - - - - - - - FileSystem 1.6 PathFinder 6 20 0 9
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
rem PrintColorAt Press the back button to redirect to the A: Drive. 13 21 0 3
rem ShadeBoxAt 7 75 18 1 1
rem ShadeBoxAt 25 18 1 58 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 19,7,21,7 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto AYDRIVE
if %result%==2 goto snui
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
set /p usar=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\UserPass\username.txt
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
title Jason Jaguar 2.3 GUI
cls
set flagID=snui
rem PaintScreen 15
rem ShadeBoxAt 3 1 27 120 2
rem ShadeBoxAt 1 33 2 87 1
rem ShadeBoxAt 2 34 1 87 2
rem ShadeBoxAt 2 1 1 87 1
rem Locate 25 1
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 14 27 1 69 1
rem ShadeBoxAt 13 95 1 1 1
rem PrintColorAt Jason Jaguar 2.3 Public Ver. 1 88 0 9
rem PrintColorAt .X. 1 117 15 12
rem PrintColorAt Welcome, %usar%. :) 29 1 0 3
rem PrintColorAt {@@} 1 2 0 9
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem rem WIDTH THEN HEIGHT FOR COORDINATES THOUGH
rem PrintColorAt *Bubbles 1 8 0 9
rem PrintColorAt Legacy 1 18 0 9
rem PrintColorAt Folder System 1 26 0 9
rem PrintColorAt Reload Desktop 1 41 0 9
rem PrintColorAt %hour%:%minute% %ampm%, %mydate% 29 100 0 3
rem PrintColorAt File 1 63 15 1

rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt {+} 6 54 0 11
rem PrintColorAt _/_ 7 19 0 11
rem PrintColorAt Jason Jaguar - FileSystem Ver. 1.6 6 20 0 9
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
rem PrintColorAt ( 11 23 0 9
rem PrintColorAt ) 11 33 0 9
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
rem PrintColorAt \ 10 33 0 9
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
rem PrintColorAt / 12 33 0 9
rem PrintColorAt Documents 11 24 0 3

rem PrintColorAt ( 11 38 0 9
rem PrintColorAt ) 11 52 0 9
rem PrintColorAt / 10 38 0 9
rem PrintColorAt - 10 39 0 9
rem PrintColorAt - 10 40 0 9
rem PrintColorAt - 10 41 0 9
rem PrintColorAt - 10 42 0 9
rem PrintColorAt - 10 43 0 9
rem PrintColorAt - 10 44 0 9
rem PrintColorAt - 10 45 0 9
rem PrintColorAt - 10 46 0 9
rem PrintColorAt - 10 47 0 9
rem PrintColorAt - 10 48 0 9
rem PrintColorAt - 10 49 0 9
rem PrintColorAt - 10 50 0 9
rem PrintColorAt - 10 51 0 9
rem PrintColorAt \ 10 52 0 9
rem PrintColorAt \ 12 38 0 9
rem PrintColorAt - 12 39 0 9
rem PrintColorAt - 12 40 0 9
rem PrintColorAt - 12 41 0 9
rem PrintColorAt - 12 42 0 9
rem PrintColorAt - 12 43 0 9
rem PrintColorAt - 12 44 0 9
rem PrintColorAt - 12 45 0 9
rem PrintColorAt - 12 46 0 9
rem PrintColorAt - 12 47 0 9
rem PrintColorAt - 12 48 0 9
rem PrintColorAt - 12 49 0 9
rem PrintColorAt - 12 50 0 9
rem PrintColorAt - 12 51 0 9
rem PrintColorAt / 12 52 0 9
rem PrintColorAt OtherUserData 11 39 0 3

rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 54,6,56,6 19,7,21,7 23,10,33,12 38,10,52,12 17,6,19,6 1,14,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get

if %result%==1 goto AYDRIVEBIG
if %result%==2 goto FileSystem
if %result%==3 goto documuntsmall
if %result%==4 goto otherusersmall
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto snui
if %result%==8 goto multifinder
if %result%==8 goto pathspec
if %result%==0 goto CLI

rem rem 19,7,21,7 is go backwards
rem rem 54,6,56,6 is minimize/maximize button
rem rem 72,6,74,6 is the minimize/maximize for beeg mode
rem rem 23,10,32,12 41,10,50,12 are both drives or options to select
rem rem rem ShadeBoxAt 2 2 24 74 2 should be added to small
rem rem rem ShadeBoxAt 6 17 18 58 4 on big ones









:fyletree
TREE C:\JasonJaguarFileSystem\ /A /F
set /p replar=@%usar%jaguarcmd}Open file in any tree directory? Y/N

if %replar% EQU Y goto opanfyle1
if %replar% EQU y goto opanfyle1
if %replar% EQU N goto CLIUS
if %replar% EQU n goto CLIUS
goto CLIUS


:opanfyle1
cd C:\JasonJaguarFileSystem\
set /p poan=@%usar%jaguarcmd}Directory name?

if exist %poan% goto tarballs1
if not exist %poan% goto insalad1


:tarballs1
cd C:\JasonJaguarFileSystem\%poan%

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
dir C:\JasonJaguarFileSystem\ /s
pause
goto CLIUS


:ceeelless
cls
goto CLIUS



:filesys
cls
color 0a
TREE C:\JasonJaguarFileSystem\ /A /F
set /p replar=@%usar%jaguarcmd}Open file in any tree directory? Y/N

if %replar% EQU Y goto opanfyle2
if %replar% EQU y goto opanfyle2
if %replar% EQU N goto GUI
if %replar% EQU n goto GUI
goto GUI


:opanfyle2
cd C:\JasonJaguarFileSystem\
set /p poan=@%usar%jaguarcmd}Directory name?

if exist %poan% goto tarballs2
if not exist %poan% goto insalad3


:tarballs2
cd C:\JasonJaguarFileSystem\%poan%

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
set taskID=Game
set flagID=apprun
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
rem ShadeBoxAt 6 17 10 40 4
rem ShadeBoxAt 12 20 1 2 4
rem PrintColorAt *X* 6 17 15 12
rem PrintColorAt Jason Jaguar - 2.3 GUI Environment{/} 6 20 0 9
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
rem PrintColorAt Would you like to run software 9 18 15 1
rem PrintColorAt from an external drive? 11 20 15 1
rem PrintColorAt *Yes* 13 24 15 12
rem PrintColorAt *No* 13 40 15 12
rem ShadeBoxAt 7 57 10 1 1
rem ShadeBoxAt 16 18 1 40 1
rem PrintColorAt %taskID% 1 63 15 1
rem rem Last color value is box, first is text, first real value is height,
rem rem second one is width
rem MouseCMD 2,1,5,1 1,17,120,30 17,6,19,6 63,1,66,1 24,13,28,13 40,13,43,13 get
if %result%==1 goto snui
if %result%==2 goto snui
if %result%==3 goto snui
if %result%==4 goto multifinder
if %result%==5 goto soffy
if %result%==6 goto snui
if %result%==0 goto CLI




:soffy
if exist C:\JasonJaguarFileSystem\App(B)\app.bat goto soffycorrect
if not exist C:\JasonJaguarFileSystem\App(B)\app.bat goto soffyincorrect

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
rem PrintCenter Your Jason Jaguar external software is installed! 23 0 9
pause
rem PrintCenter Your OS will now boot into the program until it is terminated. 26 0 9
pause
cd C:\JasonJaguarFileSystem\App(B)
cls
color 0a
call app.bat
cls
echo The external program has terminated. You will now return to the GUI
pause
goto gui





:rinset
set /p snuinst=Are you sure you want to reinstall Jason Jaguar 2.3 Public Release and 1.6 FileSystem? Y/N?
if %result%==y goto yestal3
if %result%==Y goto yestal3
if %result%==n goto CLIUS
if %result%==N goto CLIUS

:yestal3
goto yestal




:lega
cls
color 0c
set /p menu=Would you like to boot into Jason Jaguar Legacy DOS? Y/N

if %menu%==Y goto jaguar1
if %menu%==N goto gui


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
rem PrintColorAt Reset Calc 3 44 0 3
rem MouseCMD 2,1,5,1 41,1,54,1 44,3,53,3 63,1,66,1 1,14,120,30 2,1,5,1 17,6,19,6 get

if %result%==1 goto snui
if %result%==2 goto calcu
if %result%==3 goto calcu
if %result%==4 goto multifinder
if %result%==5 goto snui
if %result%==6 goto snui
if %result%==7 goto snui
if %result%==0 goto CLI





:calcu
if exist C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt goto mahincalc

:mahincalc
set taskID=Calc
set flagID=calcu
set specID=CalculatorSpec
echo.:>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
echo.:>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
echo.:>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
rem ShadeBoxAt 2 41 5 19 2
rem ShadeBoxAt 7 58 1 2 2
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem ShadeBoxAt 5 25 1 10 2
rem Locate 25 1
rem ShadeBoxAt 2 2 23 23 2
rem ShadeBoxAt 2 2 24 74 2
rem PrintCenter Welcome to Jason Jaguar 2 . 3 :) Check out the beta features and menus. 13 0 9
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
rem PrintColorAt Jason Jaguar - 2.3 GUI Calculator {/} 6 20 0 9
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
echo:%result%>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt

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
echo:%result%>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt


:gyolf
rem printColorAt %result% 8 39 15 1
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
echo:+>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p mathinput=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
rem PrintColorAt %answer1% 8 39 15 1
rem PrintColorAt %mathinput% 8 43 15 1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
echo:%result%>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
if %result%==LEQ 9 goto ahnsar1
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI

:ahnsar1
set /p mathinput=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
set /p answer2=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
goto addcommand

:siubtract
echo:->C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p mathinput=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
rem PrintColorAt %answer1% 8 39 15 1
rem PrintColorAt %mathinput% 8 43 15 1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
echo:%result%>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
if %result%==LEQ 9 goto ahnsar2
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI 

:ahnsar2
set /p mathinput=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
set /p answer2=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
goto subtractcommand

:myultiply
echo:*>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p mathinput=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
rem PrintColorAt %answer1% 8 39 15 1
rem PrintColorAt %mathinput% 8 43 15 1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
echo:%result%>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
if %result%==LEQ 9 goto ahnsar3
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui 
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI

:ahnsar3
set /p mathinput=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
set /p answer2=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
goto multiplycommand

:divdied
echo:/>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p mathinput=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
rem PrintColorAt %answer1% 8 39 15 1
rem PrintColorAt %mathinput% 8 43 15 1
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem MouseCMD 19,7,21,7 19,9,21,9 19,11,21,11 19,13,21,13 23,7,25,7 23,9,25,9 23,11,25,11 23,13,25,13 27,7,29,7 17,6,19,6 1,16,120,30 2,1,5,1 63,1,66,1 41,1,54,1 get
echo:%result%>C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
if %result%==LEQ 9 goto ahnsar4
if %result%==10 goto snui
if %result%==11 goto snui
if %result%==12 goto snui 
if %result%==13 goto multifinder
if %result%==14 goto calcspec
if %result%==0 goto CLI

:ahnsar4
set /p mathinput=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\mathinput.txt
set /p answer1=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc.txt
set /p answer2=<C:\JasonJaguarFileSystem\MainStorage(A)\OtherUserData\calc2.txt
goto dividecommand

:addcommand
rem ShadeBoxAt 2 63 1 11 1
rem ShadeBoxAt 3 63 6 12 2
rem Add %answer1% %answer2%
rem PrintColorAt %answer2% 8 47 15 1
rem PrintColorAt your answer is: 10 39 0 9
rem PrintColorAt %result% 12 39 0 3
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
rem PrintColorAt %answer2% 8 47 15 1
rem PrintColorAt your answer is: 10 39 0 9
rem PrintColorAt %result% 12 39 0 3
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
rem PrintColorAt %answer2% 8 47 15 1
rem PrintColorAt your answer is: 10 39 0 9
rem PrintColorAt %result% 12 39 0 3
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
rem PrintColorAt %answer2% 8 47 15 1
rem PrintColorAt your answer is: 10 39 0 9
rem PrintColorAt %result% 12 39 0 3
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




:jaguar1
cls
rem PrintCenter Loading Jason Jaguar 1.2.9 Environment... 21 0 9
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
goto startup

:startup
cls
color 0a
title Jason Jaguar OS ver= 1.0.0
pause
echo Booting Drive Function..
pause
cls
echo Finding Kernel.........
echo Kernel Found! Booting Jason Jaguar OS
pause
echo Hello this os is customized to your liking.
echo all you need is in this OS. just use it
pause

cls            
echo what is your name?
set/p name=
echo.
cls
echo HELLO! %name%
echo.
pause

:menu
cls
Title menu
echo -------------------------------------------
echo What Would You Like To Do? Type the number.
echo -------------------------------------------
echo.
echo --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
echo 1.System Info 2.Reboot Code 3.Date and time 4.antivirus 5.play game 6.Notepad 7.Internet Browser 8.RD Section 9.WAR!!! 10.Calculator 11.Tetris 1.0 12.The oregon trail 13.Exit 14.Chess 15.Minesweeper 16.Poketrion Force 17.Return to Jason Jaguar (tm) GUI Environment Runtime
echo --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

set /p input=
if %input% == 1 goto infio
if %input% == 2 goto reboot 
if %input% == 3 goto date
if %input% == 4 goto antivirus
if %input% == 5 goto play game
if %input% == 6 goto notepad
if %input% == 7 goto browser
if %input% == 8 goto eggo
if %input% == 9 goto cyan
if %input% == 10 goto calc
if %input% == 11 goto tetris
if %input% == 12 goto trail
if %input% == 13 goto exit
if %input% == 14 goto chess
if %input% == 15 goto minesweep
if %input% == 16 goto master
if %input% == 17 goto gui

:infio

cls
echo.=======================
echo     Jason Jaguar__OS_
echo.=======================
echo     DETAILS  
echo.
echo     VERSION = 0.0.1
echo.     
echo     RAM = 1GB
echo.
echo     CORE = INTEL I5
echo.
echo     HARD_DRIVE = 250GB     
echo.   
echo     Kernel ver = 5.6.7
echo.  
echo    Build = 1
echo.
echo.========================
echo     @Copyright P.inc
echo.========================
echo.
echo -----------------------------
echo Unlock key for reboot is 7742
echo -----------------------------
echo Wanna check for update?

echo  1. to check for update 
echo  2. Menu

set /p check= 

if %check% == 1 goto update

if %check% == 2 goto menu




     
:update 
cls

echo Checking for new version /Update.............
echo.
pause
cls
echo ---------------------------
echo There are no new updates...
echo ---------------------------
pause
goto menu

:reboot
set /p protection=Enter password:
if %protection% == 7742 goto correct
if not %protection% == 7742 goto incorrect
:correct
cls
echo Correct pass!
pause
goto memo
:incorrect
cls
echo Incorrect pass!
pause
echo Starting now...
cls
goto reboot

:memo
echo System reboot starting...
cls
echo Rebooting.
ping Localhost -n 2 >nul
cls
Rebooting...
ping Localhost -n 2 >nul
cls
echo System reboot half COMPLETE!
pause
goto startup


:date
cls
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
echo Current time is %mydate%:%mytime%
pause
goto menu

:antivirus
cls
echo Deleting Virus.
ping Localhost -n 2 >nul
cls
Deleting Virus...
ping Localhost -n 2 >nul
cls
echo COMPLETE!
echo You have no viruses anymore
pause
goto menu

:play game
Color 01
title Zombie Attack
echo Welcome to Zombie Attack
echo In this game you have to fight Zombies 
echo (1) Begin
echo (2) Exit
set /p choice1=Choose-

if %choice1% == 1 goto g
if %choice1% == 2 goto c

:g
cls
title Battle 1
pause
cls
echo You find a strange man in the woods,
echo you think that he is just a man, but really, he is a Zombie!
Color F9
pause
echo Entering Battle 1...
Color 01
pause
goto h

:h
cls
title Battle 1
echo Zombie used Bite!
echo Your health fell by -Shp!
echo You have 3 attacks.
echo (1) Punch
echo (2) Slap
echo (3) Kick in the Butt
set /p choice3=Choose-

if %choice3% == 1 goto i
if %choice3% == 2 goto j
if %choice3% == 3 goto k

:i
cls
Color 07
echo BAM!
pause
echo You used Punch!
Color 01
echo Zombie's health fell by -14hp
echo Congratulations!
echo You beat the Zombie!
echo Thanks for playing!
pause
Color 0a
goto menu

:notepad
cls
echo Ready?
pause
Notepad Untitled
pause
goto menu

:browser
cls
title connection error
echo Your Internet Connection seems to not work. Would you like to Reconnect?

set /p input=
if %input% == yes goto recon
if %input% == no goto es

:recon
title Rebooting Internet
echo Reconnecting.
ping Localhost -n 2 >nul
cls
Reconnecting...
ping Localhost -n 2 >nul
cls
echo COMPLETE!
echo Trying again...
pause
goto online

:es
title ummm....
echo ummm..... then why go on the internet?
pause
goto menu

:online
title internet
echo -----------------------------------------------
echo What would you like to choose? type the number!
echo -----------------------------------------------
echo.
echo ------------------------------------------------------------------
echo 1.Youtube 2.Online Chat 3.Manage NiceHash Account 4.Beyblade Burst 
echo ------------------------------------------------------------------

set /p input=
if %input% == 1 goto Y
if %input% == 2 goto O
if %input% == 3 goto M
if %input% == 4 goto B

:Y
echo OK
pause
start Opera https://Youtube.com
pause
goto menu

:O
echo OK
pause 
start Opera https://hangouts.google.com
pause
goto menu

:M
echo OK
pause
start Opera https://www.nicehash.com/dashboard
pause
goto menu

:B
echo OK
pause
start Opera https://scratch.mit.edu/projects/162984588/#player
pause
goto menu

:eggo
cls
title Jason Jaguar Inventories llc. R&D SOFTWARE UNIT MANUFACTURES 1.0 Beta
pause
cls
echo Starting Bootup
pause
cls
echo Booting second Drive Function
pause
Notepad Untitled
pause
goto menu

:cyan
title Jason Jaguar Inventories llc. R&D SOFTWARE UNIT MANUFACTURES 1.0 Beta 
color 0c
title TOTAL WAR!!!
echo.
echo Welcome to Total War, created by Jason Haude.
echo.
pause
:players
cls
set player=
set replay=
echo.
set /p player=Select 1 or 2 player mode:
if '%player%'=='1' goto name
if '%player%'=='2' goto p1name
goto players
:name
cls
set name=
echo.
set /p name=Please type in your name (One word):
if '%name%'=='' goto name
rem Easter Egg:
if '%name%'=='Jason' goto win
:country
cls
set country=
set enemy=
echo.
echo Welcome %name%!
echo.
set /p country=Choose your country; USA, Russia, or Canada:
if '%country%'=='usa' goto enemy1
if '%country%'=='USA' goto enemy1
if '%country%'=='Usa' goto enemy1
if '%country%'=='Russia' goto enemy2
if '%country%'=='russia' goto enemy2
if '%country%'=='canada' goto enemy3
if '%country%'=='Canada' goto enemy3
goto country
:enemy1
set country=USA
goto enemy
:enemy2
set country=Russia
goto enemy
:enemy3
set country=Canada
:enemy
set /a cpucountryrand=%random% %%5 +1
if '%cpucountryrand%'=='0' goto enemy
if '%cpucountryrand%'=='1' set enemy=Russia
if '%cpucountryrand%'=='2' set enemy=USA
if '%cpucountryrand%'=='3' set enemy=Canada
if '%cpucountryrand%'=='4' goto enemy
if '%cpucountryrand%'=='5' goto enemy
if '%enemy%'=='%country%' goto enemy
:begin
set user=1000
set cpu=1000
set nuke=1
set airstrike=2
set missiles=3
set cpunuke=1
set cpuairstrike=2
set cpumissiles=3
:gameplay
cls
set move=
set choice=
set cpucount=0
echo.
echo %name%, your turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %nuke%
echo.
echo 2. Fire Airstrike x %airstrike%
echo.
echo 3. Fire Missiles x %missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto nuke
if '%move%'=='2' goto airstrike
if '%move%'=='3' goto missiles
if '%move%'=='4' goto surrender
if '%move%'=='5' goto cpu1
goto gameplay
:nuke
cls
if '%nuke%'=='0' goto nonuke
echo.
echo %name% has fired a NUKE headed towards the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 400 DEF!
echo.
pause
set /a cpu=%cpu% - 400
set nuke=0
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:nonuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto gameplay
:airstrike
cls
if '%airstrike%'=='0' goto noairstrike
echo.
echo %name% has fired an airstrike on the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 300 DEF!
echo.
pause
set /a cpu=%cpu% - 300
set /a airstrike=%airstrike% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:noairstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto gameplay
:missiles
cls
if '%missiles%'=='0' goto nomissiles
echo.
echo %name% has fired multiple missiles headed towards the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 200 DEF!
echo.
pause
set /a cpu=%cpu% - 200
set /a missiles=%missiles% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:nomissiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto gameplay
:surrender
cls
echo.
echo "We may have lost the war, but we still have our dignity..."
echo.
pause
:end
cls
echo.
echo "We may have lost the war, but we still have our dignity..."
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto end
goto players
:win
cls
echo.
echo You have won Total War!!!
echo.
pause
:win2
cls
echo.
echo You have won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto win2
goto players
:cpu1
cls
set /a cpucount=%cpucount% + 1
if '%cpucount%'=='10' goto cpu2
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:/
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
cls
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:-
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
cls
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:\
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
goto cpu1
:cpu2
cls
set /a choice=%random% %%6
if '%choice%'=='0' goto cpu2
if '%choice%'=='4' goto cpu2
if '%choice%'=='6' goto cpu2
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:%choice%
ping localhost -n 4 >nul
if '%choice%'=='1' goto cpunuke
if '%choice%'=='2' goto cpuairstrike
if '%choice%'=='3' goto cpumissiles
if '%choice%'=='5' goto gameplay
:cpunuke
cls
if '%cpunuke%'=='0' goto nocpunuke
echo.
echo I have fired a NUKE headed towards the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 400 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 400
set cpunuke=0
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpunuke
echo.
echo I can't use a nuke since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuairstrike
cls
if '%cpuairstrike%'=='0' goto nocpuairstrike
echo.
echo I have fired an airstrike on the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 300 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 300
set /a cpuairstrike=%cpuairstrike% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpuairstrike
echo.
echo I can't use an airstrike since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpumissiles
cls
if '%cpumissiles%'=='0' goto nocpumissiles
echo.
echo I have fired multiple missiles headed towards the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 200 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 200
set /a cpumissiles=%cpumissiles% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpumissiles
echo.
echo I can't use missiles since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuwin
cls
echo.
echo It was a long battle today. I have emerged victorious, even though you tried
echo very well.
echo.
pause
:cpuwin2
cls
echo.
echo It was a long battle today. I have emerged victorious, even though you tried
echo very well.
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto cpuwin2
goto players
:p1name
cls
set p1name=
echo.
set /p p1name=Player 1, please type in your name (One word):
if '%p1name%'=='' goto p1name
:p2name
cls
set p2name=
echo.
set /p p2name=Player 2, please type in your name (One word):
if '%p2name%'=='%p1name%' goto p2name
if '%p2name%'=='' goto p2name
rem Easter Egg:
if '%p1name%'=='Vincent' goto p1win
if '%p2name%'=='Vincent' goto p2win
:p1country
cls
set p1country=
echo.
echo Welcome %p1name%!
echo.
set /p p1country=Choose your country; USA, Russia, or Canada:
if '%p1country%'=='usa' goto p1country1
if '%p1country%'=='USA' goto p1country1
if '%p1country%'=='Usa' goto p1country1
if '%p1country%'=='Russia' goto p1country2
if '%p1country%'=='russia' goto p1country2
if '%p1country%'=='canada' goto p1country3
if '%p1country%'=='Canada' goto p1country3
goto p1country
:p1country1
set p1country=USA
goto p2country
:p1country2
set p1country=Russia
goto p2country
:p1country3
set p1country=Canada
:p2country
cls
set p2country=
echo.
echo Welcome %p2name%!
echo.
set /p p2country=Choose your country; USA, Russia, or Canada:
if '%p2country%'=='%p1country%' goto na
if '%p2country%'=='usa' goto p2country1
if '%p2country%'=='USA' goto p2country1
if '%p2country%'=='Usa' goto p2country1
if '%p2country%'=='Russia' goto p2country2
if '%p2country%'=='russia' goto p2country2
if '%p2country%'=='canada' goto p2country3
if '%p2country%'=='Canada' goto p2country3
goto p2country
:na
cls
echo.
echo You can't choose %p1country% because %p1name% has already chosen it.
pause >nul
goto p2country
:p2country1
set p2country=USA
goto begin2
:p2country2
set p2country=Russia
goto begin2
:p2country3
set p2country=Canada
:begin2
set p1health=1000
set p2health=1000
set p1nuke=1
set p1airstrike=2
set p1missiles=3
set p2nuke=1
set p2airstrike=2
set p2missiles=3
:p1gameplay
cls
set move=
set choice=
echo.
echo %p1name%, your turn.
echo                                                               %p1country%: %p1health% DEF
echo Options:
echo                                                               %p2country%: %p2health% DEF
echo 1. Fire NUKE x %p1nuke%
echo.
echo 2. Fire Airstrike x %p1airstrike%
echo.
echo 3. Fire Missiles x %p1missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto p1nuke
if '%move%'=='2' goto p1airstrike
if '%move%'=='3' goto p1missiles
if '%move%'=='4' goto p1surrender
if '%move%'=='5' goto p2gameplay
goto p1gameplay
:p1nuke
cls
if '%p1nuke%'=='0' goto nop1nuke
echo.
echo %p1name% has fired a NUKE headed towards %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 400 DEF!
echo.
pause
set /a p2health=%p2health% - 400
set p1nuke=0
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1nuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto p1gameplay
:p1airstrike
cls
if '%p1airstrike%'=='0' goto nop1airstrike
echo.
echo %p1name% has fired an airstrike on %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 300 DEF!
echo.
pause
set /a p2health=%p2health% - 300
set /a p1airstrike=%p1airstrike% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1airstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto p1gameplay
:p1missiles
cls
if '%p1missiles%'=='0' goto nop1missiles
echo.
echo %p1name% has fired multiple missiles headed towards %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 200 DEF!
echo.
pause
set /a p2health=%p2health% - 200
set /a p1missiles=%p1missiles% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1missiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto p1gameplay
:p1surrender
cls
echo.
echo %p2name% has won Total War!!!
echo.
pause
:p1surrender2
cls
echo.
echo %p2name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1surrender2
goto players
:p1win
cls
echo.
echo %p1name% has won Total War!!!
echo.
pause
:p1win2
cls
echo.
echo %p1name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1win2
goto players
:p2gameplay
cls
set move=
set choice=
echo.
echo %p2name%, your turn.
echo                                                               %p2country%: %p2health% DEF
echo Options:
echo                                                               %p1country%: %p1health% DEF
echo 1. Fire NUKE x %p2nuke%
echo.
echo 2. Fire Airstrike x %p2airstrike%
echo.
echo 3. Fire Missiles x %p2missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto p2nuke
if '%move%'=='2' goto p2airstrike
if '%move%'=='3' goto p2missiles
if '%move%'=='4' goto p2surrender
if '%move%'=='5' goto p1gameplay
goto p2gameplay
:p2nuke
cls
if '%p2nuke%'=='0' goto nop2nuke
echo.
echo %p2name% has fired a NUKE headed towards %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 400 DEF!
echo.
pause
set /a p1health=%p1health% - 400
set p2nuke=0
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2nuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto p2gameplay
:p2airstrike
cls
if '%p2airstrike%'=='0' goto nop2airstrike
echo.
echo %p2name% has fired an airstrike on %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 300 DEF!
echo.
pause
set /a p1health=%p1health% - 300
set /a p2airstrike=%p2airstrike% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2airstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto p2gameplay
:p2missiles
cls
if '%p2missiles%'=='0' goto nop2missiles
echo.
echo %p2name% has fired multiple missiles headed towards %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 200 DEF!
echo.
pause
set /a p1health=%p1health% - 200
set /a p2missiles=%p2missiles% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2missiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto p2gameplay
:p2surrender
cls
echo.
echo %p1name% has won Total War!!!
echo.
pause
:p2surrender2
cls
echo.
echo %p1name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2surrender2
goto players
:p2win
cls
echo.
echo %p2name% has won Total War!!!
echo.
pause
:p2win2
cls
echo.
echo %p2name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2win2
goto players
:suggest
cls
echo.
echo Before you leave, can you suggest a country I can add to the file?
echo.
set /p suggestion=Suggest a country here:
if '%suggestion%'=='' goto suggest
echo %suggestion% >> suggestions.txt
goto menu


:calc
title Calculator
color 0a
echo Welcome to The Basic Arithmetic Calculator
echo Made By Jason Haude
ping localhost -n 3 >nul

:LOADING
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading....
ping localhost -n 2 >nul
cls
echo Loading.....
ping localhost -n 2 >nul
ping localhost -n 2 >nul
color 0a
goto START

:START
cls
echo What Type of Math would you like to do?
echo Add, Subtract, Multiply, or Divide. Or go to menu.
set /p math=
IF '%math%' == 'Add' GOTO ADD
IF '%math%' == 'add' GOTO ADD
IF '%math%' == 'Subtract' GOTO SUB
IF '%math%' == 'subtract' GOTO SUB
IF '%math%' == 'Multiply' GOTO MULTIPLY
IF '%math%' == 'multiply' GOTO MULTIPLY
IF '%math%' == 'Divide' GOTO DIVIDE
IF '%math%' == 'divide' GOTO DIVIDE
IF '%math%' == 'menu' GOTO menu
IF '%math%' == 'Menu' GOTO menu
IF '%math%' == 'MENU' GOTO menu
Exit

:ADD
Cls
GOTO NUMBERSADD
pause
exit

:SUB
Cls
GOTO NUMBERSSUB
pause
exit

:MULTIPLY
Cls
GOTO NUMBERSMULTIPLY
pause
exit

:DIVIDE
Cls
GOTO NUMBERSDIVIDE
pause
exit

:NUMBERSADD
echo What is the First Number you would like to Add?
set /p number1=
cls
echo What is the Second Number you would like to Add?
set /p number2=
cls

GOTO ADD2
exit

:NUMBERSSUB
echo What is the First Number you would like to Subtract?
set /p number1=
cls
echo What is the Second Number you would like to Subtract?
set /p number2=
cls
GOTO SUB2
exit

:NUMBERSMULTIPLY
echo What is the First Number you would like to Multiply?
set /p number1=
cls
echo What is the Second Number you would like to Multiply?
set /p number2=
cls
GOTO MULTIPLY2
exit

:NUMBERSDIVIDE
echo What is the First Number you would like to Divide?
set /p number1=
cls
echo What is the Second Number you would like to Divide?
set /p number2=
cls
GOTO DIVIDE2
exit

:ADD2
Set /A result = %number1% + %number2%
echo The answer is %result%.
Pause
GOTO START
exit

:SUB2
Set /A result = %number1% - %number2%
echo The answer is %result%.
pause
GOTO START
exit

:MULTIPLY2
Set /A result = %number1% * %number2%
echo The answer is %result%.
pause
GOTO START
exit

:DIVIDE2
Set /A result = %number1% / %number2%
echo The answer is %result%.
pause
GOTO START
exit

:tetris
@title Tetris v 1
@mode con cols=28 lines=24

:: Batch Game - Tetris v 1
:: Proof Of Concept
:: Coded by Jason Haude
:: Jason Haude, 2018

Choice /N /T:Y,1 >Nul 2>&1
If "%Errorlevel%"=="9009" (Echo. CHOICE command not found&Pause&Exit)

Set "Game=%0"

Call :Logo

:menado
Cls
Echo.
Echo.
Echo. Tetris v 1 by Jason Haude
Echo. ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
Echo. ÚÄÄ¿ ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿
Echo. ³1.³ ³Play TETRIS ³
Echo. ÀÄÄÙ ÀÄÄÄÄÄÄÄÄÄÄÄÄÙ
Echo. ÚÄÄ¿ ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿
Echo. ³2.³ ³How to Play ³
Echo. ÀÄÄÙ ÀÄÄÄÄÄÄÄÄÄÄÄÄÙ
Echo. ÚÄÄ¿ ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿
Echo. ³3.³ ³Exit Game   ³
Echo. ÀÄÄÙ ÀÄÄÄÄÄÄÄÄÄÄÄÄÙ
Echo.
CHOICE /C:123 /N >nul
If "%errorlevel%"=="1" (Goto :Load)
If "%errorlevel%"=="2" (Goto :Help)
If "%errorlevel%"=="3" (Goto :End)
Goto :Menu

:Load
Setlocal enabledelayedexpansion
Set /a "LimX=18","LimY=16","TBound=1","LBound=0","Turn=1","Points=0"
Set /a "RBound=%LimX%","BBound=%LimY%"

:Init
For /l %%a in (0,1,%LimX%) do (
For /l %%b in (0,1,%LimY%) do (
Set "X%%aY%%b= "))
Set "Bound=Û"
Set "Bound2=²"

:Main
Set /a "L=(%Random% %% 7)+1"
Call :Figure%L%
Call :Graphic
Goto :Main

:Graphic
If "%New_F%"=="True" (
Call :Solid
Set "New_F=False"
Goto :Eof
)
Call :Clear
Cls
Echo.
Echo.  Tetris v 1 by Jason Haude
Echo.
Echo.   Points:%Points%
Echo.   ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
For /l %%f in (0,1,%LimY%) do (Echo.   º!Lin_%%f!º)
Echo.   ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
Call :Move
Goto :Graphic

:Move
:: Normal CHOICE (provided into ZIP package)
CHOICE /C:SADRXC /N >nul
:: Windows 7 or x64 system CHOICE (uncomment)
REM CHOICE /C SADRXC /N 
If "%errorlevel%"=="1" (Call :Down)
If "%errorlevel%"=="2" (Call :Left)
If "%errorlevel%"=="3" (Call :Rigth)
If "%errorlevel%"=="4" (Call :Rotate)
If "%errorlevel%"=="5" (Goto :Menu)
If "%errorlevel%"=="6" (Call :MovCR)
::Descomentar para doble movimiento
REM Call :Down
Call :CheckL2
Goto :Eof

::::::::::::::::::::::::::::::::::::::::
:Solid
For %%a in (%Table%) do (Set "%%a=%Bound2%")
Goto :Eof

:Rotate
Set "TmpTB="
If "%XToken%"=="11" (Set "XToken=10")
If "%YToken%"=="15" (Set "XToken=14")
Set /a "NextRotate=(%RotateLevel% %% 4)+1"
Set "TmpTable=!Figure%CurFig%_Pos%NextRotate%!
For %%R in (%TmpTable%) do (
Call :MovR "%YToken%" "%XToken%" "%%R" "Val"
Call Set "TmpTB=!TmpTB!,!Val!"
)
For %%c in (%TmpTB:~1%) do (
If "!%%c!"=="%Bound2%" (
For %%b in (%Table%) do (Set "%%b=%Bound%")
Goto :Eof
))
For %%a in (%Table%) do (Set "%%a= ")
Set "Table=%TmpTB:~1%"
For %%b in (%Table%) do (Set "%%b=%Bound%")
Set /a "RotateLevel+=1"
Goto :Eof

:MovR
For /f "tokens=1,2 delims=X,Y" %%p in ("%~3") do (
Set /a MovY=%%q+%~1
Set /a MovX=%%p+%~2
Set "%~4=X!MovX!Y!MovY!"
Set "%~3= ")
Goto :Eof

:::::::::::::::::::::::::::::::::::::::::::
:Down
Set "TmpTB="
Set "TmpTable=%Table%"
For %%a in (%TmpTable%) do (
Echo.!TmpTable!|Find "Y%BBound%">nul
If !Errorlevel! EQU 0 (Set "New_F=True"&Goto :Eof)
Call :MovYR "1" "%%a" "Val"
Call Set "TmpTB=!TmpTB!,!Val!"
)
For %%c in (%TmpTB:~1%) do (
If "!%%c!"=="%Bound2%" (
Set "New_F=True"
For %%b in (%Table%) do (Set "%%b=%Bound%")
Goto :Eof
))
Set "Table=%TmpTB:~1%"
For %%d in (%Table%) do (Set "%%d=%Bound%")
Set /a "YToken+=1"
Goto :Eof

:MovYR
For /f "tokens=1,2 delims=X,Y" %%p in ("%~2") do (
Set /a MovY=%%q+%~1
Set "%~3=X%%pY!MovY!"
Set "%~2= ")
Goto :Eof

:MovCR
Cls
Echo.
Echo.
Call :L2 "Goto :Eof"
Echo.
For /f "tokens=2 skip=3" %%c in ('find "::_0" %Game%') do (
Set "Tmp_Var=%%c"
Call :Key.A Tmp_Var
Echo. !Tmp_Var!
)
Pause >nul
Goto :Eof
::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::
:Rigth
Set "TmpTB="
Set "TmpTable=%Table%"
For %%a in (%TmpTable%) do (
Echo.!TmpTable!|Find "X%RBound%">nul
If !Errorlevel! EQU 0 (Goto :Eof)
Call :MovXR "+1" "%%a" "Val"
Call Set "TmpTB=!TmpTB!,!Val!"
)
For %%c in (%TmpTB:~1%) do (
If "!%%c!"=="%Bound2%" (
For %%b in (%Table%) do (Set "%%b=%Bound%")
Goto :Eof
))
Set "Table=%TmpTB:~1%"
For %%d in (%Table%) do (Set "%%d=%Bound%")
Set /a "XToken+=1"
Goto :Eof

:Left
Set "TmpTB="
Set "TmpTable=%Table%"
For %%a in (%TmpTable%) do (
Echo.!TmpTable!|Find "X%LBound%">nul
If !Errorlevel! EQU 0 (Goto :Eof)
Call :MovXR "-1" "%%a" "Val"
Call Set "TmpTB=!TmpTB!,!Val!"
)
For %%c in (%TmpTB:~1%) do (
If "!%%c!"=="%Bound2%" (
For %%b in (%Table%) do (Set "%%b=%Bound%")
Goto :Eof
))
Set "Table=%TmpTB:~1%"
For %%d in (%Table%) do (Set "%%d=%Bound%")
Set /a "XToken-=1"
Goto :Eof

:MovXR
For /f "tokens=1,2 delims=X,Y" %%p in ("%~2") do (
Set /a MovX=%%p%~1
Set "%~3=X!MovX!Y%%q"
Set "%~2= ")
Goto :Eof

::::::::::::::::::::::::::::::::::::::::

:CheckL2
If "!Lin_1!"=="²²²²²²²²²²²²²²²²²²²" (Goto :Lost)
If "!Lin_%LimY%!"=="²²²²²²²²²²²²²²²²²²²" (
Call :Clear
For /l %%x in (0,1,%LimX%) do (
For /l %%y in (%LimY%,-1,1) do (
Set /a "UpLine=%%y-1"
Call Set "X%%xY%%y=%%X%%xY!UpLine!%%"
))
Set /a "Points+=100"
For /l %%d in (0,1,%LimX%) do (Set "X%%dY0= ")
Goto :CheckL2
)
Goto :Eof

:::::::::::::::::::::::::::::::::::::::::

:Key.A
If not defined %1 Goto:Eof
Set "c="
Set "d=0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz =/\()[]{}_-.:,;* @#"
:Key.B
Set "chr=!%1:~,1!"
For /l %%l in (0 1 80) do if "!chr!" equ "!d:~%%l,1!" (
  set /a "x=%%l^5"
  call set "c=!c!%%d:~!x!,1%%"
)
Set "%1=!%1:~1!"
If defined %1 goto:Key.B
Set "%1=!c!"
Goto :Eof
:::::::::::::::::::::::::::::::::::::::::

:Clear
For /l %%m in (0,1,%LimY%) do (Set Lin_%%m=)
For /l %%d in (0,1,%LimY%) do (
For /l %%e in (0,1,%LimX%) do (
Set Lin_%%d=!Lin_%%d!!X%%eY%%d!))
Goto :Eof

:Lost
Cls
Echo.
Echo.  Tetris v 1 by Jason Haude
Echo.
Echo.     Points:%Points%
Echo.        Perdiste !
Goto :End

:Win
Cls
Echo.
Echo.  Tetris v 1 by Jason Haude
Echo.
Echo.     Points:%Points%
Echo.      Has Ganado !
Goto :End

:End
Echo.     Gracias por Jugar 
Echo.  Tetris v1 by Jason Haude
Endlocal
Ping -n 3 localhost >nul
Exit

::::::::::::::::::::::::::::::::::::::::::
:Figure1
Set Figure1_Pos1=X6Y2,X6Y1,X7Y1,X7Y0
Set Figure1_Pos2=X7Y1,X8Y1,X6Y0,X7Y0
Set Figure1_Pos3=X6Y2,X6Y1,X7Y1,X7Y0
Set Figure1_Pos4=X7Y1,X8Y1,X6Y0,X7Y0
Set /a "R=(%Random% %% 4)+1"
Set Table=!Figure1_Pos%R%!
For %%b in (%Table%) do (Set "%%b=%Bound%")
Set /a "XToken=0","YToken=0","CurFig=1","RotateLevel=%R%"
Goto :Eof

:Figure2
Set Figure2_Pos1=X7Y2,X6Y1,X7Y1,X6Y0
Set Figure2_Pos2=X6Y1,X7Y1,X7Y0,X8Y0
Set Figure2_Pos3=X7Y2,X6Y1,X7Y1,X6Y0
Set Figure2_Pos4=X6Y1,X7Y1,X7Y0,X8Y0
Set /a "R=(%Random% %% 4)+1"
Set Table=!Figure2_Pos%R%!
For %%b in (%Table%) do (Set "%%b=%Bound%")
Set /a "XToken=0","YToken=0","CurFig=2","RotateLevel=%R%"
Goto :Eof

:Figure3
Set Figure3_Pos1=X7Y1,X8Y1,X7Y0,X8Y0
Set Figure3_Pos2=X7Y1,X8Y1,X7Y0,X8Y0
Set Figure3_Pos3=X7Y1,X8Y1,X7Y0,X8Y0
Set Figure3_Pos4=X7Y1,X8Y1,X7Y0,X8Y0
Set /a "R=(%Random% %% 4)+1"
Set "Table=!Figure3_Pos%R%!"
For %%b in (%Table%) do (Set "%%b=%Bound%")
Set /a "XToken=0","YToken=0","CurFig=3","RotateLevel=%R%"
Goto :Eof

:Figure4
Set Figure4_Pos1=X6Y1,X7Y1,X8Y1
Set Figure4_Pos2=X7Y2,X7Y1,X7Y0
Set Figure4_Pos3=X6Y1,X7Y1,X8Y1
Set Figure4_Pos4=X7Y2,X7Y1,X7Y0
Set /a "R=(%Random% %% 4)+1"
Set Table=!Figure4_Pos%R%!
For %%b in (%Table%) do (Set "%%b=%Bound%")
Set /a "XToken=0","YToken=0","CurFig=4","RotateLevel=%R%"
Goto :Eof

:Figure5
Set Figure5_Pos1=X6Y1,X7Y1,X8Y1,X7Y0
Set Figure5_Pos2=X7Y2,X7Y1,X8Y1,X7Y0
Set Figure5_Pos3=X7Y1,X6Y0,X7Y0,X8Y0
Set Figure5_Pos4=X8Y2,X7Y1,X8Y1,X8Y0
Set /a "R=(%Random% %% 4)+1"
Set Table=!Figure5_Pos%R%!
For %%b in (%Table%) do (Set "%%b=%Bound%")
Set /a "XToken=0","YToken=0","CurFig=5","RotateLevel=%R%"
Goto :Eof

:Figure6
Set Figure6_Pos1=X6Y1,X6Y0,X7Y0,X8Y0
Set Figure6_Pos2=X8Y2,X8Y1,X8Y0,X7Y0
Set Figure6_Pos3=X6Y1,X7Y1,X8Y1,X8Y0
Set Figure6_Pos4=X6Y2,X7Y2,X6Y1,X6Y0
Set /a "R=(%Random% %% 4)+1"
Set Table=!Figure6_Pos%R%!
For %%b in (%Table%) do (Set "%%b=%Bound%")
Set /a "XToken=0","YToken=0","CurFig=6","RotateLevel=%R%"
Goto :Eof

:Figure7
Set Figure7_Pos1=X8Y1,X6Y0,X7Y0,X8Y0
Set Figure7_Pos2=X7Y2,X8Y2,X8Y1,X8Y0
Set Figure7_Pos3=X6Y1,X7Y1,X8Y1,X6Y0
Set Figure7_Pos4=X6Y2,X6Y1,X6Y0,X7Y0
Set /a "R=(%Random% %% 4)+1"
Set Table=!Figure7_Pos%R%!
For %%b in (%Table%) do (Set "%%b=%Bound%")
Set /a "XToken=0","YToken=0","CurFig=7","RotateLevel=%R%"
Goto :Eof

::_0 xx9tYjYxWvxPrXmoLjqfzpxx
::_0 xxxxxXhXxLBINRPFGBaxxxxxx
::_0 xxxxxxxxxxxxxxxxxxxxxxxxx
::_0 xxxxx8jYfZXojYxOtxJvxxxxx
::_0 EjXzofizgxLfmgimfjqYx9GVJ
::_0 xxxJvx8XmgfqlxNxGtyjxRxxx
::_0 xxxxxxxxxxxxxxxxxxxxxxxxx
::_0 xPrXmoLjqfzpx9tms-x7545xxx

:Help
Cls
Echo.
Call :L2 "Goto :Eof"
Echo.
Echo. How to Play Batch Tetris ?
Echo.
Echo. Use keys A,S,D,R,X
Echo.
Echo. A = Move Shape Left
Echo. S = Move Shape Down
Echo. D = Move Shape Rigth
Echo. R = Rotate Shape
Echo. X = Back to Menu Game
Echo.
Echo. 
Pause >nul
Goto :Menu

:Logo
Cls
Color 0b
Echo.
Echo. °°°°°°°°°°°°°°°°°°°°°°°°°°
Echo. °°°°°°°°°°°°°°°°°°°°°°°°°°
:L2
Echo. °°ÛÛÛ°ÛÛÛ°ÛÛÛ°ÛÛ°°Û°°ÛÛ°°°
Echo. °°°Û°°Û°°°°Û°°Û°Û°Û°Û°°°°°
Echo. °°°Û°°ÛÛÛ°°Û°°ÛÛ°°Û°°Û°°°°
Echo. °°°Û°°Û°°°°Û°°Û°Û°Û°°°Û°°°
Echo. °°°Û°°ÛÛÛ°°Û°°Û°Û°Û°ÛÛ°°°°
%~1
Echo. °°°°°°°°°°°°°°°°°°°°°°°°°°
Echo. °°±°°°°°°°°°²°°°°°°°°°°±°°
Echo. °°±°²°°°²²°°²²°°°²²²°°°±°°
Echo. °°±°²²°°°²°°²°°°°°°°°°°±°°
Echo. °°±°°²°°°²°°°°°°²²°°°°°±°°
Echo. °°±°°°°°°°°°°°°°°²²°°°°±°°
Echo. °°±°°°°°°°°²°°°°°°°°°°°±°°
Echo. °°±²°°°°°°°²²²°°°°°°°°°±°°
Echo. °°±²°°²²°°°°°°°²°°°°°°²±°°
Echo. °°±²°°²²°°°°°°²²²°°°²²²±°°
Echo. °°±±±±±±±±±±±±±±±±±±±±±±°°
Echo. °°°°°°°°°°°°°°°°°°°°°°°°°°
Echo. °°°°°: Jason Haude :°°°°°°
Echo. °°°°°  Time.  2018  °°°°°°
Echo. °°°°°°°°°°°°°°°°°°°°°°°°°°
Ping -n 3 0.0.0.0 >nul
Goto :Eof

:trail
Title The Batch Remakes: The Oregon Trail
echo ----------------------------
echo Welcome to The Oregon Trail!
echo ----------------------------
pause
cls
echo -------------------------------------------
echo What is the first name of the wagon leader?
echo -------------------------------------------
set/p name=
echo.
echo Welcome to the trail, %name%
pause
cls
echo -----------------------------------------------------------
echo there are 3 others who decided to come along, who are they?
echo -----------------------------------------------------------
pause
set /p name2=
echo.
echo hi, %name2%
pause
set /p name3=
echo.
echo hi, %name3%
pause
set /p name4=
echo.
echo hi, %name4%
pause
cls
echo -----------------------------------------------------------------------------------
echo Ok, %name%, %name2%, %name3%, and %name4%, you are ready to start your adventure...
echo -----------------------------------------------------------------------------------
pause
goto harp

:harp
echo ----------------------------------------------
echo Many kinds of people made the trip to Oregon..
echo ----------------------------------------------
pause
cls
echo ---------------------------------------------------------------------------------------------------------------------
echo You may: 1.Be a banker from Boston 2.Be a carpenter from Ohio 3.Be a Farmer from Illinois 4. The Best (in my opinion)
echo ---------------------------------------------------------------------------------------------------------------------
echo What is your choice?
echo --------------------

set /p input=
if %input% == 1 goto glorp
if %input% == 2 goto glorp
if %input% == 3 goto glorp
if %input% == 4 goto norp
 
:glorp
echo It is 1848. You're jumping off
echo place for Oregon is Independance,
echo Missouri. You must decide which
echo month to leave Independence.
echo.
echo ----------------------------------------------------
echo 1.March 2.April 3.May 4.June 5.July 6.Ask for Advice
echo ----------------------------------------------------

set /p input=
if %input% == 1 goto heg
if %input% == 2 goto meg
if %input% == 3 goto leg
if %input% == 4 goto carmalita
if %input% == 5 goto height
if %input% == 6 goto chow

:heg
echo You have left in March
pause
goto meta

:meg
echo You have left in April
pause
goto meta

:leg
echo You have left in May
pause
goto meta

:carmalita
echo You have left in June
pause
goto meta

:height
echo You have left in July
pause
goto meta

:chow
echo The townsfolk say go in April
pause
goto glorp

:meta
echo In order to begin your adventure, here's $2,000.00.
echo -------------------------------------------------
pause
cls
echo -------------------------------------------------
echo Go to Matt's General Store before you leave town.
echo -------------------------------------------------
pause
cls
goto matt

:matt
Title Matt's General Store, Independence Misourri
echo ------------------------------------------------------------------------
echo Matt: Welcome! I here you're goin' to Oregon! I can get yah these items.
echo ------------------------------------------------------------------------
pause 
goto items

:items
echo 1. A team of oxen to pull your wagon,
echo -------------------------------------
echo 2. Clothing for both summer and winter,
echo ---------------------------------------
echo 3. Plenty of food for your trip,
echo --------------------------------
echo 4. Ammunition for your rifles,
echo ------------------------------
echo 5. And spare parts for your wagon. 
echo ----------------------------------   

set /p input=
if %input% == 1 goto oxen
if %input% == 2 goto clothes
if %input% == 3 goto food
if %input% == 4 goto bullets
if %input% == 5 goto parts

:oxen
cls
echo There are 2 oxen in a yoke;
echo I recommend at least 3 yoke.
echo I charge 40 a yoke
echo.
echo How many yoke do you want?

set /p input=
if %input% == 3 goto h
if %input% == 6 goto h

:h
echo that'll serve yah well.
echo you need clothes next
pause
goto items

:food
cls
echo I recommend you take at
echo Least 200 pounds of food
echo for each person in your
echo family. I see that you have 
echo 4 people in all. You'll need
echo flour, sugar, bacon, and
echo coffee. My price is 20
echo cents a pound.
echo.
echo How many pound of food do
echo you want?

set /p input=
if %input% == 100 goto g
if %input% == 150 goto g

:g
echo That'll be enough food for about 8 months, your entire journey
echo when you get there, there will be food, I reckon.
echo next you need bullets.
pause
goto items

:clothes
cls
echo You'll need warm clothing in
echo the mountains. I recommend
echo taking at least 2 sets of
echo clothes per person. Each
echo set is $10.00
echo.
echo How many sets of clothes do you want?

set /p input=
if %input% == 8 goto good

:good
echo you should be suited fine with these...
echo go to food...
pause
goto items

:bullets
cls
echo I sell ammunition in boxes
echo of 20 bullets. each box 
echo costs $2.00
echo.
echo How many boxes do
echo you want?

set /p input=
if %input% == 40 goto v
if %input% == 60 goto v

:v
echo You should have a lot of ammo.
pause
echo Finally, go to extra parts in case your wagon breaks down.
goto items

:parts
cls
echo It's a good idea to have a
echo few spare parts for your
echo wagon. Here are the prices:
echo.
echo Wagon wheel: $10 each
echo Wagon axle: $10 each
echo Wagon tongue: $10 each
echo.
echo how many wagon wheels?

set /p input=
if %input% == 3 goto next

:next
echo How many wagon axles?

set /p input=
if %input% ==3 goto next2

:next2
echo And finally, how many wagon tongues?

set /p input=
if %input% == 3 goto next3

:next3
echo Well then, you're ready
echo to start. Good luck!
echo You have a long and
echo difficult journey ahead 
echo of you
pause
goto loader

:loader
echo Loading the wagon.
ping Localhost -n 2 >nul
cls
loading the wagon...
ping Localhost -n 2 >nul
cls
echo COMPLETE!
pause
echo Independence
echo March 1, 1848 
pause
goto bodo

:bodo
Title Independence March 1, 1848
echo Weather: cold
echo Health: good
echo Pace: steady
echo Rations: filling
echo.
echo You may:
echo.
echo 1.Continue on trail
echo 2.Check Supplies
echo 3.Look at map
echo 4.Change pace
echo 5.Change food rations
echo 6.Stop to rest
echo 7.Attempt to trade
echo 8.Talk to people
echo 9.Buy supplies
echo.
echo What is your choice?

set /p input=
if %input% == 1 goto 1
if %input% == 2 goto 2
if %input% == 3 goto 3
if %input% == 4 goto 4
if %input% == 5 goto 5
if %input% == 6 goto 6
if %input% == 7 goto 7
if %input% == 8 goto 8
if %input% == 9 goto 9

:1    
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
pause
echo your wheel has broken down, would you like to fix it?
pause
echo it has been fixed
pause
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo We will cross the river.
pause
goto cross

:cross
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls 
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo Would you like to hunt?
echo Y/N

set /p input=
if %input% == Y goto Huntthem
if %input% == N goto nothunt

:Huntthem
echo Hunting...
pause
echo Hunting..
pause
echo Hunting.
pause
echo You got 40 pounds of meat!!
pause
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls 
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo We are doing well...
pause
echo 7 months later...
Title Willamette, Oregon August 1, 1848
echo Willamette, Oregon, August 1, 1848
pause
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------   
echo     =  ==      == 
ping Localhost -n 2 >nul
cls
echo  =
echo --       -----
echo --    ----    ---
echo ---------       -
echo -   -  ----------
echo =      ==      ==      
echo Finally, Oregon!!!
pause
echo Thanks for playing My version of Oregon Trail. sorry to cut it short...
pause
goto menu



:2
echo You have all of your items.
pause
goto bodo

:3
echo ----------------------------------------
echo - Finish                          echo -
echo -                                 echo -
echo -                                 echo -
echo -                                 echo -
echo -                                 echo -                                 
echo -                                 echo -
echo -                                 echo -
echo -                                 echo -
echo -             you are here ---- | echo -
echo ----------------------------------------

:4
echo changing pace
pause
echo pace upped by 5%
pause
goto bodo

:5
echo rationed for now
pause
goto bodo

:6
echo Ok..
echo 1 Hour later...
pause
goto bodo

:7
echo Local:
echo So you'd like to trade, eh?
echo Trading.
pause
echo Trading..
pause
echo Trading...
pause
echo traded
pause
goto bodo

:8
echo HI, I am winston.
pause
echo so i here you're going to Oregon,
echo I like you..
pause
echo im coming with you
echo (Winston has joined your team)
pause
goto bodo

:9
echo What would you like to trade for
1.meat
2.clothing
3.bullets

set /p input=
if %input% == 1 goto meat
if %input% == 2 goto cloth
if %input% == 3 goto ammo

:meat
echo Trading.
pause
echo Trading..
pause
echo Trading...
pause
echo traded
pause
goto bodo

:cloth
echo Trading.
pause
echo Trading..
pause
echo Trading...
pause
echo traded
pause
goto bodo

:ammo
echo Trading.
pause
echo Trading..
pause
echo Trading...
pause
echo traded
pause
goto bodo






:norp
cls
echo the best is carpenter
pause
goto harp

:exit
echo would you like to keep using Jason Jaguar OS Premium Silver Edition?
echo Yes or No?
pause

set /p input=
if %input% == Yes goto menu
if %input% == No exit

:chess
@title Batch Chess v0.8 By kolto101
@setlocal EnableDelayedExpansion

::  By kolto101   ::
:: Creating batch games is an art ::

:: What I haven't coded but NEEDS to be added ::
REM -Stale/Checkmate System


:: What could be added ::
REM Add game log to save for later.
REM Pawn: Make sure a promoted pawn isn't used in castling.
REM Different colored pieces.
REM Autoupdating [REMarked out in current code due to site issues]
REM LAN Play?
REM Time limit


call :default


:yega
title Batch Chess v0.8 By Kolto101
if exist "tmp.txt" del tmp.txt
if exist "config.bat" call config.bat
set variant=
cls
echo.
echo      _-_ _,,           ,       ,,            ,- _~. ,,                     
echo         -/  )    _    ^|^|       ^|^|           (' /^|   ^|^|                     
echo        ~^|^|_^<    ^< \, =^|^|=  _-_ ^|^|/\\       ((  ^|^|   ^|^|/\\  _-_   _-_,  _-_,
echo         ^|^| \\   /-^|^|  ^|^|  ^|^|   ^|^| ^|^|       ((  ^|^|   ^|^| ^|^| ^|^| \\ ^|^|_.  ^|^|_. 
echo         ,/--^|^| (( ^|^|  ^|^|  ^|^|   ^|^| ^|^|        ( / ^|   ^|^| ^|^| ^|^|/    ~ ^|^|  ~ ^|^|
echo        _--_-'   \/\\  \\, \\,/ \\ ^|/         -____- \\ ^|/ \\,/  ,-_-  ,-_- 
echo       (                          _/                   _/
echo.
echo               ,....,                                        ,....,
echo             ,::::::^<                                        ^>::::::,
echo            ,::/^^\"``.                                      .``"/^^\::,
echo           ,::/, `   O`.        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»        .`O   ` ,\::,
echo          ,::; ^|        '.      º     -Menu-     º      .'        ^| ;::,
echo          ,::^|  \___,-.  o)     ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹     (o  .-,___/  ^|::,
echo          ;::^|     \   '-'      º  1. Play       º      `-'   /     ^|::;
echo          ;::^|      \           º  2. Load Game  º           /      ^|::;
echo          ;::^|   _.=`\          º  3. Configure  º          /`=._   ^|::;
echo          `;:^|.=` _.=`\         º  4. Tutorial   º         /`=._ `=.^|:;"
echo            '^|_.=`   __\        º  5. Playback   º        /__   `=._^|'
echo             `\_..==`` /        º  6. About      º        \ ``==.._/` 
echo              .'.___.-'.        º  7. Exit       º        .'-.___.'.
echo             /          \       ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼       /          \
echo            ('--......--')                              ('--......--')
echo            /'--......--'\                              /'--......--'\
echo            `"--......--"`                              `"--......--"`
set /p choose=^>                              Choose a number:
if "!choose!" == "1" goto play
if "!choose!" == "2" goto loadgame
if "!choose!" == "3" goto config
if "!choose!" == "4" goto tutorial
if "!choose!" == "5" goto gameplayback
if "!choose!" == "6" goto aboutal
if "!choose!" == "7" exit
goto menu


:loadgame
cls
echo.
echo Enter the name of the game you wish to continue.
echo.
echo -b/Back
echo.
set /p name=File name:
if /i "!name!" == "-b" goto menu
if /i not exist "!name!" set name=!name!.sav
if /i not exist "!name!" (
echo.
echo File not found^^!
echo.
pause
goto loadgame
)
set scr=1
set file= 
set rank= 
set tw=White
set tb=Black
set vn=1
for %%d in (piece v_file1 v_file2 v_rank1 v_rank2) do set %%d=
for /l %%r in (1,1,8) do set r%%r=
for /l %%s in (1,1,64) do set a%%s=!bbb!
for /f "tokens=1,2 delims==" %%a in (!name!) do set %%a=%%b
for %%w in (a1 a3 a5 a7 a10 a12 a14 a16 a17 a19 a21 a23 a26 a28 a30 a32 a33 a35 a37 a39 a42 a44 a46 a48 a49 a51 a53 a55 a58 a60 a62 a64) do (
if "!%%w!" == "!bbb!" set %%w=!www!
)
goto game


REM =============================== GAME ===============================

:play
cls
echo.
echo -b/Back
echo.
set /p wplayer=White's name:
if /i "!wplayer!" == "-b" goto menu
echo.
set /p bplayer=Black's name:
if /i "!bplayer!" == "-b" goto play
title Batch Chess - !wplayer! vs. !bplayer!

if exist "tmp.txt" del tmp.txt
set movec=0
set scr=1
set file= 
set rank= 
set vn=1
for %%d in (piece v_file1 v_file2 v_rank1 v_rank2) do set %%d=
set wkingpos=
set bkingpos=
set draw=
for %%r in (a1 a8 a57 a64) do set %%rrook=

if /i "!first!" == "w" (set turn=w) ELSE set turn=b
set tw=White
set tb=Black
set wpieces=16
set bpieces=16

for /l %%s in (1,1,64) do set a%%s=!bbb!
for %%w in (a1 a3 a5 a7 a10 a12 a14 a16 a17 a19 a21 a23 a26 a28 a30 a32 a33 a35 a37 a39 a42 a44 a46 a48 a49 a51 a53 a55 a58 a60 a62 a64) do set %%w=!www!
for /l %%a in (1,1,8) do set f%%a=
for /l %%a in (1,1,8) do set r%%a=

for /l %%p in (9,1,16) do set bpawn%%p=orig
for /l %%p in (49,1,56) do set wpawn%%p=orig

REM White
for /l %%P in (49,1,56) do set a%%P=!wPawn!
for %%R in (a57 a64) do set %%R=!wRook!
for %%K in (a58 a63) do set %%K=!wKnight!
for %%B in (a59 a62) do set %%B=!wBishop!
set a60=!wQueen!
set a61=!wKing!
set wkinglocate=61

REM Black
for /l %%P in (9,1,16) do set a%%P=!bPawn!
for %%R in (a1 a8) do set %%R=!bRook!
for %%K in (a2 a7) do set %%K=!bKnight!
for %%B in (a3 a6) do set %%B=!bBishop!
set a4=!bQueen!
set a5=!bKing!
set bkinglocate=5

:variants
cls
echo.
echo Choose a game type:
echo.
echo 1. Normal Play
echo 2. Last Army Standing
echo 3. Knights and Pawns
echo 4. Bishops and Pawns
echo 5. Rooks and Pawns
echo.
echo b/Back
echo.
set /p choose=Choose a number:
if /i "!choose!" == "b" goto menu
if "!choose!" == "1" goto game
if "!choose!" == "2" (set variant=las) && goto game
if "!choose!" == "3" for %%k in (a1 a2 a3 a4 a6 a7 a8) do set %%k=!bKnight!
if "!choose!" == "3" for %%k in (a57 a58 a59 a60 a62 a63 a64) do set %%k=!wKnight!
if "!choose!" == "4" for %%b in (a1 a2 a3 a4 a6 a7 a8) do set %%b=!bBishop!
if "!choose!" == "4" for %%b in (a57 a58 a59 a60 a62 a63 a64) do set %%b=!wBishop!
if "!choose!" == "5" for %%r in (a1 a2 a3 a4 a6 a7 a8) do set %%r=!bRook!
if "!choose!" == "5" for %%r in (a57 a58 a59 a60 a62 a63 a64) do set %%r=!wRook!
if !choose! GEQ 1 if !choose! LEQ 5 goto game
goto variants



:game
cls
echo.
echo          !t%turn%!'s move [!%turn%player!]
echo.
call :r!scr!
echo.
echo.
echo  k/Let go   L-R/Rotate   o/Options   s/Resign
echo.
choice /c:12345678abcdefghklrso /n
REM Skip turn: if ERRORLEVEL # (if "!turn!" == "w" (set turn=b) ELSE set turn=w) && goto game
if ERRORLEVEL 21 goto options
if ERRORLEVEL 20 goto resign
REM weird bug for 18 and 19...
if "!ERRORLEVEL!"=="19" (set rotater=r) && goto rotater
if "!ERRORLEVEL!"=="18" (set rotater=l) && goto rotater
if ERRORLEVEL 17 goto drop_piece
if ERRORLEVEL 16 (set v_file!vn!=H) && (set seed=8) && (for /l %%a in (1,1,8) do set f%%a= ) && (set f!seed!=!file!) && goto game
if ERRORLEVEL 15 (set v_file!vn!=G) && (set seed=7) && (for /l %%a in (1,1,8) do set f%%a= ) && (set f!seed!=!file!) && goto game
if ERRORLEVEL 14 (set v_file!vn!=F) && (set seed=6) && (for /l %%a in (1,1,8) do set f%%a= ) && (set f!seed!=!file!) && goto game
if ERRORLEVEL 13 (set v_file!vn!=E) && (set seed=5) && (for /l %%a in (1,1,8) do set f%%a= ) && (set f!seed!=!file!) && goto game
if ERRORLEVEL 12 (set v_file!vn!=D) && (set seed=4) && (for /l %%a in (1,1,8) do set f%%a= ) && (set f!seed!=!file!) && goto game
if ERRORLEVEL 11 (set v_file!vn!=C) && (set seed=3) && (for /l %%a in (1,1,8) do set f%%a= ) && (set f!seed!=!file!) && goto game
if ERRORLEVEL 10 (set v_file!vn!=B) && (set seed=2) && (for /l %%a in (1,1,8) do set f%%a= ) && (set f!seed!=!file!) && goto game
if ERRORLEVEL 9  (set v_file!vn!=A) && (set seed=1) && (for /l %%a in (1,1,8) do set f%%a= ) && (set f!seed!=!file!) && goto game
if ERRORLEVEL 8  (set v_rank!vn!=8) && call set plus=0
if ERRORLEVEL 7  (set v_rank!vn!=7) && call set plus=8
if ERRORLEVEL 6  (set v_rank!vn!=6) && call set plus=16
if ERRORLEVEL 5  (set v_rank!vn!=5) && call set plus=24
if ERRORLEVEL 4  (set v_rank!vn!=4) && call set plus=32
if ERRORLEVEL 3  (set v_rank!vn!=3) && call set plus=40
if ERRORLEVEL 2  (set v_rank!vn!=2) && call set plus=48
if ERRORLEVEL 1  (set v_rank!vn!=1) && call set plus=56



for /l %%a in (1,1,8) do set r%%a=
set /a r=(!plus!/8)+1
set r!r!=!rank!
if not defined seed goto game
set /a getpos=!seed!+!plus!
set seed=
set plus=


if defined piece goto moveto
call set piece=%%a%getpos%%%
if "!piece!" == "!bbb!" (set piece=) && goto game
if "!piece!" == "!www!" (set piece=) && goto game

REM Check against picking up other players pieces...

if not "!piece!" == "!%turn%Pawn!" (
if not "!piece!" == "!%turn%Rook!" (
if not "!piece!" == "!%turn%Knight!" (
if not "!piece!" == "!%turn%Bishop!" (
if not "!piece!" == "!%turn%Queen!" (
if not "!piece!" == "!%turn%King!" (
echo.
echo You cannot pick up the other player's pieces^^!
echo.
set illegal=
set piece=
set v_file1=
set v_rank1=
set origpos=
set getpos=
pause
goto game
))))))
set origpos=!getpos!
set vn=2
goto game

:drop_piece
set vn=1
for %%d in (v_file1 v_file2 v_rank1 v_rank2 piece) do set %%d=
goto game

:moveto
set !turn!lastp=
if "!turn!" == "w" (set opp=b) ELSE set opp=w
if "!turn!" == "w" (set ps=-) ELSE set ps=+
if "!getpos!" == "!origpos!" goto samesquare

call set captured=%%a!getpos!%%
if /i "!piece!" == "!%turn%Pawn!" goto pawn_rules
if /i "!piece!" == "!%turn%Rook!" goto rook_rules
if /i "!piece!" == "!%turn%Knight!" goto knight_rules

if /i "!piece!" == "!%turn%Bishop!" goto bishop_rules

if /i "!piece!" == "!%turn%Queen!" goto rook_rules
if /i "!piece!" == "!%turn%King!" goto king_rules
REM Queen is a combination of rook_rules and bishop_rules

REM ========================== Check ==========================
:next
REM Anti-capture-your-own-piece
if "!captured!" == "!%turn%Pawn!" set illegal=true
if "!captured!" == "!%turn%Rook!" set illegal=true
if "!captured!" == "!%turn%Knight!" set illegal=true
if "!captured!" == "!%turn%Bishop!" set illegal=true
if "!captured!" == "!%turn%Queen!" set illegal=true
if "!captured!" == "!%turn%King!" set illegal=true
if /i "!illegal!" == "true" (
echo.
echo You cannot do that^^!
echo.
pause
:samesquare
set vn=1
call set !turn!pawn!origpos!=!prepawn!
for %%d in (illegal piece origpos getpos promo v_rank1 v_rank2 v_file1 v_file2) do set %%d=
goto game
)
set a!origpos!=!bbb!
for %%w in (a1 a3 a5 a7 a10 a12 a14 a16 a17 a19 a21 a23 a26 a28 a30 a32 a33 a35 a37 a39 a42 a44 a46 a48 a49 a51 a53 a55 a58 a60 a62 a64) do (
if "!%%w!" == "!bbb!" set %%w=!www!
)
set a!getpos!=!piece!
if "!variant!" == "las" goto las

:check
REM Knight Moves
set /a v1=!%turn%kinglocate!-15
set /a v2=!%turn%kinglocate!-17
set /a v3=!%turn%kinglocate!-6
set /a v4=!%turn%kinglocate!-10
set /a v5=!%turn%kinglocate!+15
set /a v6=!%turn%kinglocate!+17
set /a v7=!%turn%kinglocate!+6
set /a v8=!%turn%kinglocate!+10
for /l %%c in (1,1,8) do (
call set m=%%a!v%%c!%%
if "!m!" == "!%opp%Knight!" set illegal=true
)
if "!illegal!" == "true" goto badmove

REM Pawn/King
if "!ps!" == "-" (set oppps=+) ELSE set opps=-
set /a v1=!%turn%kinglocate!!ps!9
set /a v2=!%turn%kinglocate!-8
set /a v3=!%turn%kinglocate!!ps!7
set /a v4=!%turn%kinglocate!-1
set /a v5=!%turn%kinglocate!+1
set /a v6=!%turn%kinglocate!!oppps!7
set /a v7=!%turn%kinglocate!+8
set /a v8=!%turn%kinglocate!!oppps!9
for /l %%v in (1,1,8) do (
call set m=%%a!v%%v!%%
if "!m!" == "!%opp%King!" set illegal=true
if "%%v" == "1" if "!m!" == "!%opp%Pawn!" set illegal=true
if "%%v" == "3" if "!m!" == "!%opp%Pawn!" set illegal=true
)
if "!illegal!" == "true" goto badmove

for /l %%v in (1,1,14) do set v%%v=

REM Rook/Queen
REM L and R
call :check_vals
for /l %%v in (1,1,7) do (
set /a seed-=1
set /a n-=1
if !seed! GEQ 1 set v%%v=!n!
)
call :check_vals
for /l %%v in (8,1,14) do (
set /a seed+=1
set /a n+=1
if !seed! LEQ 8 set v%%v=!n!
)
for /l %%v in (7,-1,1) do (
call set m=%%a!v%%v!%%
if "!m!" == "!%opp%Rook!" set illegal=true
if "!m!" == "!%opp%Queen!" set illegal=true
if not "!m!" == "!bbb!" if not "!m!" == "!www!" if not "!m!" == "!%opp%Rook!" if not "!m!" == "!%opp%Queen!" set illegal=
)
if "!illegal!" == "true" goto badmove
for /l %%v in (14,-1,8) do (
call set m=%%a!v%%v!%%
if "!m!" == "!%opp%Rook!" set illegal=true
if "!m!" == "!%opp%Queen!" set illegal=true
if not "!m!" == "!bbb!" if not "!m!" == "!www!" if not "!m!" == "!%opp%Rook!" if not "!m!" == "!%opp%Queen!" set illegal=
)
if "!illegal!" == "true" goto badmove

for /l %%v in (1,1,14) do set v%%v=

REM Up/Down
set n=!%turn%kinglocate!
for /l %%v in (1,1,7) do (
set /a n-=8
if !n! GEQ 1 set v%%v=!n!
)
set n=!%turn%kinglocate!
for /l %%v in (8,1,14) do (
set /a n+=8
if !n! LEQ 64 set v%%v=!n!
)
for /l %%v in (14,-1,8) do (
call set m=%%a!v%%v!%%
if "!m!" == "!%opp%Rook!" set illegal=true
if "!m!" == "!%opp%Queen!" set illegal=true
if not "!m!" == "!bbb!" if not "!m!" == "!www!" if not "!m!" == "!%opp%Rook!" if not "!m!" == "!%opp%Queen!" set illegal=
)
if "!illegal!" == "true" goto badmove
for /l %%v in (7,-1,1) do (
call set m=%%a!v%%v!%%
if "!m!" == "!%opp%Rook!" set illegal=true
if "!m!" == "!%opp%Queen!" set illegal=true
if not "!m!" == "!bbb!" if not "!m!" == "!www!" if not "!m!" == "!%opp%Rook!" if not "!m!" == "!%opp%Queen!" set illegal=
)
if "!illegal!" == "true" goto badmove
for /l %%v in (1,1,28) do set v%%v=



REM Bishop/Queen
call :check_vals
for /l %%v in (1,1,7) do (
set /a seed-=1
set /a n+=7
if !seed! GEQ 1 set v%%v=!n!
)
call :check_vals
for /l %%v in (8,1,14) do (
set /a seed+=1
set /a n-=7
if !seed! LEQ 8 set v%%v=!n!
)
call :check_vals
for /l %%v in (15,1,21) do (
set /a seed-=1
set /a n-=9
if !seed! GEQ 1 set v%%v=!n!
)
call :check_vals
for /l %%v in (22,1,28) do (
set /a seed+=1
set /a n+=9
if !seed! LEQ 8 set v%%v=!n!
)
(set n=28) && (set n2=22)
for /l %%f in (1,1,2) do (
for /l %%v in (!n!,-1,!n2!) do (
call set m=%%a!v%%v!%%
if "!m!" == "!%opp%Bishop!" set illegal=true
if "!m!" == "!%opp%Queen!" set illegal=true
if not "!m!" == "!bbb!" if not "!m!" == "!www!" if not "!m!" == "!%opp%Bishop!" if not "!m!" == "!%opp%Queen!" set illegal=
)
(set n=21) && (set n2=15)
if "!illegal!" == "true" goto badmove
)
(set n=14) && (set n2=8)
for /l %%f in (1,1,2) do (
for /l %%v in (!n!,-1,!n2!) do (
call set m=%%a!v%%v!%%
if "!m!" == "!%opp%Bishop!" set illegal=true
if "!m!" == "!%opp%Queen!" set illegal=true
if not "!m!" == "!bbb!" if not "!m!" == "!www!" if not "!m!" == "!%opp%Bishop!" if not "!m!" == "!%opp%Queen!" set illegal=
)
(set n=7) && (set n2=1)
if "!illegal!" == "true" goto badmove
)


:badmove
if "!illegal!" == "true" (
set a!origpos!=!piece!
set a!getpos!=!captured!
if "!piece!" == "!%turn%King!" set %turn%kinglocate=!origpos!
if "!piece!" == "!%turn%Pawn!" set %turn%pawn%origpos%=!prepawn!
set promo=
set piece=
set origpos=
set getpos=
echo.
echo Your king is either already in check, or you are attempting
echo to make a move that will put your king in check.
echo.
pause
goto game
)
if "!oppcheck!" == "t" exit /b

:las
set lastmove=Last move: [!piece!] !v_file1!!v_rank1!  Ä^!ar!  !v_file2!!v_rank2!
if /i not "!displastmove!" == "On " set lastmove=
echo !piece!-!origpos!-!getpos!>>tmp.txt
if "!turn!" == "!first!" set /a movec+=1

if "!turn!" == "w" (set oppt=b) ELSE set oppt=w
if not "!captured!" == "!www!" if not "!captured!" == "!bbb!" set /a !oppt!pieces-=1
if "!%oppt%pieces!" == "0" (set winner=!turn!) && goto gameover

if "!piece!" == "!%turn%King!" set !turn!kingpos=moved
if "!piece!" == "!%turn%Rook!" set a!origpos!rook=moved
if "!promo!" == "t" call :promo
set piece=
set v_file1=
set v_file2=
set v_rank1=
set v_rank2=
set vn=1
set origpos=
set getpos=
if "!turn!" == "w" (call set turn=b) ELSE call set turn=w
set rotater=r
if /i "!autorotate!" == "On " (call :rotate) && (call :rotate)
goto game


:check_vals
set /a seed=!%turn%kinglocate!%%8
if "!seed!" == "0" set seed=8
set n=!%turn%kinglocate!
exit /b

rem =================================== End of check ===================================

:pawn_rules
set prepawn=!%turn%pawn%origpos%!
set /a v1=!origpos!!ps!8
set /a v2=!origpos!!ps!7
set /a v3=!origpos!!ps!9
set /a v4=!origpos!!ps!16
if not "!getpos!" == "!v1!" (
if not "!getpos!" == "!v2!" (
if not "!getpos!" == "!v3!" (
if not "!getpos!" == "!v4!" (
set illegal=true
goto next
))))
set !turn!pawn!origpos!=moved
REM 2 Spaces
if "!getpos!" == "!v4!" (
if not "!a%v1%!" == "!bbb!" if not "!a%v1%!" == "!www!" set illegal=true
if not "!captured!" == "!bbb!" if not "!captured!" == "!www!" set illegal=true
if not "!prepawn!" == "orig" set illegal=true
if not "!illegal!" == "true" (set !turn!pawn!origpos!=2spaces) && set !turn!lastp=!getpos!
)
REM Straight
if "!getpos!" == "!v1!" if not "!captured!" == "!bbb!" if not "!captured!" == "!www!" set illegal=true
REM Right/Left
if "!getpos!" == "!v2!" goto lfpawn
if "!getpos!" == "!v3!" (
:lfpawn
if "!captured!" == "!bbb!" set illegal=true
if "!captured!" == "!www!" set illegal=true
set /a enp=!getpos!-!ps!8
REM set m=!a%enp%!
if "!a%enp%!" == "!%opp%Pawn!" if "!enp!" == "!%opp%lastp!" (
if "!captured!" == "!bbb!" (set a!enp!=!bbb!) && set illegal=
if "!captured!" == "!www!" (set a!enp!=!bbb!) && set illegal=
)
)
if "!turn!" == "w" for /l %%p in (1,1,8) do if "!getpos!" == "%%p" set promo=t
if "!turn!" == "b" for /l %%p in (57,1,64) do if "!getpos!" == "%%p" set promo=t
goto antiteleport


:rook_rules
set illegal=true
set /a seed=!origpos!%%8
if "!seed!" == "0" set seed=8
set /a seed2=!getpos!%%8
if "!seed2!" == "0" set seed2=8

set s1=-
set s2=GEQ 1
set n=!origpos!

REM Left and Right
if not "!seed!" == "!seed2!" (
if !getpos! GTR !origpos! ((set s1=+) && (set s2=LEQ 8))
for /l %%v in (1,1,7) do (
set /a seed!s1!=1
set /a n!s1!=1
if !seed! %s2% set v%%v=!n!
))

REM Up and Down
if "!seed!" == "!seed2!" (
if !getpos! GTR !origpos! ((set s1=+) && (set s2=LEQ 64))
for /l %%v in (1,1,7) do (
set /a n!s1!=8
if !n! %s2% set v%%v=!n!
))
for /l %%i in (1,1,7) do if "!getpos!" == "!v%%i!" set illegal=

if not "!piece!" == "!%turn%Queen!" if "!illegal!" == "true" goto next

REM Check against jumping over pieces...
if not "!illegal!" == "true" (
for /l %%j in (7,-1,1) do (
call set m=%%a!v%%j!%%
if not "!m!" == "!bbb!" if not "!m!" == "!www!" set illegal=true
if "!getpos!" == "!v%%j!" set illegal=
))
if "!illegal!" == "true" if "!piece!" == "!%turn%Queen!" goto bishop_rules
goto next



:knight_rules
set illegal=true
set /a v1=!origpos!-15
set /a v2=!origpos!-17
set /a v3=!origpos!-6
set /a v4=!origpos!-10
set /a v5=!origpos!+15
set /a v6=!origpos!+17
set /a v7=!origpos!+6
set /a v8=!origpos!+10
for /l %%c in (1,1,8) do if "!getpos!" == "!v%%c!" set illegal=
goto antiteleport


:bishop_rules
set illegal=true

REM Get direction...
set /a seed=!origpos!%%8
if "!seed!" == "0" set seed=8
set c=!seed!
set n=!origpos!
set /a seed2=!getpos!%%8


if "!seed2!" == "0" set seed2=8
if !getpos! GTR !origpos! set s3=+
if !getpos! LSS !origpos! set s3=-

REM echo !origpos! !getpos! !seed! !seed2!

if !seed2! GTR !seed! ((set s1=+) && (set s2=LEQ 8))
if !seed2! LSS !seed! ((set s1=-) && (set s2=GEQ 1))

set inc=7
if "!s1!" == "+" if !getpos! GTR !origpos! set inc=9
if "!s1!" == "-" if !getpos! LSS !origpos! set inc=9

REM echo !s1! !s2! !s3! -- !inc!
REM pause

REM Check for valid moves...
for /l %%v in (1,1,7) do (
set /a c!s1!=1
set /a n=!n!!s3!!inc!
REM echo !c! !s2!  -- !n!
if !c! %s2% set v%%v=!n!
)
for /l %%i in (1,1,7) do if "!getpos!" == "!v%%i!" set illegal=
if "!illegal!" == "true" goto next

REM Check against jumping over pieces...
for /l %%j in (7,-1,1) do (
call set m=%%a!v%%j!%%
if not "!m!" == "!bbb!" if not "!m!" == "!www!" set illegal=true
if "!getpos!" == "!v%%j!" set illegal=
)
goto next

REM queen_rules is a combination of rook_rules and bishop_rules

:king_rules
set illegal=true
set /a v1=!origpos!-9
set /a v2=!origpos!-8
set /a v3=!origpos!-7
set /a v4=!origpos!-1
set /a v5=!origpos!+1
set /a v6=!origpos!+7
set /a v7=!origpos!+8
set /a v8=!origpos!+9
set /a v9=!origpos!-2
set /a v10=!origpos!+2
for /l %%c in (1,1,10) do if "!getpos!" == "!v%%c!" set illegal=

if "!getpos!" == "!v9!" (
if "!%turn%kingpos!" == "moved" (set illegal=true) && goto next
set /a n=!origpos!-3
if "!turn!" == "b" if not "!a1!" == "!%turn%Rook!" set illegal=true
if "!turn!" == "w" if not "!a57!" == "!%turn%Rook!" set illegal=true
if "!turn!" == "b" if "!a1rook!" == "moved" set illegal=true
if "!turn!" == "w" if "!a57rook!" == "moved" set illegal=true
for /l %%r in (!origpos!,-1,!n!) do (
if not "!a%%r!" == "!bbb!" if not "!a%%r!" == "!www!" if not "!a%%r!" == "!%turn%King!" set illegal=true
)
if not "!illegal!" == "true" (
if "!turn!" == "b" (set a1= ) && set a4=!%turn%Rook!
if "!turn!" == "w" (set a57= ) && set a60=!%turn%Rook!
)
goto next
)
if "!getpos!" == "!v10!" (
if "!%turn%kingpos!" == "moved" (set illegal=true) && goto next
set /a n=!origpos!+2
if "!turn!" == "b" if not "!a8!" == "!%turn%Rook!" set illegal=true
if "!turn!" == "w" if not "!a64!" == "!%turn%Rook!" set illegal=true
if "!turn!" == "b" if "!a8rook!" == "moved" set illegal=true
if "!turn!" == "w" if "!a64rook!" == "moved" set illegal=true
for /l %%r in (!origpos!,1,!n!) do (
if not "!a%%r!" == "!bbb!" if not "!a%%r!" == "!www!" if not "!a%%r!" == "!%turn%King!" set illegal=true
)
if not "!illegal!" == "true" (
if "!turn!" == "b" (set a8= ) && set a6=!%turn%Rook!
if "!turn!" == "w" (set a64= ) && set a62=!%turn%Rook!
)
goto next
)


:antiteleport
set /a tele1=!origpos!%%8
if "!tele1!" == "0" set tele1=8
set /a tele2=!getpos!%%8
if "!tele2!" == "0" set tele2=8
set /a anti=!tele1!-!tele2!
if !anti! LSS 0 set /a anti*=-1
if !anti! GTR 2 set illegal=true
if not "!illegal!" == "true" if "!piece!" == "!%turn%King!" set %turn%kinglocate=!getpos!
goto next

:promo
cls
echo.
echo.
call :r!scr!
ping localhost -n 2 >nul
:promo2
cls
echo Your pawn has reached its 8th rank.
echo Promote Pawn to:
echo.
echo 1. Queen
echo 2. Knight
echo 3. Bishop
echo 4. Rook
echo.
set /p choose=Choose a number:
if /i "!choose!" == "1" ((set a!getpos!=!%turn%Queen!) && (set promo=) && exit /b)
if /i "!choose!" == "2" ((set a!getpos!=!%turn%Knight!) && (set promo=) && exit /b)
if /i "!choose!" == "3" ((set a!getpos!=!%turn%Bishop!) && (set promo=) && exit /b)
if /i "!choose!" == "4" ((set a!getpos!=!%turn%Rook!) && (set promo=) && exit /b)
goto promo2

:resign
cls
echo.
echo !%turn%player!, do you really wish to resign?
echo.
set /p choose=[y/n]:
if /i "!choose!" == "n" goto game
if /i "!choose!" == "y" (
if "!turn!" == "w" (set winner=b) ELSE set winner=w
goto gameover
)
goto resign


:rotater
REM Yes, this is necessary to counter a weird bug.
call :rotate
goto game

:rotate
for /l %%a in (1,1,8) do set r%%a=
for /l %%a in (1,1,8) do set f%%a=
if "!rotater!" == "r" set /a scr+=1
if "!rotater!" == "l" set /a scr-=1
if !scr! LSS 1 set scr=4
if !scr! GTR 4 set scr=1
if "!scr!" == "1" (set file= ) && (set rank= )
if "!scr!" == "2" (set rank= ) && (set file= )
if "!scr!" == "3" (set file= ) && (set rank= )
if "!scr!" == "4" (set rank= ) && (set file= )
exit /b

REM Up
:r1
echo          A   B   C   D   E   F   G   H
echo.         !f1!   !f2!   !f3!   !f4!   !f5!   !f6!   !f7!   !f8!
echo        !tlc!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!trc!
echo     8!r1! !ver! !a1! !ve2! !a2! !ve2! !a3! !ve2! !a4! !ve2! !a5! !ve2! !a6! !ve2! !a7! !ve2! !a8! !ver!  8   [!piece!] !v_file1!!v_rank1!  Ä^>  !v_file2!!v_rank2!
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     7!r2! !ver! !a9! !ve2! !a10! !ve2! !a11! !ve2! !a12! !ve2! !a13! !ve2! !a14! !ve2! !a15! !ve2! !a16! !ver!  7   !lastmove!
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     6!r3! !ver! !a17! !ve2! !a18! !ve2! !a19! !ve2! !a20! !ve2! !a21! !ve2! !a22! !ve2! !a23! !ve2! !a24! !ver!  6
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     5!r4! !ver! !a25! !ve2! !a26! !ve2! !a27! !ve2! !a28! !ve2! !a29! !ve2! !a30! !ve2! !a31! !ve2! !a32! !ver!  5
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     4!r5! !ver! !a33! !ve2! !a34! !ve2! !a35! !ve2! !a36! !ve2! !a37! !ve2! !a38! !ve2! !a39! !ve2! !a40! !ver!  4
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     3!r6! !ver! !a41! !ve2! !a42! !ve2! !a43! !ve2! !a44! !ve2! !a45! !ve2! !a46! !ve2! !a47! !ve2! !a48! !ver!  3
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     2!r7! !ver! !a49! !ve2! !a50! !ve2! !a51! !ve2! !a52! !ve2! !a53! !ve2! !a54! !ve2! !a55! !ve2! !a56! !ver!  2
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     1!r8! !ver! !a57! !ve2! !a58! !ve2! !a59! !ve2! !a60! !ve2! !a61! !ve2! !a62! !ve2! !a63! !ve2! !a64! !ver!  1
echo        !blc!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!brc!
echo. 
echo          A   B   C   D   E   F   G   H
exit /b

REM Right
:r2
echo          1   2   3   4   5   6   7   8
echo.         !r8!   !r7!   !r6!   !r5!   !r4!   !r3!   !r2!   !r1!
echo        !tlc!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!trc!
echo     A!f1! !ver! !a57! !ve2! !a49! !ve2! !a41! !ve2! !a33! !ve2! !a25! !ve2! !a17! !ve2! !a9! !ve2! !a1! !ver!  A   [!piece!] !v_file1!!v_rank1!  Ä^>  !v_file2!!v_rank2!
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     B!f2! !ver! !a58! !ve2! !a50! !ve2! !a42! !ve2! !a34! !ve2! !a26! !ve2! !a18! !ve2! !a10! !ve2! !a2! !ver!  B   !lastmove!
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     C!f3! !ver! !a59! !ve2! !a51! !ve2! !a43! !ve2! !a35! !ve2! !a27! !ve2! !a19! !ve2! !a11! !ve2! !a3! !ver!  C
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     D!f4! !ver! !a60! !ve2! !a52! !ve2! !a44! !ve2! !a36! !ve2! !a28! !ve2! !a20! !ve2! !a12! !ve2! !a4! !ver!  D
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     E!f5! !ver! !a61! !ve2! !a53! !ve2! !a45! !ve2! !a37! !ve2! !a29! !ve2! !a21! !ve2! !a13! !ve2! !a5! !ver!  E
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     F!f6! !ver! !a62! !ve2! !a54! !ve2! !a46! !ve2! !a38! !ve2! !a30! !ve2! !a22! !ve2! !a14! !ve2! !a6! !ver!  F
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     G!f7! !ver! !a63! !ve2! !a55! !ve2! !a47! !ve2! !a39! !ve2! !a31! !ve2! !a23! !ve2! !a15! !ve2! !a7! !ver!  G
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     H!f8! !ver! !a64! !ve2! !a56! !ve2! !a48! !ve2! !a40! !ve2! !a32! !ve2! !a24! !ve2! !a16! !ve2! !a8! !ver!  H
echo        !blc!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!brc!
echo. 
echo          1   2   3   4   5   6   7   8
exit /b


REM Down
:r3
echo          H   G   F   E   D   C   B   A
echo.         !f8!   !f7!   !f6!   !f5!   !f4!   !f3!   !f2!   !f1!
echo        !tlc!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!trc!
echo     1!r8! !ver! !a64! !ve2! !a63! !ve2! !a62! !ve2! !a61! !ve2! !a60! !ve2! !a59! !ve2! !a58! !ve2! !a57! !ver!  1   [!piece!] !v_file1!!v_rank1!  Ä^>  !v_file2!!v_rank2!
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     2!r7! !ver! !a56! !ve2! !a55! !ve2! !a54! !ve2! !a53! !ve2! !a52! !ve2! !a51! !ve2! !a50! !ve2! !a49! !ver!  2   !lastmove!
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     3!r6! !ver! !a48! !ve2! !a47! !ve2! !a46! !ve2! !a45! !ve2! !a44! !ve2! !a43! !ve2! !a42! !ve2! !a41! !ver!  3
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     4!r5! !ver! !a40! !ve2! !a39! !ve2! !a38! !ve2! !a37! !ve2! !a36! !ve2! !a35! !ve2! !a34! !ve2! !a33! !ver!  4
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     5!r4! !ver! !a32! !ve2! !a31! !ve2! !a30! !ve2! !a29! !ve2! !a28! !ve2! !a27! !ve2! !a26! !ve2! !a25! !ver!  5
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     6!r3! !ver! !a24! !ve2! !a23! !ve2! !a22! !ve2! !a21! !ve2! !a20! !ve2! !a19! !ve2! !a18! !ve2! !a17! !ver!  6
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     7!r2! !ver! !a16! !ve2! !a15! !ve2! !a14! !ve2! !a13! !ve2! !a12! !ve2! !a11! !ve2! !a10! !ve2! !a9! !ver!  7
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     8!r1! !ver! !a8! !ve2! !a7! !ve2! !a6! !ve2! !a5! !ve2! !a4! !ve2! !a3! !ve2! !a2! !ve2! !a1! !ver!  8
echo        !blc!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!brc!
echo. 
echo          H   G   F   E   D   C   B   A
exit /b


REM Left
:r4
echo          8   7   6   5   4   3   2   1
echo.         !r1!   !r2!   !r3!   !r4!   !r5!   !r6!   !r7!   !r8!
echo        !tlc!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!trc!
echo     A!f1! !ver! !a8! !ve2! !a16! !ve2! !a24! !ve2! !a32! !ve2! !a40! !ve2! !a48! !ve2! !a56! !ve2! !a64! !ver!  A   [!piece!] !v_file1!!v_rank1!  Ä^>  !v_file2!!v_rank2!
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     B!f2! !ver! !a7! !ve2! !a15! !ve2! !a23! !ve2! !a31! !ve2! !a39! !ve2! !a47! !ve2! !a55! !ve2! !a63! !ver!  B   !lastmove!
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     C!f3! !ver! !a6! !ve2! !a14! !ve2! !a22! !ve2! !a30! !ve2! !a38! !ve2! !a46! !ve2! !a54! !ve2! !a62! !ver!  C
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     D!f4! !ver! !a5! !ve2! !a13! !ve2! !a21! !ve2! !a29! !ve2! !a37! !ve2! !a45! !ve2! !a53! !ve2! !a61! !ver!  D
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     E!f5! !ver! !a4! !ve2! !a12! !ve2! !a20! !ve2! !a28! !ve2! !a36! !ve2! !a44! !ve2! !a52! !ve2! !a60! !ver!  E
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     F!f6! !ver! !a3! !ve2! !a11! !ve2! !a19! !ve2! !a27! !ve2! !a35! !ve2! !a43! !ve2! !a51! !ve2! !a59! !ver!  F
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     G!f7! !ver! !a2! !ve2! !a10! !ve2! !a18! !ve2! !a26! !ve2! !a34! !ve2! !a42! !ve2! !a50! !ve2! !a58! !ver!  G
echo        !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!
echo     H!f8! !ver! !a1! !ve2! !a9! !ve2! !a17! !ve2! !a25! !ve2! !a33! !ve2! !a41! !ve2! !a49! !ve2! !a57! !ver!  H
echo        !blc!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!brc!
echo. 
echo          8   7   6   5   4   3   2   1
exit /b



:options
cls
echo.
echo Options
echo.
echo 1. Continue
echo 2. Declare Draw
echo 3. View game history
echo 4. View Pieces
echo 5. Save game for later
echo 6. Take Screenshot [.bat]
echo 7. Quit
echo.
set /p choose=Choose a number:
if "!choose!" == "1" goto game
if "!choose!" == "2" (set draw=true) && goto gameover
if "!choose!" == "3" (
cls
set /a h=!movec!+!movec!+7
if !h! LSS 30 set h=30
mode 80,!h!
echo.
echo Game History
echo.
for /f "tokens=1,2-3 delims=-" %%a in (tmp.txt) do (
set n=1
set l=%%b
for /l %%h in (1,1,2) do ((
set /a filen=!l!%%8
set /a rankn=!l!/8
if not "!filen!" == "0" set /a rankn+=1
if "!filen!" == "1" set file!n!=a
if "!filen!" == "2" set file!n!=b
if "!filen!" == "3" set file!n!=c
if "!filen!" == "4" set file!n!=d
if "!filen!" == "5" set file!n!=e
if "!filen!" == "6" set file!n!=f
if "!filen!" == "7" set file!n!=g
if "!filen!" == "0" set file!n!=h
if "!rankn!" == "1" set rank!n!=8
if "!rankn!" == "2" set rank!n!=7
if "!rankn!" == "3" set rank!n!=6
if "!rankn!" == "4" set rank!n!=5
if "!rankn!" == "5" set rank!n!=4
if "!rankn!" == "6" set rank!n!=3
if "!rankn!" == "7" set rank!n!=2
if "!rankn!" == "8" set rank!n!=1
)
set l=%%c
set n=2
)
echo [%%a] !file1!!rank1! -^> !file2!!rank2!>>temphist.txt
echo [%%a] !file1!!rank1! -^> !file2!!rank2!
)
echo.
set /p save=Save history? [y/n]:
if /i "!save!" == "y" (
echo.
set /p name=Save as:
find /v "exit /b" <temphist.txt> "!name!.txt"
)
if /i exist "temphist.txt" del temphist.txt
mode 80,30
)


if "!choose!" == "4" (
cls
echo.
echo    ÚÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄ¿
echo    ³  Type  ³ White ³ Black ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³  Pawn  ³   !wPawn!   ³   !bPawn!   ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³  Rook  ³   !wRook!   ³   !bRook!   ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³ Knight ³   !wKnight!   ³   !bKnight!   ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³ Bishop ³   !wBishop!   ³   !bBishop!   ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³ Queen  ³   !wQueen!   ³   !bQueen!   ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³  King  ³   !wKing!   ³   !bKing!   ³
echo    ÀÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÙ
echo.
pause
)

if "!choose!" == "5" (
echo.
echo -b/Back
echo.
set /p name=Save game as:
if /i "!name!" == "-b" goto options
echo.
if /i exist "!name!.sav" (
echo.
echo File already exists^^!
echo.
pause
goto options
)
for /l %%s in (1,1,64) do (
if "!a%%s!" == "!bPawn!" echo a%%s=^^!bPawn^^!>>!name!.sav
if "!a%%s!" == "!bRook!" echo a%%s=^^!bRook^^!>>!name!.sav
if "!a%%s!" == "!bKnight!" echo a%%s=^^!bKnight^^!>>!name!.sav
if "!a%%s!" == "!bBishop!" echo a%%s=^^!bBishop^^!>>!name!.sav
if "!a%%s!" == "!bQueen!" echo a%%s=^^!bQueen^^!>>!name!.sav
if "!a%%s!" == "!bKing!" echo a%%s=^^!bKing^^!>>!name!.sav
if "!a%%s!" == "!wPawn!" echo a%%s=^^!wPawn^^!>>!name!.sav
if "!a%%s!" == "!wRook!" echo a%%s=^^!wRook^^!>>!name!.sav
if "!a%%s!" == "!wKnight!" echo a%%s=^^!wKnight^^!>>!name!.sav
if "!a%%s!" == "!wBishop!" echo a%%s=^^!wBishop^^!>>!name!.sav
if "!a%%s!" == "!wQueen!" echo a%%s=^^!wQueen^^!>>!name!.sav
if "!a%%s!" == "!wKing!" echo a%%s=^^!wKing^^!>>!name!.sav
)
for /l %%p in (9,1,16) do echo bpawn%%p=!bpawn%%p!>>!name!.sav
for /l %%p in (49,1,56) do echo wpawn%%p=!wpawn%%p!>>!name!.sav
echo wlastp=!wlastp!>>!name!.sav
echo blastp=!blastp!>>!name!.sav
echo variant=!variant!>>!name!.sav
echo wpieces=!wpieces!>>!name!.sav
echo bpieces=!bpieces!>>!name!.sav
for %%r in (a1 a8 a57 a64) do echo %%rrook=!%%rrook!>>!name!.sav
for %%k in (w b) do echo %%kkinglocate=!%%kkinglocate!>>!name!.sav
for %%k in (w b) do echo %%kkingpos=!%%kkingpos!>>!name!.sav
for %%n in (w b) do echo %%nplayer=!%%nplayer!>>!name!.sav
echo first=!first!>>!name!.sav
echo scr=!scr!>>!name!.sav
echo movec=!movec!>>!name!.sav
echo turn=!turn!>>!name!.sav
echo Game saved to "!name!.sav"
echo.
pause
)
if "!choose!" == "6" (
:scrshot
set ar=Ä
echo.
echo -b/Back
echo.
set /p name=Screenshot name:
if /i "!scr!" == "pbscr" if /i "!name!" == "-b" exit /b
if /i "!name!" == "-b" goto options
REM I'm awesome.
call :r!scr!>screenshot.txt
echo @echo off>>!name!.bat
echo echo.>>!name!.bat
for /f "tokens=1,2 delims=" %%a in (screenshot.txt) do echo echo.%%a>>!name!.bat
echo echo.>>!name!.bat
echo pause^>nul>>!name!.bat
del screenshot.txt
echo.
echo A screenshot of the board has been taken and stored to "!name!.bat"
echo.
pause
set ar=^>
if /i "!scr!" == "pbscr" exit /b
)
if "!choose!" == "7" goto menu
goto options

:gameover
if "!winner!" == "w" (set loser=b) ELSE set loser=w
cls
if not "!draw!" == "true" (
title Batch Chess - !%winner%player! Wins^^!
echo.
echo !%winner%player! [!t%winner%!] wins against !%loser%player! [!t%loser%!] in !movec! moves^^!
echo.
)
if "!draw!" == "true" (
echo.
echo Game ends in a draw.
echo.
)
set /p choose=Save game for playback? [y/n]:
if /i "!choose!" == "n" if exist "tmp.txt" del tmp.txt
if /i "!choose!" == "n" goto menu
if /i "!choose!" == "y" (
echo.
echo -b/Back
echo.
set /p name=Save playback as:
if /i "!name!" == "-b" goto gameover
if exist "!name!.txt" echo !name!.txt already exists!
if exist "!name!.txt" goto gameover
find /v "exit /b" <tmp.txt> "!name!.txt"
if exist "tmp.txt" del tmp.txt
echo.
echo Game playback saved.
echo.
pause
goto menu
)
goto gameover

REM =============================== END OF GAME ===============================

:default

set bf=07
set first=w
set autorotate=Off
set autoupdate=Off
set displastmove=On
call :d1
call :d2
exit /b
:d1
set wPawn=P
set wRook=R
set wKnight=N
set wBishop=B
set wQueen=Q
set wKing=K
set bPawn=p
set bRook=r
set bKnight=n
set bBishop=b
set bQueen=q
set bKing=k
exit /b
:d2
set tlc=É
set trc=»
set blc=È
set brc=¼
set cro=Å
set bar=ÍÍÍ
set ver=º
set tcn=Ñ
set bcn=Ï
set lcn=Ç
set rcn=¶
set ba2=ÄÄÄ
set ve2=³
set www=Û
set bbb=
exit /b

:save
if exist "config.bat" del config.bat
for %%w in (wPawn wRook wKnight wBishop wQueen wKing) do echo set %%w=!%%w!>>config.bat
for %%b in (bPawn bRook bKnight bBishop bQueen bKing) do echo set %%b=!%%b!>>config.bat
for %%B in (ve2 tlc trc blc brc cro bar ver tcn bcn lcn rcn ba2) do echo set %%B=!%%B!>>config.bat
echo set bf=!bf!>>config.bat
echo set first=!first!>>config.bat
echo set autorotate=!autorotate!>>config.bat
REM echo set autoupdate=!autoupdate!>>config.bat
echo set displastmove=!displastmove!>>config.bat
echo set www=!www!>>config.bat
echo set bbb=!bbb!>>config.bat
exit /b


:gameplayback
set ar=^>
echo.
echo Grab some popcorn...
echo.
set /p name=File name [-b/Back]:
if /i "!name!" == "-b" goto menu
if /i not exist "!name!" set name=!name!.txt
if /i not exist "!name!" (
echo.
echo File not found^^!
echo.
pause
goto menu
)
if /i "!name!" == "b" goto menu
echo.
set /p speed=Playback speed [0 = Fastest]:
if /i "!speed!" == "b" goto menu
:marker
echo.
set /p marker=Marker for current piece [3 characters]:
if /i "!marker!" == "b" goto menu
if "!marker:~2!"=="" (
:notthree
echo.
echo The marker must be 3 characters long^^!
echo.
pause
cls
goto marker
)
if not "!marker:~3!"=="" goto notthree

call :scrload
set file1=
set file2=
set rank1=
set rank2=
call :screen

for /f "tokens=1,2-3 delims=-" %%a in (!name!) do (
set piece=!a%%b!
set a%%b=!marker!
set file2=
set rank2=
set /a file1=%%b%%8
set /a rank1=%%b/8
if not "!file1!" == "0" set /a rank1+=1
if "!file1!" == "1" set file1=a
if "!file1!" == "2" set file1=b
if "!file1!" == "3" set file1=c
if "!file1!" == "4" set file1=d
if "!file1!" == "5" set file1=e
if "!file1!" == "6" set file1=f
if "!file1!" == "7" set file1=g
if "!file1!" == "0" set file1=h
set rset=
if "!rank1!" == "1" (set rank1=8) && set rset=t
if "!rank1!" == "2" (set rank1=7) && set rset=t
if "!rank1!" == "3" (set rank1=6) && set rset=t
if "!rank1!" == "4" (set rank1=5) && set rset=t
if not "!rset!" == "t" (
if "!rank1!" == "5" set rank1=4
if "!rank1!" == "6" set rank1=3
if "!rank1!" == "7" set rank1=2
if "!rank1!" == "8" set rank1=1
set rset=
)

call :screen
set a%%b= !bbb!
for %%w in (a1 a3 a5 a7 a10 a12 a14 a16 a17 a19 a21 a23 a26 a28 a30 a32 a33 a35 a37 a39 a42 a44 a46 a48 a49 a51 a53 a55 a58 a60 a62 a64) do (
if "!%%w!" == " !bbb! " set %%w= !www!
)
set a%%c=!marker!
set /a file2=%%c%%8
set /a rank2=%%c/8
if not "!file2!" == "0" set /a rank2+=1
if "!file2!" == "1" set file2=a
if "!file2!" == "2" set file2=b
if "!file2!" == "3" set file2=c
if "!file2!" == "4" set file2=d
if "!file2!" == "5" set file2=e
if "!file2!" == "6" set file2=f
if "!file2!" == "7" set file2=g
if "!file2!" == "0" set file2=h
set rset=
if "!rank2!" == "1" (set rank2=8) && set rset=t
if "!rank2!" == "2" (set rank2=7) && set rset=t
if "!rank2!" == "3" (set rank2=6) && set rset=t
if "!rank2!" == "4" (set rank2=5) && set rset=t
if not "!rset!" == "t" (
if "!rank2!" == "5" set rank2=4
if "!rank2!" == "6" set rank2=3
if "!rank2!" == "7" set rank2=2
if "!rank2!" == "8" set rank2=1
set rset=
)
call :screen
set a%%c=!piece!
call :screen
)
echo.
echo  Game ends.
echo.
ping localhost -n 2 >nul
pause
goto menu

:screen
cls
call :rpbscr
echo.
echo  f/Fast Forward    p/Pause
choice /t:!speed! /d:f /c:pf /n >nul

if "!ERRORLEVEL!" == "1" (
echo.
echo 1. Continue
echo 2. Take Screenshot
echo 3. Quit and go to menu
echo.
set /p choose=Choose a number:
cls
if "!choose!" == "2" set scr=pbscr
if "!choose!" == "2" call :scrshot
if "!choose!" == "3" goto menu
)
exit /b

:rpbscr
echo.
echo          A   B   C   D   E   F   G   H
echo. 
echo        ÉÍÍÍÑÍÍÍÑÍÍÍÑÍÍÍÑÍÍÍÑÍÍÍÑÍÍÍÑÍÍÍ»
echo     8  º!a1!³!a2!³!a3!³!a4!³!a5!³!a6!³!a7!³!a8!º  8    [!piece!] !file1!!rank1! Ä^!ar! !file2!!rank2!
echo        ÇÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄ¶
echo     7  º!a9!³!a10!³!a11!³!a12!³!a13!³!a14!³!a15!³!a16!º  7
echo        ÇÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄ¶
echo     6  º!a17!³!a18!³!a19!³!a20!³!a21!³!a22!³!a23!³!a24!º  6
echo        ÇÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄ¶
echo     5  º!a25!³!a26!³!a27!³!a28!³!a29!³!a30!³!a31!³!a32!º  5
echo        ÇÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄ¶
echo     4  º!a33!³!a34!³!a35!³!a36!³!a37!³!a38!³!a39!³!a40!º  4
echo        ÇÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄ¶
echo     3  º!a41!³!a42!³!a43!³!a44!³!a45!³!a46!³!a47!³!a48!º  3
echo        ÇÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄ¶
echo     2  º!a49!³!a50!³!a51!³!a52!³!a53!³!a54!³!a55!³!a56!º  2
echo        ÇÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄ¶
echo     1  º!a57!³!a58!³!a59!³!a60!³!a61!³!a62!³!a63!³!a64!º  1
echo        ÈÍÍÍÏÍÍÍÏÍÍÍÏÍÍÍÏÍÍÍÏÍÍÍÏÍÍÍÏÍÍÍ¼
echo. 
echo          A   B   C   D   E   F   G   H
exit /b

:scrload
for /l %%s in (1,1,64) do set a%%s= !bbb!
for %%w in (a1 a3 a5 a7 a10 a12 a14 a16 a17 a19 a21 a23 a26 a28 a30 a32 a33 a35 a37 a39 a42 a44 a46 a48 a49 a51 a53 a55 a58 a60 a62 a64) do set %%w= !www!
set piece=


REM Black
for /l %%P in (9,1,16) do set a%%P= !bPawn!
for %%R in (a1 a8) do set %%R= !bRook!
for %%K in (a2 a7) do set %%K= !bKnight!
for %%B in (a3 a6) do set %%B= !bBishop!
set a4= !bQueen!
set a5= !bKing!


REM White
for /l %%P in (49,1,56) do set a%%P= !wPawn!
for %%R in (a57 a64) do set %%R= !wRook!
for %%K in (a58 a63) do set %%K= !wKnight!
for %%B in (a59 a62) do set %%B= !wBishop!
set a60= !wQueen!
set a61= !wKing!
exit /b

::=============================================================================================


:aboutal
title Batch Chess v0.8 By Kolt Koding
cls
echo.
echo                                  Release v0.8
echo.
echo.
echo             Batch Chess                                  __
echo                                                         /  \
echo    Entirely coded and produced by      "We're all       \__/
echo       Kolto101 and Kolt Koding                         /____\     in the game
echo                                           just pawns    ^|  ^|  
echo     ASCII Pawn/left Knight by "jgs"                     ^|__^|    of life."
echo                                                        (====)
echo          Copyright (C) 2012                            }===={
echo                                                       (______)
echo.
echo  Release Notes:
echo.
echo  Tested and works on Windows: XP (with choice.COM), Vista, and 7
echo.
echo  Batch Chess has almost everything that a normal chess game would have,
echo  EXCEPT for a checkmate system. It does, however, have a check system.
echo  It also has many other features, some which are still experimental. Enjoy^^!
echo.
echo  ** PLEASE report ANY bugs or crashes that may occur to: kolto101@gmail.com **
echo.             Visit http://www.koltkoding.tk/ for updates and more
echo.
echo.
echo  b/Back   u/Check for updates   y/Kolto101's Youtube   k/Kolt Koding Website
echo.
set /p choose=Choose a letter:
if /i "!choose!" == "b" goto menu
if /i "!choose!" == "k" start http://www.koltkoding.tk/
if /i "!choose!" == "y" start http://www.youtube.com/user/kolto101/videos
if /i "!choose!" == "u" start http://www.koltkoding.tk/batchchess/
goto aboutal

:config
mode 80,30
cls
echo.
echo  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo  º       Configure       º
echo  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo  º 1. Customize Pieces   º
echo  º 2. Customize Board    º
echo  º 3. Themes             º
echo  º 4. Settings           º
echo  º 5. Debug              º
echo  º                       º
echo  º  Press b to go back   º
echo  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.
set /p choose=Choose a number:
if /i "!choose!" == "b" goto menu
if "!choose!" == "1" goto customize
if "!choose!" == "2" goto customboard
if "!choose!" == "3" goto themes
if "!choose!" == "4" goto settings
if "!choose!" == "5" goto debug
goto config


:settings
mode 80,30
cls
set tw=White
set tb=Black
echo.
echo  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo  º            Settings            º
echo  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo  º                                º
echo  º   1. First turn         !t%first%!  º
echo  º   2. Auto-rotate          !autorotate!  º
echo  º   3. DisplayLastMove      !displastmove!  º
REM echo  º   4. Automatic Updating   !autoupdate!  º
echo  º                                º
echo  º      Press b to go back        º
echo  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.
set /p choose=Choose a number:
if /i "!choose!" == "b" goto config
if "!choose!" == "1" (
if "!first!" == "w" (set first=b) ELSE set first=w
)
if "!choose!" == "2" (
if "!autorotate!" == "Off" (set autorotate=On ) ELSE set autorotate=Off
)
if "!choose!" == "3" (
if "!displastmove!" == "Off" (set displastmove=On ) ELSE set displastmove=Off
)
REM if "!choose!" == "4" (
REM if "!autoupdate!" == "Off" (set autoupdate=On ) ELSE set autoupdate=Off
REM )
call :save
goto settings


:debug
REM Debug by Kolto101 and Kolt Koding
cls
mode 80,30
echo If you are familiar with Batch scripting, then use the debug for whatever.
echo For example, typing "set" would execute the set command and give a full list
echo of variables. Type "(command name here) /?" to find out what a command does.
echo.
echo b/Back
echo.
set /p debug=Debug code:
call :debugcheck
echo.
echo Executing code...
mode 100,10000
@echo on
Prompt $S
%debug%
@echo off
echo.
pause
goto debug

:debugcheck
if not "%debug:~1%"=="" exit /b
if not '%debug%' == 'b' (exit /b) ELSE (
if '%debugexit%' == 'true' (
set debugexit=
goto play)
goto config
)

:themes
set previousbf=%bf%
cls
echo.
echo                           0 = Black      8 = Gray
echo                           1 = Blue       9 = Light Blue
echo                           2 = Green      A = Light Green
echo                           3 = Aqua       B = Light Aqua
echo                           4 = Red        C = Light Red
echo                           5 = Purple     D = Light Purple
echo                           6 = Yellow     E = Light Yellow
echo                           7 = White      F = Bright White
echo.
echo                                  Default: 0A
echo                                  OS Default: 07
echo.
echo               Set the background color and the foreground color.
echo               The first letter/number is the background color,
echo               the second is the foreground. Do not use spaces.
echo.
echo                               Type "m" to go back.
echo.
set /p bf=Set Background/Foreground:
if /i "%bf%" == "m" (
set bf=%previousbf%
goto config)
if %bf% LSS a if %bf% GTR 99 goto themes
if not "%bf:~2%"=="" (
echo The color code cannot be more than 2 characters long.
echo.
pause
goto themes
)
if %bf% GTR FF goto themes
if %bf% LSS 00 goto themes
color %bf%
call :save
goto themes

:customboard
mode 80,30
cls
call :scrload
echo.
echo    Choose a number next to the graphic.         Current Values
echo.
echo     !tlc!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!tcn!!bar!!trc!           1: !tlc!  2: !trc!
echo     !ver!!a1!!ve2!!a2!!ve2!!a3!!ve2!!a4!!ve2!!a5!!ve2!!a6!!ve2!!a7!!ve2!!a8!!ver!
echo     !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!           3: !blc!  4: !brc!
echo     !ver!!a9!!ve2!!a10!!ve2!!a11!!ve2!!a12!!ve2!!a13!!ve2!!a14!!ve2!!a15!!ve2!!a16!!ver!
echo     !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!           5: !cro!  6: !bar!
echo     !ver!!a17!!ve2!!a18!!ve2!!a19!!ve2!!a20!!ve2!!a21!!ve2!!a22!!ve2!!a23!!ve2!!a24!!ver!
echo     !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!           7: !ver!  8: !tcn!
echo     !ver!!a25!!ve2!!a26!!ve2!!a27!!ve2!!a28!!ve2!!a29!!ve2!!a30!!ve2!!a31!!ve2!!a32!!ver!
echo     !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!           9: !bcn! 10: !lcn!
echo     !ver!!a33!!ve2!!a34!!ve2!!a35!!ve2!!a36!!ve2!!a37!!ve2!!a38!!ve2!!a39!!ve2!!a40!!ver!
echo     !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!          11: !rcn! 12: !ba2!
echo     !ver!!a41!!ve2!!a42!!ve2!!a43!!ve2!!a44!!ve2!!a45!!ve2!!a46!!ve2!!a47!!ve2!!a48!!ver!
echo     !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!          13: !ve2!
echo     !ver!!a49!!ve2!!a50!!ve2!!a51!!ve2!!a52!!ve2!!a53!!ve2!!a54!!ve2!!a55!!ve2!!a56!!ver!
echo     !lcn!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!cro!!ba2!!rcn!          14: White Squares - !www!
echo     !ver!!a57!!ve2!!a58!!ve2!!a59!!ve2!!a60!!ve2!!a61!!ve2!!a62!!ve2!!a63!!ve2!!a64!!ver!          15: Black Squares - !bbb!
echo     !blc!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!bcn!!bar!!brc!
echo.
echo.
echo  b/Back   d/Default
echo.
set /p choose=Choose a number:
if /i "!choose!" == "b" goto config
if /i "!choose!" == "d" call :d2
if "!choose!" == "1" (set tochange=tlc) && call :changegraphic
if "!choose!" == "2" (set tochange=trc) && call :changegraphic
if "!choose!" == "3" (set tochange=blc) && call :changegraphic
if "!choose!" == "4" (set tochange=brc) && call :changegraphic
if "!choose!" == "5" (set tochange=cro) && call :changegraphic
if "!choose!" == "6" (set tochange=bar) && call :changegraphic
if "!choose!" == "7" (set tochange=ver) && call :changegraphic
if "!choose!" == "8" (set tochange=tcn) && call :changegraphic
if "!choose!" == "9" (set tochange=bcn) && call :changegraphic
if "!choose!" == "10" (set tochange=lcn) && call :changegraphic
if "!choose!" == "11" (set tochange=rcn) && call :changegraphic
if "!choose!" == "12" (set tochange=ba2) && call :changegraphic
if "!choose!" == "13" (set tochange=ve2) && call :changegraphic
if "!choose!" == "14" (set tochange=www) && call :changegraphic
if "!choose!" == "15" (set tochange=bbb) && call :changegraphic
set bar=!bar:~0,1!!bar:~0,1!!bar:~0,1!
set ba2=!ba2:~0,1!!ba2:~0,1!!ba2:~0,1!
call :save
goto customboard

:customize
mode 80,30
cls
echo.  
echo    ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo    ³                        ³
echo    ³    Customize Pieces    ³
echo    ³                        ³
echo    ÃÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄ´
echo    ³  Type  ³ White ³ Black ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³  Pawn  ³ 1  !wPawn!  ³ 7   !bPawn! ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³  Rook  ³ 2  !wRook!  ³ 8   !bRook! ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³ Knight ³ 3  !wKnight!  ³ 9   !bKnight! ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³ Bishop ³ 4  !wBishop!  ³ 10  !bBishop! ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³ Queen  ³ 5  !wQueen!  ³ 11  !bQueen! ³
echo    ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´
echo    ³  King  ³ 6  !wKing!  ³ 12  !bKing! ³
echo    ÀÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÙ
echo.
echo  b/Back   d/Default
echo.
set /p choose=Choose a number to change the current graphic:
if /i "!choose!" == "b" goto config
if "!choose!" == "1" set tochange=wPawn
if "!choose!" == "2" set tochange=wRook
if "!choose!" == "3" set tochange=wKnight
if "!choose!" == "4" set tochange=wBishop
if "!choose!" == "5" set tochange=wQueen
if "!choose!" == "6" set tochange=wKing
if "!choose!" == "7" set tochange=bPawn
if "!choose!" == "8" set tochange=bRook
if "!choose!" == "9" set tochange=bKnight
if "!choose!" == "10" set tochange=bBishop
if "!choose!" == "11" set tochange=bQueen
if "!choose!" == "12" set tochange=bKing
if !choose! GEQ 1 (
if !choose! LEQ 12 (
call :changegraphic
))
if /i "!choose!" == "d" call :d1 && call :save
goto customize


:changegraphic
cls
echo.
echo Currently editting: !tochange! !%tochange%!
echo.
echo Enter a character below, or choose and extended character.
echo.
echo -b/Back   -s/Open extended characters
echo.
set /p symbol=Chracter:
if /i "!symbol!" == "-b" exit /b
if "!symbol!" == "" goto changegraphic

if not "!symbol:~1!"=="" (
if /i not "!symbol!" == "-s" (
echo You may only use 1 character.
echo.
pause
goto changegraphic
))
if /i "!symbol!" == "-s" call :symbolstart
if /i "!symbol!" == "-s" goto changegraphic

REM add checker against same graphics
set !tochange!=!symbol!
call :save
exit /b




:symbolstart
mode 80,50
cls
call :symbolecho
set symbolnum=
echo b/Back
echo.
set /p symbolnum=Enter the character number to output #
if /i "!symbolnum!" == "b" exit /b

if not !symbolnum! GTR 0 goto symbolstart
if !symbolnum! GTR 254 goto symbolstart
call :symbol
if !symbolnum! GEQ 32 (
if !symbolnum! LEQ 126 (
echo.
echo Characters 32-126 can be accessed via keyboard.
pause>nul
goto symbolstart
))
if "!symbol!" == "N/A" goto symbolstart
:symbolask
cls
echo.
echo Symbol: !symbol!
echo.
echo Would you like to use this symbol?
set /p choose=[y/n]:
if /i "!choose!" == "n" goto symbolstart
if /i "!choose!" == "y" exit /b
goto symbolask

:symbol
set symbol=N/A
if "!symbolnum!" == "1" set symbol= 
if "!symbolnum!" == "2" set symbol= 
if "!symbolnum!" == "3" set symbol= 
if "!symbolnum!" == "4" set symbol= 
if "!symbolnum!" == "5" set symbol= 
if "!symbolnum!" == "6" set symbol= 
if "!symbolnum!" == "11" set symbol= 
if "!symbolnum!" == "12" set symbol= 
if "!symbolnum!" == "14" set symbol= 
if "!symbolnum!" == "15" set symbol= 
if "!symbolnum!" == "16" set symbol= 
if "!symbolnum!" == "17" set symbol= 
if "!symbolnum!" == "18" set symbol= 
if "!symbolnum!" == "19" set symbol= 
if "!symbolnum!" == "20" set symbol= 
if "!symbolnum!" == "21" set symbol= 
if "!symbolnum!" == "22" set symbol= 
if "!symbolnum!" == "23" set symbol= 
if "!symbolnum!" == "24" set symbol= 
if "!symbolnum!" == "25" set symbol= 
if "!symbolnum!" == "27" set symbol= 
if "!symbolnum!" == "28" set symbol= 
if "!symbolnum!" == "29" set symbol= 
if "!symbolnum!" == "30" set symbol= 
if "!symbolnum!" == "31" set symbol= 
REM 32 - 126 are accessible via Keyboard
if "!symbolnum!" == "127" set symbol=
if "!symbolnum!" == "128" set symbol=€
if "!symbolnum!" == "129" set symbol=
if "!symbolnum!" == "130" set symbol=‚
if "!symbolnum!" == "131" set symbol=ƒ
if "!symbolnum!" == "132" set symbol=„
if "!symbolnum!" == "133" set symbol=…
if "!symbolnum!" == "134" set symbol=†
if "!symbolnum!" == "135" set symbol=‡
if "!symbolnum!" == "136" set symbol=ˆ
if "!symbolnum!" == "137" set symbol=‰
if "!symbolnum!" == "138" set symbol=Š
if "!symbolnum!" == "139" set symbol=‹
if "!symbolnum!" == "140" set symbol=Œ
if "!symbolnum!" == "141" set symbol=
if "!symbolnum!" == "142" set symbol=Ž
if "!symbolnum!" == "143" set symbol=
if "!symbolnum!" == "144" set symbol=
if "!symbolnum!" == "145" set symbol=‘
if "!symbolnum!" == "146" set symbol=’
if "!symbolnum!" == "147" set symbol=“
if "!symbolnum!" == "148" set symbol=”
if "!symbolnum!" == "149" set symbol=•
if "!symbolnum!" == "150" set symbol=–
if "!symbolnum!" == "151" set symbol=—
if "!symbolnum!" == "152" set symbol=˜
if "!symbolnum!" == "153" set symbol=™
if "!symbolnum!" == "154" set symbol=š
if "!symbolnum!" == "155" set symbol=›
if "!symbolnum!" == "156" set symbol=œ
if "!symbolnum!" == "157" set symbol=
if "!symbolnum!" == "158" set symbol=ž
if "!symbolnum!" == "159" set symbol=Ÿ
if "!symbolnum!" == "160" set symbol=
if "!symbolnum!" == "161" set symbol=¡
if "!symbolnum!" == "162" set symbol=¢
if "!symbolnum!" == "163" set symbol=£
if "!symbolnum!" == "164" set symbol=¤
if "!symbolnum!" == "165" set symbol=¥
if "!symbolnum!" == "166" set symbol=¦
if "!symbolnum!" == "167" set symbol=§
if "!symbolnum!" == "168" set symbol=¨
if "!symbolnum!" == "169" set symbol=©
if "!symbolnum!" == "170" set symbol=ª
if "!symbolnum!" == "171" set symbol=«
if "!symbolnum!" == "172" set symbol=¬
if "!symbolnum!" == "173" set symbol=­
if "!symbolnum!" == "174" set symbol=®
if "!symbolnum!" == "175" set symbol=¯
if "!symbolnum!" == "176" set symbol=°
if "!symbolnum!" == "177" set symbol=±
if "!symbolnum!" == "178" set symbol=²
if "!symbolnum!" == "179" set symbol=³
if "!symbolnum!" == "180" set symbol=´
if "!symbolnum!" == "181" set symbol=µ
if "!symbolnum!" == "182" set symbol=¶
if "!symbolnum!" == "183" set symbol=·
if "!symbolnum!" == "184" set symbol=¸
if "!symbolnum!" == "185" set symbol=¹
if "!symbolnum!" == "186" set symbol=º
if "!symbolnum!" == "187" set symbol=»
if "!symbolnum!" == "188" set symbol=¼
if "!symbolnum!" == "189" set symbol=½
if "!symbolnum!" == "190" set symbol=¾
if "!symbolnum!" == "191" set symbol=¿
if "!symbolnum!" == "192" set symbol=À
if "!symbolnum!" == "193" set symbol=Á
if "!symbolnum!" == "194" set symbol=Â
if "!symbolnum!" == "195" set symbol=Ã
if "!symbolnum!" == "196" set symbol=Ä
if "!symbolnum!" == "197" set symbol=Å
if "!symbolnum!" == "198" set symbol=Æ
if "!symbolnum!" == "199" set symbol=Ç
if "!symbolnum!" == "200" set symbol=È
if "!symbolnum!" == "201" set symbol=É
if "!symbolnum!" == "202" set symbol=Ê
if "!symbolnum!" == "203" set symbol=Ë
if "!symbolnum!" == "204" set symbol=Ì
if "!symbolnum!" == "205" set symbol=Í
if "!symbolnum!" == "206" set symbol=Î
if "!symbolnum!" == "207" set symbol=Ï
if "!symbolnum!" == "208" set symbol=Ð
if "!symbolnum!" == "209" set symbol=Ñ
if "!symbolnum!" == "210" set symbol=Ò
if "!symbolnum!" == "211" set symbol=Ó
if "!symbolnum!" == "212" set symbol=Ô
if "!symbolnum!" == "213" set symbol=Õ
if "!symbolnum!" == "214" set symbol=Ö
if "!symbolnum!" == "215" set symbol=×
if "!symbolnum!" == "216" set symbol=Ø
if "!symbolnum!" == "217" set symbol=Ù
if "!symbolnum!" == "218" set symbol=Ú
if "!symbolnum!" == "219" set symbol=Û
if "!symbolnum!" == "220" set symbol=Ü
if "!symbolnum!" == "221" set symbol=Ý
if "!symbolnum!" == "222" set symbol=Þ
if "!symbolnum!" == "223" set symbol=ß
if "!symbolnum!" == "224" set symbol=à
if "!symbolnum!" == "225" set symbol=á
if "!symbolnum!" == "226" set symbol=â
if "!symbolnum!" == "227" set symbol=ã
if "!symbolnum!" == "228" set symbol=ä
if "!symbolnum!" == "229" set symbol=å
if "!symbolnum!" == "230" set symbol=æ
if "!symbolnum!" == "231" set symbol=ç
if "!symbolnum!" == "232" set symbol=è
if "!symbolnum!" == "233" set symbol=é
if "!symbolnum!" == "234" set symbol=ê
if "!symbolnum!" == "235" set symbol=ë
if "!symbolnum!" == "236" set symbol=ì
if "!symbolnum!" == "237" set symbol=í
if "!symbolnum!" == "238" set symbol=î
if "!symbolnum!" == "239" set symbol=ï
if "!symbolnum!" == "240" set symbol=ð
if "!symbolnum!" == "241" set symbol=ñ
if "!symbolnum!" == "242" set symbol=ò
if "!symbolnum!" == "243" set symbol=ó
if "!symbolnum!" == "244" set symbol=ô
if "!symbolnum!" == "245" set symbol=õ
if "!symbolnum!" == "246" set symbol=ö
if "!symbolnum!" == "247" set symbol=÷
if "!symbolnum!" == "248" set symbol=ø
if "!symbolnum!" == "249" set symbol=ù
if "!symbolnum!" == "250" set symbol=ú
if "!symbolnum!" == "251" set symbol=û
if "!symbolnum!" == "252" set symbol=ü
if "!symbolnum!" == "253" set symbol=ý
if "!symbolnum!" == "254" set symbol=þ
exit /b

:symbolecho
echo.
echo      1:     2:     3:     4:     5:     6:     11:    12: 
echo.
echo      14:    15:    16:    17:    18:    19:    20:    21: 
echo.
echo      22:    23:    24:    25:    27:    28:    29:    30:  
echo.
echo      31: 
echo.
echo                 Characters 32-126 can be accessed via keyboard.
echo.
echo.
echo      127:    128: €   129:    130: ‚   131: ƒ   132: „   133: …   134: †
echo.
echo      135: ‡   136: ˆ   137: ‰   138: Š   139: ‹   140: Œ   141:    142: Ž
echo.
echo      143:    144:    145: ‘   146: ’   147: “   148: ”   149: •   150: –
echo.
echo      151: —   152: ˜   153: ™   154: š   155: ›   156: œ   157:    158: ž
echo.
echo      159: Ÿ   160:     161: ¡   162: ¢   163: £   164: ¤   165: ¥   166: ¦
echo.
echo      167: §   168: ¨   169: ©   170: ª   171: «   172: ¬   173: ­   174: ®
echo.
echo      175: ¯   176: °   177: ±   178: ²   179: ³   180: ´   181: µ   182: ¶
echo.
echo      183: ·   184: ¸   185: ¹   186: º   187: »   188: ¼   189: ½   190: ¾
echo.
echo      191: ¿   192: À   193: Á   194: Â   195: Ã   196: Ä   197: Å   198: Æ
echo.
echo      199: Ç   200: È   201: É   202: Ê   203: Ë   204: Ì   205: Í   206: Î
echo.
echo      207: Ï   208: Ð   209: Ñ   210: Ò   211: Ó   212: Ô   213: Õ   214: Ö
echo.
echo      215: ×   216: Ø   217: Ù   218: Ú   219: Û   220: Ü   221: Ý   222: Þ
echo.
echo      223: ß   224: à   225: á   226: â   227: ã   228: ä   229: å   230: æ
echo.
echo      231: ç   232: è   233: é   234: ê   235: ë   236: ì   237: í   238: î
echo.
echo      239: ï   240: ð   241: ñ   242: ò   243: ó   244: ô   245: õ   246: ö
echo.
echo      247: ÷   248: ø   249: ù   250: ú   251: û   252: ü   253: ý   254: þ
echo.
echo.
exit /b

:tutorial
cls
echo.
echo Batch Chess is played like normal chess, except there is no checkmate system.
echo There is, however a check system. Each player must manually check to see
echo if their king is in checkmate. If it is, the player must resign.
echo.
echo Would you like to read the rules at: "..wikipedia.org/wiki/Rules_of_chess" ?
echo.
set /p choose=[y/n]:
if /i "!choose!" == "y" start http://en.wikipedia.org/wiki/Rules_of_chess
if /i "!choose!" == "n" goto menu
goto tutorial

:minesweep
@title Buscaminas
  @mode con cols=18 lines=13
  @::MineSweeper v 1
  @::Batch Game
  @::Coded by ::Jason Haude::

if not exist "keyboard.exe" (Goto :NoKey)

:load
setlocal enabledelayedexpansion
set LimX=9
set LimY=9
set IniX=0
set IniY=0
set MovX=0
set MovY=0

:init
for /l %%a in (0,1,%LimX%) do (
for /l %%b in (0,1,%LimY%) do (
set X%%aY%%b=Û
))
for /l %%m in (0,1,9) do (set M%%m=X!random:~-1!Y!random:~-1!)
set X0Y0=
set Last=Û
set Curpos=X0Y0
Goto :First

:Graphic
Call :Clear
:First
for /l %%d in (0,1,%LimY%) do (
for /l %%e in (0,1,%LimX%) do (
set Lin_%%d=!Lin_%%d!!X%%eY%%d!
))
echo.
echo. MineSweeper v 1
echo.
for /l %%f in (0,1,%LimY%) do (echo.   !Lin_%%f!)
if "%EOG%"=="True" Goto :End
keyboard
if "%errorlevel%"=="77" (call :MovX+ "%CurPos%")
if "%errorlevel%"=="75" (call :MovX- "%CurPos%")
if "%errorlevel%"=="80" (call :MovY+ "%CurPos%")
if "%errorlevel%"=="72" (call :MovY- "%CurPos%")
if "%errorlevel%"=="13" (call :Check "%CurPos%")
if "%errorlevel%"=="88" (msg * Thx for Playing MineSweeper v1 by SmartGenius&exit)
if "%errorlevel%"=="120" (msg * Thx for Playing MineSweeper v1 by SmartGenius&exit)
Goto :Graphic

:MovX+
for /f "tokens=1,2 delims=X,Y" %%p in ("%~1") do (
if "%%p"=="%LimX%" Goto :Eof
if !%~1!== set %~1=%Last%
set /a MovX=%%p+1
call set Last=%%X!MovX!Y%%q%%
set X!MovX!Y%%q=
set CurPos=X!MovX!Y%%q
)
Goto :Eof

:MovX-
for /f "tokens=1,2 delims=X,Y" %%p in ("%~1") do (
if "%%p"=="%IniX%" Goto :Eof
if !%~1!== set %~1=%Last%
set /a MovX=%%p-1
call set Last=%%X!MovX!Y%%q%%
set X!MovX!Y%%q=
set CurPos=X!MovX!Y%%q
)
Goto :Eof

:MovY+
for /f "tokens=1,2 delims=X,Y" %%p in ("%~1") do (
if "%%q"=="%LimY%" Goto :Eof
if !%~1!== set %~1=%Last%
set /a MovY=%%q+1
call set Last=%%X%%pY!MovY!%%
set X%%pY!MovY!=
set CurPos=X%%pY!MovY!
)
Goto :Eof

:MovY-
for /f "tokens=1,2 delims=X,Y" %%p in ("%~1") do (
if "%%q"=="%IniY%" Goto :Eof
if !%~1!== set %~1=%Last%
set /a MovY=%%q-1
call set Last=%%X%%pY!MovY!%%
set X%%pY!MovY!=
set CurPos=X%%pY!MovY!
)
Goto :Eof

:Check
for /l %%h in (0,1,9) do (
if "%~1"=="!M%%h!" (
set %~1=
set EOG=True
Goto :Eof
))
set %~1=°
Goto :Eof

:End
msg * You Lost !
pause>nul
exit

:Clear
for /l %%m in (0,1,%LimY%) do (set Lin_%%m=)
Goto :Eof

:NoKey
cls
echo.
echo  A file needed for the correct function
echo  of this Script is missing....
echo.
echo  It will be created...
call :keyboard
echo.
echo  Restart this Script !
echo.
pause
exit

:keyboard
(
echo n keyboard.dat
echo e 0000 4D 5A 2E 00 01 00 00 00 02 00 00 10 FF FF F0 FF
echo e 0010 FE FF 00 00 00 01 F0 FF 1C 00 00 00 00 00 00 00
echo e 0020 B4 08 CD 21 3C 00 75 02 CD 21 B4 4C CD 21
echo rcx
echo 002E
echo w0
echo q
echo.
)>keyboard.dat
type keyboard.dat|debug>NUL 2>&1
del /f/q/a "keyboard.exe">NUL 2>&1
ren keyboard.dat "keyboard.exe"
Goto :Eof


:master
REM Battle stats
set hp=100
set maxhp=100
set monhp=50
set maxmonhp=50

:Start
cls
echo What is thy name, young sir or madam?
set /p name=
echo So your name is %name%!
pause
echo Would you like to battle THE GREAT EVIL?
set /p battle=
if %battle% == yes goto battle
if %battle% == no goto Exit

:battle
cls
echo %name%, it's your move! show him what moves you can do!
echo %name% %hp%/%maxhp% THE GREAT EVIL %monhp%/%maxmonhp%
echo.
echo PRESS P FOR A PUNCH
echo PRESS K FOR A KICK
echo PRESS S TO USE YOUR SWORD
echo PRESS G TO USE YOUR GUN

if %hp% leq 0 goto Loser
if %monhp% leq 0 goto Winner


set /p attack=
if %attack% == p goto Punch
if %attack% == P goto Punch
if %attack% == k goto Kick
if %attack% == K goto Kick
if %attack% == s goto Sword
if %attack% == S goto Sword
if %attack% == g goto Gun
if %attack% == G goto Gun

:Punch
cls
echo PUNCHING!
pause
set /a monhp=%monhp%-%Random% %%15-10%
goto Monster

:Kick
cls
echo KICKING!
pause
set /a monhp=%monhp%-%Random% %%20-10%
goto Monster

:Sword
cls
echo SLASHING!
pause
set /a monhp=%monhp%-%Random% %%25-5
goto Monster

:Gun
cls
echo SHOOTING!
pause
set /a monhp=%monhp%-%Random% %%30-0
goto Monster

:Monster
cls
echo ATTACKING %name%!
pause
set /a hp=%hp%-%Random% %%24-12
goto Battle

:Loser
echo You Lost, %name%.
pause
goto menu

:Winner
echo You Won, %name%. Now our town is safe.
pause
goto menu



























REM 01001001 01100110 00100000 01111001 01101111 01110101 00100000 01100011 01100001 01101110 00100000 01110010 01100101 01100001 01100100 00100000 01110100 01101000 01101001 01110011 00101100 00100000 01111001 01101111 01110101 01110010 00100000 01100001 00100000 01100010 01101001 01100111 00100000 01100110 01100001 01110100 00100000 01101110 01100101 01110010 01100100 00101110 00100000 01100010 01110101 01110100 00100000 01110011 01101111 00100000 01100001 01101101 00100000 01101001 00100000 01100011 01100001 01110101 01110011 01100101 00100000 01101001 00100000 01110111 01110010 01101111 01110100 01100101 00100000 01110100 01101000 01101001 01110011 00101110
REM Alright, read this and then use the development kit of this OS, and start porting to other PC's.





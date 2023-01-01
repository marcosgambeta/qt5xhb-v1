rem
rem Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch para Android
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programação instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instalação do Qt Framework, para a plataforma acima.
set QTDIR=C:\Qt\5.9.2\android_armv7

rem Pasta da instalação do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instalação do compilador C/C++.
rem set CPPDIR=C:\Qt\Tools\mingw492_32

rem --- configuração do NDK ---

rem Pasta da instalação do Android NDK.
set NDKDIR=C:\Android-ndk-r15

rem Definição do toolchain.
set NDKTOOLCHAIN=arm-linux-androideabi-4.9

rem Definição do prefixo do toolchain.
set NDKTOOLCHAINPREFIX=arm-linux-androideabi

rem Definição da versão do GCC.
set NDKGCCVER=4.9

rem Definição da versão da arquitetura.
set NDKGCCARCH=armeabi

rem Definição da API do Android.
set NDKAPIVER=19

rem Definição da arquitetura.
set NDKAPIARCH=arm

rem ---

rem Configura a variável PATH, conforme as variáveis definidas acima.
rem set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Define a plataforma.
set QTPLATFORM=android_armv7

rem Define se é MinGW ou MSVC (mingw, msvc2010, msvc2012 ou msvc2013).
set QTCOMP=mingw

rem Define se é Harbour ou xHarbour (harbour/xharbour).
set HBCOMP=harbour

rem Cria a pasta para as bibliotecas, caso não exista.
if not exist lib mkdir lib
if not exist lib\%QTPLATFORM% mkdir lib\%QTPLATFORM%
if not exist lib\%QTPLATFORM%\%QTCOMP% mkdir lib\%QTPLATFORM%\%QTCOMP%

rem Cria a pasta para os objetos, caso não exista.
if not exist obj mkdir obj
if not exist obj\%QTPLATFORM% mkdir obj\%QTPLATFORM%
if not exist obj\%QTPLATFORM%\%QTCOMP% mkdir obj\%QTPLATFORM%\%QTCOMP%

rem Compila as bibliotecas.
mingw32-make.exe -f makefile_android 1>%QTPLATFORM%_%QTCOMP%-1.log 2>%QTPLATFORM%_%QTCOMP%-2.log

rem Limpa as variáveis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QTPLATFORM=
set QTCOMP=
set HBCOMP=

pause

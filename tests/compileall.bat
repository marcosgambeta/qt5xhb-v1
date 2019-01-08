rem
rem Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
rem
rem Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch to compile all tests
rem

hbmk2 ColorsNames1            %1 %2 %3 ..\qt5xhb.hbc
hbmk2 ColorsNames2            %1 %2 %3 ..\qt5xhb.hbc
hbmk2 ColorsNames3            %1 %2 %3 ..\qt5xhb.hbc
hbmk2 QWebView                %1 %2 %3 ..\qt5xhb.hbc
hbmk2 setfont                 %1 %2 %3 ..\qt5xhb.hbc
hbmk2 testpdf                 %1 %2 %3 ..\qt5xhb.hbc
hbmk2 version                 %1 %2 %3 ..\qt5xhb.hbc

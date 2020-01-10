rem
rem Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
rem
rem Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch to compile all tests
rem

hbmk2 websocket               %1 %2 %3 ..\..\qt5xhb.hbc 
hbmk2 websocketserver         %1 %2 %3 ..\..\qt5xhb.hbc
hbmk2 websocketservermt       %1 %2 %3 ..\..\qt5xhb.hbc -mt

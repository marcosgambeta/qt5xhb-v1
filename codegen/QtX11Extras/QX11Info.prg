%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtX11Extras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=static bool isPlatformX11()
$staticMethod=5,1,0|bool|isPlatformX11|

$prototype=static int appDpiX(int screen=-1)
$staticMethod=5,1,0|int|appDpiX|int=-1

$prototype=static int appDpiY(int screen=-1)
$staticMethod=5,1,0|int|appDpiY|int=-1

$prototype=static unsigned long appRootWindow(int screen=-1)
$staticMethod=5,1,0|unsigned long|appRootWindow|int=-1

$prototype=static int appScreen()
$staticMethod=5,1,0|int|appScreen|

$prototype=static unsigned long appTime()
$staticMethod=5,1,0|unsigned long|appTime|

$prototype=static unsigned long appUserTime()
$staticMethod=5,1,0|unsigned long|appUserTime|

$prototype=static void setAppTime(unsigned long time)
$staticMethod=5,1,0|void|setAppTime|unsigned long

$prototype=static void setAppUserTime(unsigned long time)
$staticMethod=5,1,0|void|setAppUserTime|unsigned long

$prototype=static unsigned long getTimestamp()
$staticMethod=5,1,0|unsigned long|getTimestamp|

$prototype=static Display *display()
$staticMethod=5,1,0|Display *|display|

$prototype=static xcb_connection_t *connection()
$staticMethod=5,1,0|xcb_connection_t *|connection|

$prototype=static QByteArray nextStartupId()
$staticMethod=5,1,0|QByteArray|nextStartupId|

$prototype=static void setNextStartupId(const QByteArray &id)
$staticMethod=5,1,0|void|setNextStartupId|const QByteArray &

$extraMethods

#pragma ENDDUMP

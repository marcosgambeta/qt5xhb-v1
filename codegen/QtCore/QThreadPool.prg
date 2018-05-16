%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD start
   METHOD tryStart
   METHOD expiryTimeout
   METHOD setExpiryTimeout
   METHOD maxThreadCount
   METHOD setMaxThreadCount
   METHOD activeThreadCount
   METHOD reserveThread
   METHOD releaseThread
   METHOD waitForDone
   METHOD clear
   METHOD globalInstance

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QThreadPool(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void start(QRunnable *runnable, int priority = 0)
$method=|void|start|QRunnable *,int=0

$prototype=bool tryStart(QRunnable *runnable)
$method=|bool|tryStart|QRunnable *

$prototype=int expiryTimeout() const
$method=|int|expiryTimeout|

$prototype=void setExpiryTimeout(int expiryTimeout)
$method=|void|setExpiryTimeout|int

$prototype=int maxThreadCount() const
$method=|int|maxThreadCount|

$prototype=void setMaxThreadCount(int maxThreadCount)
$method=|void|setMaxThreadCount|int

$prototype=int activeThreadCount() const
$method=|int|activeThreadCount|

$prototype=void reserveThread()
$method=|void|reserveThread|

$prototype=void releaseThread()
$method=|void|releaseThread|

$prototype=bool waitForDone(int msecs = -1)
$method=|bool|waitForDone|int=-1

$prototype=void clear()
$method=|void|clear|

$prototype=static QThreadPool *globalInstance()
$staticMethod=|QThreadPool *|globalInstance|

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QLockFile(const QString &fileName)
$constructor=5,1,0|new|const QString &

$deleteMethod=5,1,0

$prototype=bool lock()
$method=5,1,0|bool|lock|

$prototype=bool tryLock(int timeout = 0)
$method=5,1,0|bool|tryLock|int=0

$prototype=void unlock()
$method=5,1,0|void|unlock|

$prototype=void setStaleLockTime(int)
$method=5,1,0|void|setStaleLockTime|int

$prototype=int staleLockTime() const
$method=5,1,0|int|staleLockTime|

$prototype=bool isLocked() const
$method=5,1,0|bool|isLocked|

$prototype=bool getLockInfo(qint64 *pid, QString *hostname, QString *appname) const
%% TODO: revisar implementacao do metodo e corrigir(?)
%% $method=5,1,0|bool|getLockInfo|qint64 *,QString *,QString *

$prototype=bool removeStaleLockFile()
$method=5,1,0|bool|removeStaleLockFile|

$extraMethods

#pragma ENDDUMP

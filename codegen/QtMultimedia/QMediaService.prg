%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMediaService(QObject* parent) [protected]

$prototype=QMediaService(QMediaServicePrivate &dd, QObject *parent) [protected]

$prototype=~QMediaService()
$deleteMethod

$prototype=virtual void releaseControl(QMediaControl * control) = 0
$virtualMethod=|void|releaseControl|QMediaControl *

$prototype=virtual QMediaControl * requestControl(const char * interface) = 0
$virtualMethod=|QMediaControl *|requestControl|const char *

#pragma ENDDUMP

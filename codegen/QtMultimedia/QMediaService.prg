%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTROL
#endif

CLASS QMediaService INHERIT QObject

%%   METHOD new
   METHOD delete

   METHOD releaseControl
   METHOD requestControl

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMediaService(QObject* parent) (protected)

$prototype=QMediaService(QMediaServicePrivate &dd, QObject *parent) (protected)

$prototype=~QMediaService()
$deleteMethod

$prototype=virtual void releaseControl(QMediaControl * control) = 0
$virtualMethod=|void|releaseControl|QMediaControl *

$prototype=virtual QMediaControl * requestControl(const char * interface) = 0
$virtualMethod=|QMediaControl *|requestControl|const char *

#pragma ENDDUMP

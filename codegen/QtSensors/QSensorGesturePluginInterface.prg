%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORGESTURERECOGNIZER
#endif

CLASS QSensorGesturePluginInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createRecognizers
   METHOD supportedIds
   METHOD name

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=virtual QList <QSensorGestureRecognizer *> createRecognizers() = 0
$virtualMethod=5,1,0|QList<QSensorGestureRecognizer *>|createRecognizers|

$prototype=virtual QStringList supportedIds() const = 0
$virtualMethod=5,1,0|QStringList|supportedIds|

$prototype=virtual QString name() const = 0
$virtualMethod=|QString|name|

$extraMethods

#pragma ENDDUMP

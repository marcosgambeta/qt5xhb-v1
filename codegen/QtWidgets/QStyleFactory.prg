%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTYLE
#endif

CLASS QStyleFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStyle>

$deleteMethod

$prototype=static QStyle * create(const QString & key)
$staticMethod=|QStyle *|create|const QString &

$prototype=static QStringList keys()
$staticMethod=|QStringList|keys|

$extraMethods

#pragma ENDDUMP

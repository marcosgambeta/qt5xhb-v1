%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
#endif

CLASS QItemEditorCreatorBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createWidget
   METHOD valuePropertyName

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

$deleteMethod

$prototype=virtual QWidget *createWidget(QWidget *parent) const = 0
$virtualMethod=|QWidget *|createWidget|QWidget *

$prototype=virtual QByteArray valuePropertyName() const = 0
$virtualMethod=|QByteArray|valuePropertyName|

$extraMethods

#pragma ENDDUMP

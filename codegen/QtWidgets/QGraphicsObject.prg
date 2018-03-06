%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QGraphicsObject INHERIT QObject,QGraphicsItem

   METHOD delete
   METHOD grabGesture
   METHOD ungrabGesture

   METHOD onEnabledChanged
   METHOD onOpacityChanged
   METHOD onParentChanged
   METHOD onRotationChanged
   METHOD onScaleChanged
   METHOD onVisibleChanged
   METHOD onXChanged
   METHOD onYChanged
   METHOD onZChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
$method=|void|grabGesture|Qt::GestureType,Qt::GestureFlags=Qt::GestureFlags()

$prototype=void ungrabGesture ( Qt::GestureType gesture )
$method=|void|ungrabGesture|Qt::GestureType

$connectSignalFunction

$signalMethod=|enabledChanged()
$signalMethod=|opacityChanged()
$signalMethod=|parentChanged()
$signalMethod=|rotationChanged()
$signalMethod=|scaleChanged()
$signalMethod=|visibleChanged()
$signalMethod=|xChanged()
$signalMethod=|yChanged()
$signalMethod=|zChanged()

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QGraphicsColorizeEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD color
   METHOD strength
   METHOD setColor
   METHOD setStrength

   METHOD onColorChanged
   METHOD onStrengthChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsColorizeEffect ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QColor color () const
$method=|QColor|color|

$prototype=qreal strength () const
$method=|qreal|strength|

$prototype=void setColor ( const QColor & c )
$method=|void|setColor|const QColor &

$prototype=void setStrength ( qreal strength )
$method=|void|setStrength|qreal

$connectSignalFunction

$signalMethod=|colorChanged(QColor)
$signalMethod=|strengthChanged(qreal)

#pragma ENDDUMP

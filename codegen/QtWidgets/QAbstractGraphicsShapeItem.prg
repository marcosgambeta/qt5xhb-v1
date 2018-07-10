%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QBrush>
#include <QPen>

$deleteMethod

$prototype=QBrush brush () const
$method=|QBrush|brush|

$prototype=void setBrush ( const QBrush & brush )
$method=|void|setBrush|const QBrush &

$prototype=QPen pen () const
$method=|QPen|pen|

$prototype=void setPen ( const QPen & pen )
$method=|void|setPen|const QPen &

$prototype=bool isObscuredBy ( const QGraphicsItem * item ) const
$method=|bool|isObscuredBy|const QGraphicsItem *

$prototype=QPainterPath opaqueArea () const
$method=|QPainterPath|opaqueArea|

#pragma ENDDUMP

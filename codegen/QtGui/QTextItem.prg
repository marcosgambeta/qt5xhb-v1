%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD delete
   METHOD descent
   METHOD ascent
   METHOD width
   METHOD renderFlags
   METHOD text
   METHOD font

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=qreal descent() const
$method=|qreal|descent|

$prototype=qreal ascent() const
$method=|qreal|ascent|

$prototype=qreal width() const
$method=|qreal|width|

$prototype=RenderFlags renderFlags() const
$method=|QTextItem::RenderFlags|renderFlags|

$prototype=QString text() const
$method=|QString|text|

$prototype=QFont font() const
$method=|QFont|font|

$extraMethods

#pragma ENDDUMP

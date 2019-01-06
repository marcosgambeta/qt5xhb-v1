%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

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

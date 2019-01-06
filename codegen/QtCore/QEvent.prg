%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QEvent ( Type type )
$constructor=|new|QEvent::Type

$deleteMethod

$prototype=void accept ()
$method=|void|accept|

$prototype=void ignore ()
$method=|void|ignore|

$prototype=bool isAccepted () const
$method=|bool|isAccepted|

$prototype=void setAccepted ( bool accepted )
$method=|void|setAccepted|bool

$prototype=bool spontaneous () const
$method=|bool|spontaneous|

$prototype=Type type () const
$method=|QEvent::Type|type|

$prototype=static int registerEventType ( int hint = -1 )
$staticMethod=|int|registerEventType|int=-1

$extraMethods

#pragma ENDDUMP

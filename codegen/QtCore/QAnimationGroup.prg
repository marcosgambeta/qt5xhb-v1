%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAnimation

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void addAnimation ( QAbstractAnimation * animation )
$method=|void|addAnimation|QAbstractAnimation *

$prototype=QAbstractAnimation * animationAt ( int index ) const
$method=|QAbstractAnimation *|animationAt|int

$prototype=int animationCount () const
$method=|int|animationCount|

$prototype=void clear ()
$method=|void|clear|

$prototype=int indexOfAnimation ( QAbstractAnimation * animation ) const
$method=|int|indexOfAnimation|QAbstractAnimation *

$prototype=void insertAnimation ( int index, QAbstractAnimation * animation )
$method=|void|insertAnimation|int,QAbstractAnimation *

$prototype=void removeAnimation ( QAbstractAnimation * animation )
$method=|void|removeAnimation|QAbstractAnimation *

$prototype=QAbstractAnimation * takeAnimation ( int index )
$method=|QAbstractAnimation *|takeAnimation|int

#pragma ENDDUMP

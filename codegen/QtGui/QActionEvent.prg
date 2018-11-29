%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>

$prototype=QActionEvent ( int type, QAction * action, QAction * before = 0 )
$constructor=|new|int,QAction *,QAction *=0

$deleteMethod

$prototype=QAction * action () const
$method=|QAction *|action|

$prototype=QAction * before () const
$method=|QAction *|before|

#pragma ENDDUMP

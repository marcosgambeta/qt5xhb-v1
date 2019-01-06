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

$beginClassFrom=QAnimationGroup

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QParallelAnimationGroup ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual int duration () const
$virtualMethod=|int|duration|

#pragma ENDDUMP

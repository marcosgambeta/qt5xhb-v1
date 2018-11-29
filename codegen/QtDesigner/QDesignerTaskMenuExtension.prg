%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>

$deleteMethod

$prototype=virtual QAction * preferredEditAction () const
$virtualMethod=|QAction *|preferredEditAction|

$prototype=virtual QList<QAction *> taskActions () const = 0
$virtualMethod=|QList<QAction *>|taskActions|

$extraMethods

#pragma ENDDUMP

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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QList<QOpenGLContext *> shares() const
$method=|QList<QOpenGLContext *>|shares|

$prototype=static QOpenGLContextGroup *currentContextGroup()
$staticMethod=|QOpenGLContextGroup *|currentContextGroup|

#pragma ENDDUMP

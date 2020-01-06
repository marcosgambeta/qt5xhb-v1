%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QGesture>

$deleteMethod

$prototype=virtual QGesture * create(QObject * target)
$virtualMethod=|QGesture *|create|QObject *

$prototype=virtual Result recognize(QGesture * gesture, QObject * watched, QEvent * event) = 0
$virtualMethod=|QGestureRecognizer::Result|recognize|QGesture *,QObject *,QEvent *

$prototype=virtual void reset(QGesture * gesture)
$virtualMethod=|void|reset|QGesture *

$prototype=static Qt::GestureType registerRecognizer(QGestureRecognizer * recognizer)
$staticMethod=|Qt::GestureType|registerRecognizer|QGestureRecognizer *

$prototype=static void unregisterRecognizer(Qt::GestureType type)
$staticMethod=|void|unregisterRecognizer|Qt::GestureType

$extraMethods

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAxis

   METHOD new
   METHOD delete

   METHOD format
   METHOD max
   METHOD min
   METHOD setFormat
   METHOD setMax
   METHOD setMin
   METHOD setRange
   METHOD setTickCount
   METHOD tickCount
   METHOD type

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QDateTime>

using namespace QtCharts;

$prototype=explicit QDateTimeAxis(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

$prototype=QDateTimeAxis(QDateTimeAxisPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=~QDateTimeAxis()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(QDateTime min READ min WRITE setMin NOTIFY minChanged)
%%

$prototype=QDateTime min() const
$method=5,7,0|QDateTime|min|

$prototype=void setMin(QDateTime min)
$method=5,7,0|void|setMin|QDateTime

%%
%% Q_PROPERTY(QDateTime max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototype=QDateTime max() const
$method=5,7,0|QDateTime|max|

$prototype=void setMax(QDateTime max)
$method=5,7,0|void|setMax|QDateTime

%%
%% Q_PROPERTY(QString format READ format WRITE setFormat NOTIFY formatChanged)
%%

$prototype=QString format() const
$method=5,7,0|QString|format|

$prototype=void setFormat(QString format)
$method=5,7,0|void|setFormat|QString

%%
%% Q_PROPERTY(int tickCount READ tickCount WRITE setTickCount NOTIFY tickCountChanged)
%%

$prototype=int tickCount() const
$method=5,7,0|int|tickCount|

$prototype=void setTickCount(int count)
$method=5,7,0|void|setTickCount|int

%%
%%
%%

$prototype=AxisType type() const
$method=5,7,0|QAbstractAxis::AxisType|type|

$prototype=void setRange(QDateTime min, QDateTime max)
$method=5,7,0|void|setRange|QDateTime,QDateTime

$beginSignals
$signal=5,7,0|formatChanged(QString)
$signal=5,7,0|maxChanged(QDateTime)
$signal=5,7,0|minChanged(QDateTime)
$signal=5,7,0|rangeChanged(QDateTime,QDateTime)
$signal=5,7,0|tickCountChanged(int)
$endSignals

#pragma ENDDUMP

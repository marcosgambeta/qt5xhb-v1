%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QDateTimeAxis INHERIT QAbstractAxis

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

   METHOD onFormatChanged
   METHOD onMaxChanged
   METHOD onMinChanged
   METHOD onRangeChanged
   METHOD onTickCountChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QDateTimeAxis(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=QDateTimeAxis(QDateTimeAxisPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=~QDateTimeAxis()
$deleteMethod

%%
%% Q_PROPERTY(QDateTime min READ min WRITE setMin NOTIFY minChanged)
%%

$prototype=QDateTime min() const
$method=|QDateTime|min|

$prototype=void setMin(QDateTime min)
$method=|void|setMin|QDateTime

%%
%% Q_PROPERTY(QDateTime max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototype=QDateTime max() const
$method=|QDateTime|max|

$prototype=void setMax(QDateTime max)
$method=|void|setMax|QDateTime

%%
%% Q_PROPERTY(QString format READ format WRITE setFormat NOTIFY formatChanged)
%%

$prototype=QString format() const
$method=|QString|format|

$prototype=void setFormat(QString format)
$method=|void|setFormat|QString

%%
%% Q_PROPERTY(int tickCount READ tickCount WRITE setTickCount NOTIFY tickCountChanged)
%%

$prototype=int tickCount() const
$method=|int|tickCount|

$prototype=void setTickCount(int count)
$method=|void|setTickCount|int

%%
%%
%%

$prototype=AxisType type() const
$method=|QAbstractAxis::AxisType|type|

$prototype=void setRange(QDateTime min, QDateTime max)
$method=|void|setRange|QDateTime,QDateTime

#pragma ENDDUMP

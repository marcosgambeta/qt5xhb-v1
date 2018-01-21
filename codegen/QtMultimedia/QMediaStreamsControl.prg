%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMediaStreamsControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD isActive
   METHOD metaData
   METHOD setActive
   METHOD streamCount
   METHOD streamType

   METHOD onActiveStreamsChanged
   METHOD onStreamsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaStreamsControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QMediaStreamsControl()
$deleteMethod

$prototype=virtual bool isActive(int streamNumber) = 0
$virtualMethod=|bool|isActive|int

$prototype=virtual QVariant metaData(int streamNumber, const QString & key) = 0
$virtualMethod=|QVariant|metaData|int,const QString &

$prototype=virtual void setActive(int streamNumber, bool state) = 0
$virtualMethod=|void|setActive|int,bool

$prototype=virtual int streamCount() = 0
$virtualMethod=|int|streamCount|

$prototype=virtual StreamType streamType(int streamNumber) = 0
$virtualMethod=|QMediaStreamsControl::StreamType|streamType|int

#pragma ENDDUMP

%% Q_SIGNALS:
%% void streamsChanged();
%% void activeStreamsChanged();

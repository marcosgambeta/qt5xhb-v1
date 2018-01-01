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

CLASS QSensorReading INHERIT QObject

   METHOD delete
   METHOD timestamp
   METHOD setTimestamp
   METHOD valueCount
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=quint64 timestamp() const
$method=5,1,0|quint64|timestamp|

$prototype=void setTimestamp(quint64 timestamp)
$method=5,1,0|void|setTimestamp|quint64

$prototype=int valueCount() const
$method=5,1,0|int|valueCount|

$prototype=QVariant value(int index) const
$method=5,1,0|QVariant|value|int

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMediaAvailabilityControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete
   METHOD availability

   METHOD onAvailabilityChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaAvailabilityControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QMediaAvailabilityControl()
$deleteMethod

$prototype=virtual QMultimedia::AvailabilityStatus availability() const = 0
$virtualMethod=|QMultimedia::AvailabilityStatus|availability|

#pragma ENDDUMP

%% Q_SIGNALS:
%% void availabilityChanged(QMultimedia::AvailabilityStatus availability);

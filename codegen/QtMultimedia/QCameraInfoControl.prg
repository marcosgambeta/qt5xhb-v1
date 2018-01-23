%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCameraInfoControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD cameraOrientation
   METHOD cameraPosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraInfoControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QCameraInfoControl()
$deleteMethod

$prototype=virtual QCamera::Position cameraPosition(const QString &deviceName) const = 0
$virtualMethod=|QCamera::Position|cameraPosition|const QString &

$prototype=virtual int cameraOrientation(const QString &deviceName) const = 0
$virtualMethod=|int|cameraOrientation|const QString &

#pragma ENDDUMP

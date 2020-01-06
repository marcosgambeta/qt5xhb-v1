%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,3,0

$prototype=explicit QCameraInfoControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QCameraInfoControl()
$deleteMethod=5,3,0

$prototype=virtual QCamera::Position cameraPosition(const QString &deviceName) const = 0
$virtualMethod=5,3,0|QCamera::Position|cameraPosition|const QString &

$prototype=virtual int cameraOrientation(const QString &deviceName) const = 0
$virtualMethod=5,3,0|int|cameraOrientation|const QString &

#pragma ENDDUMP

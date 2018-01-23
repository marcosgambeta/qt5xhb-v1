%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCameraViewfinderSettingsControl2 INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD setViewfinderSettings
   METHOD supportedViewfinderSettings
   METHOD viewfinderSettings

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraViewfinderSettingsControl2(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QCameraViewfinderSettingsControl2()
$deleteMethod

$prototype=virtual QList<QCameraViewfinderSettings> supportedViewfinderSettings() const = 0
$virtualMethod=|QList<QCameraViewfinderSettings>|supportedViewfinderSettings|

$prototype=virtual QCameraViewfinderSettings viewfinderSettings() const = 0
$virtualMethod=|QCameraViewfinderSettings|viewfinderSettings|

$prototype=virtual void setViewfinderSettings(const QCameraViewfinderSettings &settings) = 0
$virtualMethod=|void|setViewfinderSettings|const QCameraViewfinderSettings &

#pragma ENDDUMP

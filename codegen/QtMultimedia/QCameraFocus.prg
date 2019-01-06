%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCameraFocus(QCamera *camera) [private]

$prototype=~QCameraFocus() [private]

%%
%% Q_PROPERTY(FocusModes focusMode READ focusMode WRITE setFocusMode)
%%

$prototype=FocusModes focusMode() const
$method=|QCameraFocus::FocusModes|focusMode|

$prototype=void setFocusMode(FocusModes mode)
$method=|void|setFocusMode|QCameraFocus::FocusModes

%%
%% Q_PROPERTY(FocusPointMode focusPointMode READ focusPointMode WRITE setFocusPointMode)
%%

$prototype=FocusPointMode focusPointMode() const
$method=|QCameraFocus::FocusPointMode|focusPointMode|

$prototype=void setFocusPointMode(FocusPointMode mode)
$method=|void|setFocusPointMode|QCameraFocus::FocusPointMode

%%
%% Q_PROPERTY(QPointF customFocusPoint READ customFocusPoint WRITE setCustomFocusPoint)
%%

$prototype=QPointF customFocusPoint() const
$method=|QPointF|customFocusPoint|

$prototype=void setCustomFocusPoint(const QPointF & point)
$method=|void|setCustomFocusPoint|const QPointF &

%%
%% Q_PROPERTY(QCameraFocusZoneList focusZones READ focusZones NOTIFY focusZonesChanged)
%%

$prototype=QCameraFocusZoneList focusZones() const
$method=|QCameraFocusZoneList|focusZones|

%%
%% Q_PROPERTY(qreal opticalZoom READ opticalZoom NOTIFY opticalZoomChanged)
%%

$prototype=qreal opticalZoom() const
$method=|qreal|opticalZoom|

%%
%% Q_PROPERTY(qreal digitalZoom READ digitalZoom NOTIFY digitalZoomChanged)
%%

$prototype=qreal digitalZoom() const
$method=|qreal|digitalZoom|

%%
%%
%%

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

$prototype=bool isFocusModeSupported(FocusModes mode) const
$method=|bool|isFocusModeSupported|QCameraFocus::FocusModes

$prototype=bool isFocusPointModeSupported(FocusPointMode mode) const
$method=|bool|isFocusPointModeSupported|QCameraFocus::FocusPointMode

$prototype=qreal maximumDigitalZoom() const
$method=|qreal|maximumDigitalZoom|

$prototype=qreal maximumOpticalZoom() const
$method=|qreal|maximumOpticalZoom|

$prototype=void zoomTo(qreal opticalZoom, qreal digitalZoom)
$method=|void|zoomTo|qreal,qreal

$beginSignals
$signal=|digitalZoomChanged(qreal)
$signal=|focusZonesChanged()
$signal=|maximumDigitalZoomChanged(qreal)
$signal=|maximumOpticalZoomChanged(qreal)
$signal=|opticalZoomChanged(qreal)
$endSignals

#pragma ENDDUMP

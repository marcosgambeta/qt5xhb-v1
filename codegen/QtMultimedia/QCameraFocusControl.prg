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

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraFocusControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QCameraFocusControl()
$deleteMethod

$prototype=virtual QPointF customFocusPoint() const = 0
$virtualMethod=|QPointF|customFocusPoint|

$prototype=virtual QCameraFocus::FocusModes focusMode() const = 0
$virtualMethod=|QCameraFocus::FocusModes|focusMode|

$prototype=virtual QCameraFocus::FocusPointMode focusPointMode() const = 0
$virtualMethod=|QCameraFocus::FocusPointMode|focusPointMode|

$prototype=virtual QCameraFocusZoneList focusZones() const = 0
$virtualMethod=|QCameraFocusZoneList|focusZones|

$prototype=virtual bool isFocusModeSupported(QCameraFocus::FocusModes mode) const = 0
$virtualMethod=|bool|isFocusModeSupported|QCameraFocus::FocusModes

$prototype=virtual bool isFocusPointModeSupported(QCameraFocus::FocusPointMode mode) const = 0
$virtualMethod=|bool|isFocusPointModeSupported|QCameraFocus::FocusPointMode

$prototype=virtual void setCustomFocusPoint(const QPointF & point) = 0
$virtualMethod=|void|setCustomFocusPoint|const QPointF &

$prototype=virtual void setFocusMode(QCameraFocus::FocusModes mode) = 0
$virtualMethod=|void|setFocusMode|QCameraFocus::FocusModes

$prototype=virtual void setFocusPointMode(QCameraFocus::FocusPointMode mode) = 0
$virtualMethod=|void|setFocusPointMode|QCameraFocus::FocusPointMode

$beginSignals
$signal=|customFocusPointChanged(QPointF)
$signal=|focusModeChanged(QCameraFocus::FocusModes)
$signal=|focusPointModeChanged(QCameraFocus::FocusPointMode)
$signal=|focusZonesChanged()
$endSignals

#pragma ENDDUMP

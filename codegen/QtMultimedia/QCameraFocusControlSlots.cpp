%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|customFocusPointChanged( const QPointF & point )
$slot=|focusModeChanged( QCameraFocus::FocusModes mode )
$slot=|focusPointModeChanged( QCameraFocus::FocusPointMode mode )
$slot=|focusZonesChanged()

$signalMethod=|customFocusPointChanged(QPointF)
$signalMethod=|focusModeChanged(QCameraFocus::FocusModes)
$signalMethod=|focusPointModeChanged(QCameraFocus::FocusPointMode)
$signalMethod=|focusZonesChanged()

$endSlotsClass

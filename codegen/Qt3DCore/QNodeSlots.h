%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

$includes

$beginSlotsClass
$signal=|parentChanged( QObject * parent )
$signal=|enabledChanged( bool enabled )
$signal=|defaultPropertyTrackingModeChanged( QNode::PropertyTrackingMode mode )
$signal=|nodeDestroyed()
$endSlotsClass

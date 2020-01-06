%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

$includes

$beginSlotsClass
$slot=|parentChanged( QObject * parent )
$slot=|enabledChanged( bool enabled )
$slot=|defaultPropertyTrackingModeChanged( QNode::PropertyTrackingMode mode )
$slot=|nodeDestroyed()
$endSlotsClass

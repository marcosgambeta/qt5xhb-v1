%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|backgroundColorChanged( const QColor & color )
$signal=|backgroundEnabledChanged( bool enabled )
$signal=|borderEnabledChanged( bool enabled )
$signal=|facingCameraChanged( bool enabled )
$signal=|fontChanged( const QFont & font )
$signal=|textChanged( const QString & text )
$signal=|textColorChanged( const QColor & color )
$endSlotsClass

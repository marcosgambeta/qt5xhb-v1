%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|heightMapChanged( const QImage & image )
$signal=|heightMapFileChanged( const QString & filename )
$signal=|minXValueChanged( float value )
$signal=|maxXValueChanged( float value )
$signal=|minZValueChanged( float value )
$signal=|maxZValueChanged( float value )
$endSlotsClass

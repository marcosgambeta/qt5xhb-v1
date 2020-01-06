%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

$includes

$beginSlotsClass
$slot=|targetPositionsChanged( const QVector<float> & targetPositions )
$slot=|interpolatorChanged( float interpolator )
$slot=|targetChanged( Qt3DRender::QGeometryRenderer * target )
$slot=|targetNameChanged( const QString & name )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|meshFileChanged( const QString & meshFile )
$signal=|positionAbsoluteChanged( bool positionAbsolute )
$signal=|positionChanged( const QVector3D & position )
$signal=|rotationChanged( const QQuaternion & rotation )
$signal=|scalingAbsoluteChanged( bool scalingAbsolute )
$signal=|scalingChanged( const QVector3D & scaling )
$signal=|shadowCastingChanged( bool shadowCasting )
$signal=|textureFileChanged( const QString & textureFile )
$signal=|visibleChanged( bool visible )
$endSlotsClass

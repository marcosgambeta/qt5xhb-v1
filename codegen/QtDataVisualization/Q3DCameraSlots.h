%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|void cameraPresetChanged( Q3DCamera::CameraPreset preset )
$signal=|void maxZoomLevelChanged( float zoomLevel )
$signal=|void minZoomLevelChanged( float zoomLevel )
$signal=|void targetChanged( const QVector3D & target )
$signal=|void wrapXRotationChanged( bool isEnabled )
$signal=|void wrapYRotationChanged( bool isEnabled )
$signal=|void xRotationChanged( float rotation )
$signal=|void yRotationChanged( float rotation )
$signal=|void zoomLevelChanged( float zoomLevel )
$endSlotsClass

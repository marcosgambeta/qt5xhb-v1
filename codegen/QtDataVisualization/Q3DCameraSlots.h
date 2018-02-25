%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|cameraPresetChanged( Q3DCamera::CameraPreset preset )
$signal=|maxZoomLevelChanged( float zoomLevel )
$signal=|minZoomLevelChanged( float zoomLevel )
$signal=|targetChanged( const QVector3D & target )
$signal=|wrapXRotationChanged( bool isEnabled )
$signal=|wrapYRotationChanged( bool isEnabled )
$signal=|xRotationChanged( float rotation )
$signal=|yRotationChanged( float rotation )
$signal=|zoomLevelChanged( float zoomLevel )
$endSlotsClass

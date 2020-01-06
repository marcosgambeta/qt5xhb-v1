%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

$beginSlotsClass
$slot=|cameraPresetChanged( Q3DCamera::CameraPreset preset )
$slot=|maxZoomLevelChanged( float zoomLevel )
$slot=|minZoomLevelChanged( float zoomLevel )
$slot=|targetChanged( const QVector3D & target )
$slot=|wrapXRotationChanged( bool isEnabled )
$slot=|wrapYRotationChanged( bool isEnabled )
$slot=|xRotationChanged( float rotation )
$slot=|yRotationChanged( float rotation )
$slot=|zoomLevelChanged( float zoomLevel )
$endSlotsClass

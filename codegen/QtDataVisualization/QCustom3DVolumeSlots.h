%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|alphaMultiplierChanged( float mult )
$signal=|colorTableChanged()
$signal=|drawSliceFramesChanged( bool enabled )
$signal=|drawSlicesChanged( bool enabled )
$signal=|preserveOpacityChanged( bool enabled )
$signal=|sliceFrameColorChanged( const QColor & color )
$signal=|sliceFrameGapsChanged( const QVector3D & values )
$signal=|sliceFrameThicknessesChanged( const QVector3D & values )
$signal=|sliceFrameWidthsChanged( const QVector3D & values )
$signal=|sliceIndexXChanged( int value )
$signal=|sliceIndexYChanged( int value )
$signal=|sliceIndexZChanged( int value )
%% TODO: implementar
%% $signal=|textureDataChanged( QVector<uchar> * data )
$signal=|textureDepthChanged( int value )
$signal=|textureFormatChanged( QImage::Format format )
$signal=|textureHeightChanged( int value )
$signal=|textureWidthChanged( int value )
$signal=|useHighDefShaderChanged( bool enabled )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void alphaMultiplierChanged( float mult )
$signal=|void colorTableChanged()
$signal=|void drawSliceFramesChanged( bool enabled )
$signal=|void drawSlicesChanged( bool enabled )
$signal=|void preserveOpacityChanged( bool enabled )
$signal=|void sliceFrameColorChanged( const QColor & color )
$signal=|void sliceFrameGapsChanged( const QVector3D & values )
$signal=|void sliceFrameThicknessesChanged( const QVector3D & values )
$signal=|void sliceFrameWidthsChanged( const QVector3D & values )
$signal=|void sliceIndexXChanged( int value )
$signal=|void sliceIndexYChanged( int value )
$signal=|void sliceIndexZChanged( int value )
%% TODO: implementar
%% $signal=|void textureDataChanged( QVector<uchar> * data )
$signal=|void textureDepthChanged( int value )
$signal=|void textureFormatChanged( QImage::Format format )
$signal=|void textureHeightChanged( int value )
$signal=|void textureWidthChanged( int value )
$signal=|void useHighDefShaderChanged( bool enabled )
$endSlotsClass

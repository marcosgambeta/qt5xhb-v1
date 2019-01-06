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
$signal=|baseColorChanged( const QColor & color )
$signal=|baseGradientChanged( const QLinearGradient & gradient )
$signal=|colorStyleChanged( Q3DTheme::ColorStyle style )
$signal=|itemLabelChanged( const QString & label )
$signal=|itemLabelFormatChanged( const QString & format )
$signal=|itemLabelVisibilityChanged( bool visible )
$signal=|meshChanged( QAbstract3DSeries::Mesh mesh )
$signal=|meshRotationChanged( const QQuaternion & rotation )
$signal=|meshSmoothChanged( bool enabled )
$signal=|multiHighlightColorChanged( const QColor & color )
$signal=|multiHighlightGradientChanged( const QLinearGradient & gradient )
$signal=|nameChanged( const QString & name )
$signal=|singleHighlightColorChanged( const QColor & color )
$signal=|singleHighlightGradientChanged( const QLinearGradient & gradient )
$signal=|userDefinedMeshChanged( const QString & fileName )
$signal=|visibilityChanged( bool visible )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

$beginSlotsClass
$slot=|baseColorChanged( const QColor & color )
$slot=|baseGradientChanged( const QLinearGradient & gradient )
$slot=|colorStyleChanged( Q3DTheme::ColorStyle style )
$slot=|itemLabelChanged( const QString & label )
$slot=|itemLabelFormatChanged( const QString & format )
$slot=|itemLabelVisibilityChanged( bool visible )
$slot=|meshChanged( QAbstract3DSeries::Mesh mesh )
$slot=|meshRotationChanged( const QQuaternion & rotation )
$slot=|meshSmoothChanged( bool enabled )
$slot=|multiHighlightColorChanged( const QColor & color )
$slot=|multiHighlightGradientChanged( const QLinearGradient & gradient )
$slot=|nameChanged( const QString & name )
$slot=|singleHighlightColorChanged( const QColor & color )
$slot=|singleHighlightGradientChanged( const QLinearGradient & gradient )
$slot=|userDefinedMeshChanged( const QString & fileName )
$slot=|visibilityChanged( bool visible )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|void baseColorChanged( const QColor & color )
$signal=|void baseGradientChanged( const QLinearGradient & gradient )
$signal=|void colorStyleChanged( Q3DTheme::ColorStyle style )
$signal=|void itemLabelChanged( const QString & label )
$signal=|void itemLabelFormatChanged( const QString & format )
$signal=|void itemLabelVisibilityChanged( bool visible )
$signal=|void meshChanged( QAbstract3DSeries::Mesh mesh )
$signal=|void meshRotationChanged( const QQuaternion & rotation )
$signal=|void meshSmoothChanged( bool enabled )
$signal=|void multiHighlightColorChanged( const QColor & color )
$signal=|void multiHighlightGradientChanged( const QLinearGradient & gradient )
$signal=|void nameChanged( const QString & name )
$signal=|void singleHighlightColorChanged( const QColor & color )
$signal=|void singleHighlightGradientChanged( const QLinearGradient & gradient )
$signal=|void userDefinedMeshChanged( const QString & fileName )
$signal=|void visibilityChanged( bool visible )
$endSlotsClass

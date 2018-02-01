%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void itemLabelFormatChanged( const QString & format );
$signal=|void visibilityChanged( bool visible );
$signal=|void meshChanged( QAbstract3DSeries::Mesh mesh );
$signal=|void meshSmoothChanged( bool enabled );
$signal=|void meshRotationChanged( const QQuaternion & rotation );
$signal=|void userDefinedMeshChanged( const QString & fileName );
$signal=|void colorStyleChanged( Q3DTheme::ColorStyle style );
$signal=|void baseColorChanged( const QColor & color );
$signal=|void baseGradientChanged( const QLinearGradient & gradient );
$signal=|void singleHighlightColorChanged( const QColor & color );
$signal=|void singleHighlightGradientChanged( const QLinearGradient & gradient );
$signal=|void multiHighlightColorChanged( const QColor & color );
$signal=|void multiHighlightGradientChanged( const QLinearGradient & gradient );
$signal=|void nameChanged( const QString & name );
$signal=|void itemLabelChanged( const QString & label );
$signal=|void itemLabelVisibilityChanged( bool visible );
$endSlotsClass

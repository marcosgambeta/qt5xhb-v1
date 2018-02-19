%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|void ambientLightStrengthChanged( float strength )
$signal=|void backgroundColorChanged( const QColor & color )
$signal=|void backgroundEnabledChanged( bool enabled )
$signal=|void baseColorsChanged( const QList<QColor> & colors )
$signal=|void baseGradientsChanged( const QList<QLinearGradient> & gradients )
$signal=|void colorStyleChanged( Q3DTheme::ColorStyle style )
$signal=|void fontChanged( const QFont & font )
$signal=|void gridEnabledChanged( bool enabled )
$signal=|void gridLineColorChanged( const QColor & color )
$signal=|void highlightLightStrengthChanged( float strength )
$signal=|void labelBackgroundColorChanged( const QColor & color )
$signal=|void labelBackgroundEnabledChanged( bool enabled )
$signal=|void labelBorderEnabledChanged( bool enabled )
$signal=|void labelTextColorChanged( const QColor & color )
$signal=|void lightColorChanged( const QColor & color )
$signal=|void lightStrengthChanged( float strength )
$signal=|void multiHighlightColorChanged( const QColor & color )
$signal=|void multiHighlightGradientChanged( const QLinearGradient & gradient )
$signal=|void singleHighlightColorChanged( const QColor & color )
$signal=|void singleHighlightGradientChanged( const QLinearGradient & gradient )
$signal=|void typeChanged( Q3DTheme::Theme themeType )
$signal=|void windowColorChanged( const QColor & color )
$endSlotsClass

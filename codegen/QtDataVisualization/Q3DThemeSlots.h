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
$signal=|ambientLightStrengthChanged( float strength )
$signal=|backgroundColorChanged( const QColor & color )
$signal=|backgroundEnabledChanged( bool enabled )
$signal=|baseColorsChanged( const QList<QColor> & colors )
$signal=|baseGradientsChanged( const QList<QLinearGradient> & gradients )
$signal=|colorStyleChanged( Q3DTheme::ColorStyle style )
$signal=|fontChanged( const QFont & font )
$signal=|gridEnabledChanged( bool enabled )
$signal=|gridLineColorChanged( const QColor & color )
$signal=|highlightLightStrengthChanged( float strength )
$signal=|labelBackgroundColorChanged( const QColor & color )
$signal=|labelBackgroundEnabledChanged( bool enabled )
$signal=|labelBorderEnabledChanged( bool enabled )
$signal=|labelTextColorChanged( const QColor & color )
$signal=|lightColorChanged( const QColor & color )
$signal=|lightStrengthChanged( float strength )
$signal=|multiHighlightColorChanged( const QColor & color )
$signal=|multiHighlightGradientChanged( const QLinearGradient & gradient )
$signal=|singleHighlightColorChanged( const QColor & color )
$signal=|singleHighlightGradientChanged( const QLinearGradient & gradient )
$signal=|typeChanged( Q3DTheme::Theme themeType )
$signal=|windowColorChanged( const QColor & color )
$endSlotsClass

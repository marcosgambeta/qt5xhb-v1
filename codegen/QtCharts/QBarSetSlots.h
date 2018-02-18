%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|void borderColorChanged( QColor color )
$signal=5,7,0|void brushChanged()
$signal=5,7,0|void clicked( int index )
$signal=5,7,0|void colorChanged( QColor color )
$signal=5,7,0|void doubleClicked( int index )
$signal=5,7,0|void hovered( bool status, int index )
$signal=5,7,0|void labelBrushChanged()
$signal=5,7,0|void labelChanged()
$signal=5,7,0|void labelColorChanged( QColor color )
$signal=5,7,0|void labelFontChanged()
$signal=5,7,0|void penChanged()
$signal=5,7,0|void pressed( int index )
$signal=5,7,0|void released( int index )
$signal=5,7,0|void valueChanged( int index )
$signal=5,7,0|void valuesAdded( int index, int count )
$signal=5,7,0|void valuesRemoved( int index, int count )
$endSlotsClass

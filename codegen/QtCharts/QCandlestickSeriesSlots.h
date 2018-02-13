%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void bodyOutlineVisibilityChanged()
$signal=|void bodyWidthChanged()
$signal=|void brushChanged()
$signal=|void candlestickSetsAdded( const QList<QCandlestickSet*> & sets )
$signal=|void candlestickSetsRemoved( const QList<QCandlestickSet*> & sets )
$signal=|void capsVisibilityChanged()
$signal=|void capsWidthChanged()
$signal=|void clicked( QCandlestickSet * set )
$signal=|void countChanged()
$signal=|void decreasingColorChanged()
$signal=|void doubleClicked( QCandlestickSet * set )
$signal=|void hovered( bool status, QCandlestickSet * set )
$signal=|void increasingColorChanged()
$signal=|void maximumColumnWidthChanged()
$signal=|void minimumColumnWidthChanged()
$signal=|void penChanged()
$signal=|void pressed( QCandlestickSet * set )
$signal=|void released( QCandlestickSet * set )
$endSlotsClass

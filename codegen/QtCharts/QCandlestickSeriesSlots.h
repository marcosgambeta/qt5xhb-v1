%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$beginSlotsClass
$signal=5,8,0|void bodyOutlineVisibilityChanged()
$signal=5,8,0|void bodyWidthChanged()
$signal=5,8,0|void brushChanged()
$signal=5,8,0|void candlestickSetsAdded( const QList<QCandlestickSet*> & sets )
$signal=5,8,0|void candlestickSetsRemoved( const QList<QCandlestickSet*> & sets )
$signal=5,8,0|void capsVisibilityChanged()
$signal=5,8,0|void capsWidthChanged()
$signal=5,8,0|void clicked( QCandlestickSet * set )
$signal=5,8,0|void countChanged()
$signal=5,8,0|void decreasingColorChanged()
$signal=5,8,0|void doubleClicked( QCandlestickSet * set )
$signal=5,8,0|void hovered( bool status, QCandlestickSet * set )
$signal=5,8,0|void increasingColorChanged()
$signal=5,8,0|void maximumColumnWidthChanged()
$signal=5,8,0|void minimumColumnWidthChanged()
$signal=5,8,0|void penChanged()
$signal=5,8,0|void pressed( QCandlestickSet * set )
$signal=5,8,0|void released( QCandlestickSet * set )
$endSlotsClass

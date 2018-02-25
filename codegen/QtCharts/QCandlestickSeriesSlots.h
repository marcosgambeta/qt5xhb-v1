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
$signal=5,8,0|bodyOutlineVisibilityChanged()
$signal=5,8,0|bodyWidthChanged()
$signal=5,8,0|brushChanged()
$signal=5,8,0|candlestickSetsAdded( const QList<QCandlestickSet*> & sets )
$signal=5,8,0|candlestickSetsRemoved( const QList<QCandlestickSet*> & sets )
$signal=5,8,0|capsVisibilityChanged()
$signal=5,8,0|capsWidthChanged()
$signal=5,8,0|clicked( QCandlestickSet * set )
$signal=5,8,0|countChanged()
$signal=5,8,0|decreasingColorChanged()
$signal=5,8,0|doubleClicked( QCandlestickSet * set )
$signal=5,8,0|hovered( bool status, QCandlestickSet * set )
$signal=5,8,0|increasingColorChanged()
$signal=5,8,0|maximumColumnWidthChanged()
$signal=5,8,0|minimumColumnWidthChanged()
$signal=5,8,0|penChanged()
$signal=5,8,0|pressed( QCandlestickSet * set )
$signal=5,8,0|released( QCandlestickSet * set )
$endSlotsClass

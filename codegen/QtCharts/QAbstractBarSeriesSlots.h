%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|void barsetsAdded( QList<QBarSet*> sets )
$signal=5,7,0|void barsetsRemoved( QList<QBarSet*> sets )
$signal=5,7,0|void clicked( int index, QBarSet * barset )
$signal=5,7,0|void countChanged()
$signal=5,7,0|void doubleClicked( int index, QBarSet * barset )
$signal=5,7,0|void hovered( bool status, int index, QBarSet * barset )
$signal=5,7,0|void labelsAngleChanged( qreal angle )
$signal=5,7,0|void labelsFormatChanged( const QString & format )
$signal=5,7,0|void labelsPositionChanged( QAbstractBarSeries::LabelsPosition position )
$signal=5,7,0|void labelsVisibleChanged()
$signal=5,7,0|void pressed( int index, QBarSet * barset )
$signal=5,7,0|void released( int index, QBarSet * barset )
$endSlotsClass

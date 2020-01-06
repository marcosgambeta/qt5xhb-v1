%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|barsetsAdded( QList<QBarSet*> sets )
$signal=5,7,0|barsetsRemoved( QList<QBarSet*> sets )
$signal=5,7,0|clicked( int index, QBarSet * barset )
$signal=5,7,0|countChanged()
$signal=5,7,0|doubleClicked( int index, QBarSet * barset )
$signal=5,7,0|hovered( bool status, int index, QBarSet * barset )
$signal=5,7,0|labelsAngleChanged( qreal angle )
$signal=5,7,0|labelsFormatChanged( const QString & format )
$signal=5,7,0|labelsPositionChanged( QAbstractBarSeries::LabelsPosition position )
$signal=5,7,0|labelsVisibleChanged()
$signal=5,7,0|pressed( int index, QBarSet * barset )
$signal=5,7,0|released( int index, QBarSet * barset )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void barsetsAdded( QList<QBarSet*> sets );
$signal=|void barsetsRemoved( QList<QBarSet*> sets );
$signal=|void clicked( int index, QBarSet * barset );
$signal=|void countChanged();
$signal=|void doubleClicked( int index, QBarSet * barset );
$signal=|void hovered( bool status, int index, QBarSet * barset );
$signal=|void labelsAngleChanged( qreal angle );
$signal=|void labelsFormatChanged( const QString & format );
$signal=|void labelsPositionChanged( QAbstractBarSeries::LabelsPosition position );
$signal=|void labelsVisibleChanged();
$signal=|void pressed( int index, QBarSet * barset );
$signal=|void released( int index, QBarSet * barset );
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|barsetsAdded( QList<QBarSet *> sets )
$slot=|barsetsRemoved( QList<QBarSet *> sets )
$slot=|clicked( int index, QBarSet * barset )
$slot=|countChanged()
$slot=|doubleClicked( int index, QBarSet * barset )
$slot=|hovered( bool status, int index, QBarSet * barset )
$slot=|labelsAngleChanged( qreal angle )
$slot=|labelsFormatChanged( const QString & format )
$slot=|labelsPositionChanged( QAbstractBarSeries::LabelsPosition position )
$slot=|labelsVisibleChanged()
$slot=|pressed( int index, QBarSet * barset )
$slot=|released( int index, QBarSet * barset )
$endSlotsClass

$signalMethod=|barsetsAdded(QList<QBarSet*>)
$signalMethod=|barsetsRemoved(QList<QBarSet*>)
$signalMethod=|clicked(int,QBarSet*)
$signalMethod=|countChanged()
$signalMethod=|doubleClicked(int,QBarSet*)
$signalMethod=|hovered(bool,int,QBarSet*)
$signalMethod=|labelsAngleChanged(qreal)
$signalMethod=|labelsFormatChanged(QString)
$signalMethod=|labelsPositionChanged(QAbstractBarSeries::LabelsPosition)
$signalMethod=|labelsVisibleChanged()
$signalMethod=|pressed(int,QBarSet*)
$signalMethod=|released(int,QBarSet*)

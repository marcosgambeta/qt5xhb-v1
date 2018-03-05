%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=5,7,0|barsetsAdded( QList<QBarSet*> sets )
$slot=5,7,0|barsetsRemoved( QList<QBarSet*> sets )
$slot=5,7,0|clicked( int index, QBarSet * barset )
$slot=5,7,0|countChanged()
$slot=5,7,0|doubleClicked( int index, QBarSet * barset )
$slot=5,7,0|hovered( bool status, int index, QBarSet * barset )
$slot=5,7,0|labelsAngleChanged( qreal angle )
$slot=5,7,0|labelsFormatChanged( const QString & format )
$slot=5,7,0|labelsPositionChanged( QAbstractBarSeries::LabelsPosition position )
$slot=5,7,0|labelsVisibleChanged()
$slot=5,7,0|pressed( int index, QBarSet * barset )
$slot=5,7,0|released( int index, QBarSet * barset )
$endSlotsClass

$connectSignalFunction

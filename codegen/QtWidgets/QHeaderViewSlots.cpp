%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|geometriesChanged()

$slot=|sectionAutoResize( int logicalIndex, QHeaderView::ResizeMode mode )
$slot=|sectionClicked( int logicalIndex )
$slot=|sectionCountChanged( int oldCount, int newCount )
$slot=|sectionDoubleClicked( int logicalIndex )
$slot=|sectionEntered( int logicalIndex )
$slot=|sectionHandleDoubleClicked( int logicalIndex )
$slot=|sectionMoved( int logicalIndex, int oldVisualIndex, int newVisualIndex )
$slot=|sectionPressed( int logicalIndex )
$slot=|sectionResized( int logicalIndex, int oldSize, int newSize )
$slot=|sortIndicatorChanged( int logicalIndex, Qt::SortOrder order )

$signalMethod=|geometriesChanged()
$signalMethod=|sectionAutoResize(int,QHeaderView::ResizeMode)
$signalMethod=|sectionClicked(int)
$signalMethod=|sectionCountChanged(int,int)
$signalMethod=|sectionDoubleClicked(int)
$signalMethod=|sectionEntered(int)
$signalMethod=|sectionHandleDoubleClicked(int)
$signalMethod=|sectionMoved(int,int,int)
$signalMethod=|sectionPressed(int)
$signalMethod=|sectionResized(int,int,int)
$signalMethod=|sortIndicatorChanged(int,Qt::SortOrder)

$endSlotsClass

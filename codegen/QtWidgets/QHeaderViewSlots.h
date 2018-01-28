%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void geometriesChanged();
$signal=|void sectionAutoResize( int logicalIndex, QHeaderView::ResizeMode mode );
$signal=|void sectionClicked( int logicalIndex );
$signal=|void sectionCountChanged( int oldCount, int newCount );
$signal=|void sectionDoubleClicked( int logicalIndex );
$signal=|void sectionEntered( int logicalIndex );
$signal=|void sectionHandleDoubleClicked( int logicalIndex );
$signal=|void sectionMoved( int logicalIndex, int oldVisualIndex, int newVisualIndex );
$signal=|void sectionPressed( int logicalIndex );
$signal=|void sectionResized( int logicalIndex, int oldSize, int newSize );
$signal=|void sortIndicatorChanged( int logicalIndex, Qt::SortOrder order );
$endSlotsClass

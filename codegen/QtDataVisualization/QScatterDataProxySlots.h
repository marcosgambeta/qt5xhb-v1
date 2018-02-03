%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void arrayReset();
$signal=|void itemCountChanged( int count );
$signal=|void itemsAdded( int startIndex, int count );
$signal=|void itemsChanged( int startIndex, int count );
$signal=|void itemsInserted( int startIndex, int count );
$signal=|void itemsRemoved( int startIndex, int count );
$signal=|void seriesChanged( QScatter3DSeries * series );
$endSlotsClass

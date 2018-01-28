%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void anchorClicked( const QUrl & link );
$signal=|void backwardAvailable( bool available );
$signal=|void forwardAvailable( bool available );
$signal=|void highlighted( const QUrl & link );
$signal=|void highlighted( const QString & link );
$signal=|void historyChanged();
$signal=|void sourceChanged( const QUrl & src );
$endSlotsClass

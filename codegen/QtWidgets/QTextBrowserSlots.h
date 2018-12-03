%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

$includes

$beginSlotsClass
$signal=|anchorClicked( const QUrl & link )
$signal=|backwardAvailable( bool available )
$signal=|forwardAvailable( bool available )
$signal=|highlighted( const QUrl & link )
$signal=|highlighted( const QString & link )
$signal=|historyChanged()
$signal=|sourceChanged( const QUrl & src )
$endSlotsClass

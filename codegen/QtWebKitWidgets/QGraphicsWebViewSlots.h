%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

$header

$includes

$beginSlotsClass
$signal=|iconChanged()
$signal=|linkClicked( const QUrl & url )
$signal=|loadFinished( bool ok )
$signal=|loadProgress( int progress )
$signal=|loadStarted()
$signal=|statusBarMessage( const QString & text )
$signal=|titleChanged( const QString & title )
$signal=|urlChanged( const QUrl & url )
$endSlotsClass

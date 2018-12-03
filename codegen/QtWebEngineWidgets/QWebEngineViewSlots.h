%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineWidgets

$header

$includes=5,4,0

$beginSlotsClass
$signal=5,4,0|loadStarted()
$signal=5,4,0|loadProgress( int progress )
$signal=5,4,0|loadFinished( bool b )
$signal=5,4,0|titleChanged( const QString & title )
$signal=5,4,0|selectionChanged()
$signal=5,4,0|urlChanged( const QUrl & url )
$signal=5,4,0|iconUrlChanged( const QUrl & url )
$endSlotsClass

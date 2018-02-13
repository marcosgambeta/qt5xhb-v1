%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

$beginSlotsClass
$signal=5,4,0|void loadStarted()
$signal=5,4,0|void loadProgress( int progress )
$signal=5,4,0|void loadFinished( bool b )
$signal=5,4,0|void titleChanged( const QString & title )
$signal=5,4,0|void selectionChanged()
$signal=5,4,0|void urlChanged( const QUrl & url )
$signal=5,4,0|void iconUrlChanged( const QUrl & url )
$endSlotsClass

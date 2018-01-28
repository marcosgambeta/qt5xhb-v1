%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void iconChanged();
$signal=|void linkClicked( const QUrl & url );
$signal=|void loadFinished( bool ok );
$signal=|void loadProgress( int progress );
$signal=|void loadStarted();
$signal=|void selectionChanged();
$signal=|void statusBarMessage( const QString & text );
$signal=|void titleChanged( const QString & title );
$signal=|void urlChanged( const QUrl & url );
$endSlotsClass

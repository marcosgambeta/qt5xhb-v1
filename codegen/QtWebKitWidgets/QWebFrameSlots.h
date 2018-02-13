%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void contentsSizeChanged( const QSize & size )
$signal=|void iconChanged()
$signal=|void initialLayoutCompleted()
$signal=|void javaScriptWindowObjectCleared()
$signal=|void loadFinished( bool ok )
$signal=|void loadStarted()
$signal=|void pageChanged()
%% TODO: check signal 'provisionalLoad' (not present in the documentation)
%% $signal=|void provisionalLoad()
$signal=|void titleChanged( const QString & title )
$signal=|void urlChanged( const QUrl & url )
$endSlotsClass

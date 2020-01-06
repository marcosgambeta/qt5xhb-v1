%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

$header

$includes

$beginSlotsClass
$signal=|contentsSizeChanged( const QSize & size )
$signal=|iconChanged()
$signal=|initialLayoutCompleted()
$signal=|javaScriptWindowObjectCleared()
$signal=|loadFinished( bool ok )
$signal=|loadStarted()
$signal=|pageChanged()
%% TODO: check signal 'provisionalLoad' (not present in the documentation)
%% $signal=|provisionalLoad()
$signal=|titleChanged( const QString & title )
$signal=|urlChanged( const QUrl & url )
$endSlotsClass

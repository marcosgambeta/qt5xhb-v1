%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=5,4,0|loadStarted()
$slot=5,4,0|loadProgress( int progress )
$slot=5,4,0|loadFinished( bool b )
$slot=5,4,0|titleChanged( const QString & title )
$slot=5,4,0|selectionChanged()
$slot=5,4,0|urlChanged( const QUrl & url )
$slot=5,4,0|iconUrlChanged( const QUrl & url )

$signalMethod=5,4,0|loadStarted()
$signalMethod=5,4,0|loadProgress(int)
$signalMethod=5,4,0|loadFinished(bool)
$signalMethod=5,4,0|titleChanged(QString)
$signalMethod=5,4,0|selectionChanged()
$signalMethod=5,4,0|urlChanged(QUrl)
$signalMethod=5,4,0|iconUrlChanged(QUrl)

$endSlotsClass

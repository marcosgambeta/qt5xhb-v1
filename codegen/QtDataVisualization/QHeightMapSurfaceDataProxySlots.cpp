%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|heightMapChanged( const QImage & image )
$slot=|heightMapFileChanged( const QString & filename )
$slot=|maxXValueChanged( float value )
$slot=|maxZValueChanged( float value )
$slot=|minXValueChanged( float value )
$slot=|minZValueChanged( float value )
$endSlotsClass

$signalMethod=|heightMapChanged(QImage)
$signalMethod=|heightMapFileChanged(QString)
$signalMethod=|maxXValueChanged(float)
$signalMethod=|maxZValueChanged(float)
$signalMethod=|minXValueChanged(float)
$signalMethod=|minZValueChanged(float)

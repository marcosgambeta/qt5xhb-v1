%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=5,7,0|categoriesChanged()
$slot=5,7,0|countChanged()
$slot=5,7,0|maxChanged( const QString & max )
$slot=5,7,0|minChanged( const QString & min )
$slot=5,7,0|rangeChanged( const QString & min, const QString & max )
$endSlotsClass

$signalMethod=5,7,0|categoriesChanged()
$signalMethod=5,7,0|countChanged()
$signalMethod=5,7,0|maxChanged(QString)
$signalMethod=5,7,0|minChanged(QString)
$signalMethod=5,7,0|rangeChanged(QString,QString)

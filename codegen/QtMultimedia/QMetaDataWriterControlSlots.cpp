%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|metaDataChanged()
$slot=|metaDataChanged( const QString & key, const QVariant & value )
$slot=|writableChanged( bool writable )
$slot=|metaDataAvailableChanged( bool available )
$endSlotsClass

$beginGroup
$signalMethod=|metaDataChanged()
$signalMethod=|metaDataChanged(QString,QVariant)
$endGroup
$signalMethod=|writableChanged(bool)
$signalMethod=|metaDataAvailableChanged(bool)

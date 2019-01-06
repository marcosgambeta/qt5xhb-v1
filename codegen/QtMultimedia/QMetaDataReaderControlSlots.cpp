%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

$includes

$beginSlotsClass
$slot=|metaDataChanged()
$slot=|metaDataChanged( const QString & key, const QVariant & value )
$slot=|metaDataAvailableChanged( bool available )
$endSlotsClass

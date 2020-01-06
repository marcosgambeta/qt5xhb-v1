%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

$includes

$beginSlotsClass
$signal=|metaDataChanged()
$signal=|metaDataChanged( const QString & key, const QVariant & value )
$signal=|metaDataAvailableChanged( bool available )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

$includes

$beginSlotsClass
$slot=|availabilityChanged( bool available )
$slot=|availabilityChanged( QMultimedia::AvailabilityStatus availability )
$slot=|metaDataAvailableChanged( bool available )
$slot=|metaDataChanged()
$slot=|metaDataChanged( const QString & key, const QVariant & value )
$slot=|notifyIntervalChanged( int milliseconds )
$endSlotsClass

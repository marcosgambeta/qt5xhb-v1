%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void availabilityChanged( bool available )
$signal=|void availabilityChanged( QMultimedia::AvailabilityStatus availability )
$signal=|void metaDataAvailableChanged( bool available )
$signal=|void metaDataChanged()
$signal=|void metaDataChanged( const QString & key, const QVariant & value )
$signal=|void notifyIntervalChanged( int milliseconds )
$endSlotsClass

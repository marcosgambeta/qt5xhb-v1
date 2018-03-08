%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|error( int id, int error, const QString & errorString )
$slot=|imageAvailable( int requestId, const QVideoFrame & buffer )
$slot=|imageCaptured( int requestId, const QImage & preview )
$slot=|imageExposed( int requestId )
$slot=|imageMetadataAvailable( int id, const QString & key, const QVariant & value )
$slot=|imageSaved( int requestId, const QString & fileName )
$slot=|readyForCaptureChanged( bool ready )
$endSlotsClass

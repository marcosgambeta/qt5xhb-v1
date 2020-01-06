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
$signal=|error( int id, int error, const QString & errorString )
$signal=|imageAvailable( int requestId, const QVideoFrame & buffer )
$signal=|imageCaptured( int requestId, const QImage & preview )
$signal=|imageExposed( int requestId )
$signal=|imageMetadataAvailable( int id, const QString & key, const QVariant & value )
$signal=|imageSaved( int requestId, const QString & fileName )
$signal=|readyForCaptureChanged( bool ready )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void error( int id, int error, const QString & errorString );
$signal=|void imageAvailable( int requestId, const QVideoFrame & buffer );
$signal=|void imageCaptured( int requestId, const QImage & preview );
$signal=|void imageExposed( int requestId );
$signal=|void imageMetadataAvailable( int id, const QString & key, const QVariant & value );
$signal=|void imageSaved( int requestId, const QString & fileName );
$signal=|void readyForCaptureChanged( bool ready );
$endSlotsClass

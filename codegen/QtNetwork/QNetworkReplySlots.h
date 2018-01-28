%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void downloadProgress( qint64 bytesReceived, qint64 bytesTotal );
$signal=|void error( QNetworkReply::NetworkError code );
$signal=|void finished();
$signal=|void metaDataChanged();
$signal=|void uploadProgress( qint64 bytesSent, qint64 bytesTotal );
$endSlotsClass

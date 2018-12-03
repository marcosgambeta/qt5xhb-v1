%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebChannel

$header

$includes=5,4,0

$beginSlotsClass
$signal=5,4,0|messageReceived( const QJsonObject & message, QWebChannelAbstractTransport * transport )
$endSlotsClass

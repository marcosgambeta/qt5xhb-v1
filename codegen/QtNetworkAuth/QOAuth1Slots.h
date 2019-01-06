%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth

$header

$includes=5,10,0

$beginSlotsClass
$signal=5,10,0|clientSharedSecretChanged( const QString & credential )
$signal=5,10,0|signatureMethodChanged( QOAuth1::SignatureMethod method )
$signal=5,10,0|temporaryCredentialsUrlChanged( const QUrl & url )
$signal=5,10,0|tokenCredentialsUrlChanged( const QUrl & url )
$signal=5,10,0|tokenSecretChanged( const QString & token )
$endSlotsClass

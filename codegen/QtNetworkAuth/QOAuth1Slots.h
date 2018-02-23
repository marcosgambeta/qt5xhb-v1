%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void clientSharedSecretChanged( const QString & credential )
$signal=|void signatureMethodChanged( QOAuth1::SignatureMethod method )
$signal=|void temporaryCredentialsUrlChanged( const QUrl & url )
$signal=|void tokenCredentialsUrlChanged( const QUrl & url )
$signal=|void tokenSecretChanged( const QString & token )
$endSlotsClass

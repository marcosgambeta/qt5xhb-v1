%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|clientSharedSecretChanged( const QString & credential )
$slot=|signatureMethodChanged( QOAuth1::SignatureMethod method )
$slot=|temporaryCredentialsUrlChanged( const QUrl & url )
$slot=|tokenCredentialsUrlChanged( const QUrl & url )
$slot=|tokenSecretChanged( const QString & token )
$endSlotsClass

$connectSignalFunction

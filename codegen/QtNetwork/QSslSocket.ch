%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

/*
enum QSslSocket::PeerVerifyMode
*/
#define QSslSocket_VerifyNone                                        0
#define QSslSocket_QueryPeer                                         1
#define QSslSocket_VerifyPeer                                        2
#define QSslSocket_AutoVerifyPeer                                    3

/*
enum QSslSocket::SslMode
*/
#define QSslSocket_UnencryptedMode                                   0
#define QSslSocket_SslClientMode                                     1
#define QSslSocket_SslServerMode                                     2

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QABSTRACTSOCKET_CH
#define QABSTRACTSOCKET_CH

/*
enum QAbstractSocket::NetworkLayerProtocol
*/
#define QAbstractSocket_IPv4Protocol                                 0
#define QAbstractSocket_IPv6Protocol                                 1
#define QAbstractSocket_UnknownNetworkLayerProtocol                  -1

/*
enum QAbstractSocket::SocketError
*/
#define QAbstractSocket_ConnectionRefusedError                       0
#define QAbstractSocket_RemoteHostClosedError                        1
#define QAbstractSocket_HostNotFoundError                            2
#define QAbstractSocket_SocketAccessError                            3
#define QAbstractSocket_SocketResourceError                          4
#define QAbstractSocket_SocketTimeoutError                           5
#define QAbstractSocket_DatagramTooLargeError                        6
#define QAbstractSocket_NetworkError                                 7
#define QAbstractSocket_AddressInUseError                            8
#define QAbstractSocket_SocketAddressNotAvailableError               9
#define QAbstractSocket_UnsupportedSocketOperationError              10
#define QAbstractSocket_ProxyAuthenticationRequiredError             12
#define QAbstractSocket_SslHandshakeFailedError                      13
#define QAbstractSocket_UnfinishedSocketOperationError               11
#define QAbstractSocket_ProxyConnectionRefusedError                  14
#define QAbstractSocket_ProxyConnectionClosedError                   15
#define QAbstractSocket_ProxyConnectionTimeoutError                  16
#define QAbstractSocket_ProxyNotFoundError                           17
#define QAbstractSocket_ProxyProtocolError                           18
#define QAbstractSocket_UnknownSocketError                           -1

/*
enum QAbstractSocket::SocketOption
*/
#define QAbstractSocket_LowDelayOption                               0
#define QAbstractSocket_KeepAliveOption                              1
#define QAbstractSocket_MulticastTtlOption                           2
#define QAbstractSocket_MulticastLoopbackOption                      3

/*
enum QAbstractSocket::SocketState
*/
#define QAbstractSocket_UnconnectedState                             0
#define QAbstractSocket_HostLookupState                              1
#define QAbstractSocket_ConnectingState                              2
#define QAbstractSocket_ConnectedState                               3
#define QAbstractSocket_BoundState                                   4
#define QAbstractSocket_ClosingState                                 6
#define QAbstractSocket_ListeningState                               5

/*
enum QAbstractSocket::SocketType
*/
#define QAbstractSocket_TcpSocket                                    0
#define QAbstractSocket_UdpSocket                                    1
#define QAbstractSocket_UnknownSocketType                            -1

#endif /* QABSTRACTSOCKET_CH */

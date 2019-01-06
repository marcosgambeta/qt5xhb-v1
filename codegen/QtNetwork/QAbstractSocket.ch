%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

/*
enum QAbstractSocket::SocketType
*/
#define QAbstractSocket_TcpSocket                                    0
#define QAbstractSocket_UdpSocket                                    1
#define QAbstractSocket_SctpSocket                                   2
#define QAbstractSocket_UnknownSocketType                            -1

/*
enum QAbstractSocket::NetworkLayerProtocol
*/
#define QAbstractSocket_IPv4Protocol                                 0
#define QAbstractSocket_IPv6Protocol                                 1
#define QAbstractSocket_AnyIPProtocol                                2
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
#define QAbstractSocket_UnfinishedSocketOperationError               11
#define QAbstractSocket_ProxyAuthenticationRequiredError             12
#define QAbstractSocket_SslHandshakeFailedError                      13
#define QAbstractSocket_ProxyConnectionRefusedError                  14
#define QAbstractSocket_ProxyConnectionClosedError                   15
#define QAbstractSocket_ProxyConnectionTimeoutError                  16
#define QAbstractSocket_ProxyNotFoundError                           17
#define QAbstractSocket_ProxyProtocolError                           18
#define QAbstractSocket_OperationError                               19
#define QAbstractSocket_SslInternalError                             20
#define QAbstractSocket_SslInvalidUserDataError                      21
#define QAbstractSocket_TemporaryError                               22
#define QAbstractSocket_UnknownSocketError                           -1

/*
enum QAbstractSocket::SocketState
*/
#define QAbstractSocket_UnconnectedState                             0
#define QAbstractSocket_HostLookupState                              1
#define QAbstractSocket_ConnectingState                              2
#define QAbstractSocket_ConnectedState                               3
#define QAbstractSocket_BoundState                                   4
#define QAbstractSocket_ListeningState                               5
#define QAbstractSocket_ClosingState                                 6

/*
enum QAbstractSocket::SocketOption
*/
#define QAbstractSocket_LowDelayOption                               0 // TCP_NODELAY
#define QAbstractSocket_KeepAliveOption                              1 // SO_KEEPALIVE
#define QAbstractSocket_MulticastTtlOption                           2 // IP_MULTICAST_TTL
#define QAbstractSocket_MulticastLoopbackOption                      3 // IP_MULTICAST_LOOPBACK
#define QAbstractSocket_TypeOfServiceOption                          4 // IP_TOS
#define QAbstractSocket_SendBufferSizeSocketOption                   5 // SO_SNDBUF
#define QAbstractSocket_ReceiveBufferSizeSocketOption                6 // SO_RCVBUF

/*
enum QAbstractSocket::BindFlag
flags QAbstractSocket::BindMode
*/
#define QAbstractSocket_DefaultForPlatform                           0x0
#define QAbstractSocket_ShareAddress                                 0x1
#define QAbstractSocket_DontShareAddress                             0x2
#define QAbstractSocket_ReuseAddressHint                             0x4

/*
enum QAbstractSocket::PauseMode
flags QAbstractSocket::PauseModes
*/
#define QAbstractSocket_PauseNever                                   0x0
#define QAbstractSocket_PauseOnSslErrors                             0x1

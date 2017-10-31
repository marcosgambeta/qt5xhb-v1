$header

/*
enum QLocalSocket::LocalSocketError
*/
#define QLocalSocket_ConnectionRefusedError                          QAbstractSocket_ConnectionRefusedError
#define QLocalSocket_PeerClosedError                                 QAbstractSocket_RemoteHostClosedError
#define QLocalSocket_ServerNotFoundError                             QAbstractSocket_HostNotFoundError
#define QLocalSocket_SocketAccessError                               QAbstractSocket_SocketAccessError
#define QLocalSocket_SocketResourceError                             QAbstractSocket_SocketResourceError
#define QLocalSocket_SocketTimeoutError                              QAbstractSocket_SocketTimeoutError
#define QLocalSocket_DatagramTooLargeError                           QAbstractSocket_DatagramTooLargeError
#define QLocalSocket_ConnectionError                                 QAbstractSocket_NetworkError
#define QLocalSocket_UnsupportedSocketOperationError                 QAbstractSocket_UnsupportedSocketOperationError
#define QLocalSocket_UnknownSocketError                              QAbstractSocket_UnknownSocketError

/*
enum QLocalSocket::LocalSocketState
*/
#define QLocalSocket_UnconnectedState                                QAbstractSocket_UnconnectedState
#define QLocalSocket_ConnectingState                                 QAbstractSocket_ConnectingState
#define QLocalSocket_ConnectedState                                  QAbstractSocket_ConnectedState
#define QLocalSocket_ClosingState                                    QAbstractSocket_ClosingState

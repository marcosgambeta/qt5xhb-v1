%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

/*
enum QDBusError::ErrorType
*/
#define QDBusError_NoError                                           0
#define QDBusError_Other                                             1
#define QDBusError_Failed                                            2
#define QDBusError_NoMemory                                          3
#define QDBusError_ServiceUnknown                                    4
#define QDBusError_NoReply                                           5
#define QDBusError_BadAddress                                        6
#define QDBusError_NotSupported                                      7
#define QDBusError_LimitsExceeded                                    8
#define QDBusError_AccessDenied                                      9
#define QDBusError_NoServer                                          10
#define QDBusError_Timeout                                           11
#define QDBusError_NoNetwork                                         12
#define QDBusError_AddressInUse                                      13
#define QDBusError_Disconnected                                      14
#define QDBusError_InvalidArgs                                       15
#define QDBusError_UnknownMethod                                     16
#define QDBusError_TimedOut                                          17
#define QDBusError_InvalidSignature                                  18
#define QDBusError_UnknownInterface                                  19
#define QDBusError_UnknownObject                                     20
#define QDBusError_UnknownProperty                                   21
#define QDBusError_PropertyReadOnly                                  22
#define QDBusError_InternalError                                     23
#define QDBusError_InvalidService                                    24
#define QDBusError_InvalidObjectPath                                 25
#define QDBusError_InvalidInterface                                  26
#define QDBusError_InvalidMember                                     27
#define QDBusError_LastErrorType                                     QDBusError_InvalidMember

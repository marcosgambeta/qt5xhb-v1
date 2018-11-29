%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

/*
enum QDBusMessage::MessageType
*/
#define QDBusMessage_InvalidMessage                                  0
#define QDBusMessage_MethodCallMessage                               1
#define QDBusMessage_ReplyMessage                                    2
#define QDBusMessage_ErrorMessage                                    3
#define QDBusMessage_SignalMessage                                   4

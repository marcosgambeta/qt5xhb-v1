$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDBusMessage

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createReply
   METHOD createErrorReply
   METHOD service
   METHOD path
   METHOD interface
   METHOD member
   METHOD errorName
   METHOD errorMessage
   METHOD type
   METHOD signature
   METHOD isReplyRequired
   METHOD setDelayedReply
   METHOD isDelayedReply
   METHOD setAutoStartService
   METHOD autoStartService
   METHOD setArguments
   METHOD arguments
   METHOD createSignal
   METHOD createMethodCall
   METHOD createError

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDBusMessage()
$internalConstructor=|new1|

$prototype=QDBusMessage(const QDBusMessage &other)
$internalConstructor=|new2|const QDBusMessage &

//[1]QDBusMessage()
//[2]QDBusMessage(const QDBusMessage &other)

HB_FUNC_STATIC( QDBUSMESSAGE_NEW )
{
  // TODO: implementar
}

$deleteMethod

$prototype=QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const
$internalMethod=|QDBusMessage|createReply,createReply1|const QList<QVariant> &=QList<QVariant>()

$prototype=QDBusMessage createReply(const QVariant &argument) const
$internalMethod=|QDBusMessage|createReply,createReply2|const QVariant &

//[1]QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const
//[2]QDBusMessage createReply(const QVariant &argument) const

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEREPLY )
{
  // TODO: implementar
}

$prototype=QDBusMessage createErrorReply(const QString name, const QString &msg) const
$internalMethod=|QDBusMessage|createErrorReply,createErrorReply1|const QString &,const QString &

$prototype=QDBusMessage createErrorReply(const QDBusError &err) const
$internalMethod=|QDBusMessage|createErrorReply,createErrorReply2|const QDBusError &

$prototype=QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const
$internalMethod=|QDBusMessage|createErrorReply,createErrorReply3|QDBusError::ErrorType,const QString &

//[1]QDBusMessage createErrorReply(const QString name, const QString &msg) const
//[2]QDBusMessage createErrorReply(const QDBusError &err) const
//[3]QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY )
{
  // TODO: implementar
}

$prototype=QString service() const
$method=|QString|service|

$prototype=QString path() const
$method=|QString|path|

$prototype=QString interface() const
$method=|QString|interface|

$prototype=QString member() const
$method=|QString|member|

$prototype=QString errorName() const
$method=|QString|errorName|

$prototype=QString errorMessage() const
$method=|QString|errorMessage|

$prototype=MessageType type() const
$method=|QDBusMessage::MessageType|type|

$prototype=QString signature() const
$method=|QString|signature|

$prototype=bool isReplyRequired() const
$method=|bool|isReplyRequired|

$prototype=void setDelayedReply(bool enable) const
$method=|void|setDelayedReply|bool

$prototype=bool isDelayedReply() const
$method=|bool|isDelayedReply|

$prototype=void setAutoStartService(bool enable)
$method=|void|setAutoStartService|bool

$prototype=bool autoStartService() const
$method=|bool|autoStartService|

$prototype=void setArguments(const QList<QVariant> &arguments)
$method=|void|setArguments|const QList<QVariant> &

$prototype=QList<QVariant> arguments() const
$method=|QList<QVariant>|arguments|

$prototype=static QDBusMessage createSignal(const QString &path, const QString &interface,const QString &name)
$staticMethod=|QDBusMessage|createSignal|const QString &,const QString &,const QString &

$prototype=static QDBusMessage createMethodCall(const QString &destination, const QString &path,const QString &interface, const QString &method)
$staticMethod=|QDBusMessage|createMethodCall|const QString &,const QString &,const QString &,const QString &

$prototype=static QDBusMessage createError(const QString &name, const QString &msg)
$internalStaticMethod=|QDBusMessage|createError,createError1|const QString &,const QString &

$prototype=static inline QDBusMessage createError(const QDBusError &err)
$internalStaticMethod=|QDBusMessage|createError,createError2|const QDBusError &

$prototype=static inline QDBusMessage createError(QDBusError::ErrorType type, const QString &msg)
$internalStaticMethod=|QDBusMessage|createError,createError3|QDBusError::ErrorType,const QString &

//[1]static QDBusMessage createError(const QString &name, const QString &msg)
//[2]static inline QDBusMessage createError(const QDBusError &err)
//[3]static inline QDBusMessage createError(QDBusError::ErrorType type, const QString &msg)

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR )
{
  // TODO: implementar
}

$extraMethods

#pragma ENDDUMP

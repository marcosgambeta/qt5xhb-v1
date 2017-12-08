$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSCONNECTION
REQUEST QDBUSMESSAGE
#endif

CLASS QDBusContext

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD calledFromDBus
   METHOD connection
   METHOD message
   METHOD isDelayedReply
   METHOD setDelayedReply
   METHOD sendErrorReply

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

$prototype=QDBusContext()
$constructor=|new|

$deleteMethod

$prototype=bool calledFromDBus() const
$method=|bool|calledFromDBus|

$prototype=QDBusConnection connection() const
$method=|QDBusConnection|connection|

$prototype=const QDBusMessage &message() const
$method=|const QDBusMessage &|message|

$prototype=bool isDelayedReply() const
$method=|bool|isDelayedReply|

$prototype=void setDelayedReply(bool enable) const
$method=|void|setDelayedReply|bool

$prototype=void sendErrorReply(const QString &name, const QString &msg = QString()) const
$internalMethod=|void|sendErrorReply,sendErrorReply1|const QString &,const QString &=QString()

$prototype=void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const
$internalMethod=|void|sendErrorReply,sendErrorReply2|QDBusError::ErrorType,const QString &=QString()

//[1]void sendErrorReply(const QString &name, const QString &msg = QString()) const
//[2]void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const

HB_FUNC_STATIC( QDBUSCONTEXT_SENDERROREPLY )
{
  // TODO: implementar
}

$extraMethods

#pragma ENDDUMP

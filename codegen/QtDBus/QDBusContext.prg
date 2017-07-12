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
   METHOD sendErrorReply1
   METHOD sendErrorReply2
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

/*
QDBusContext()
*/
$constructor=|new|

$deleteMethod

/*
bool calledFromDBus() const
*/
$method=|bool|calledFromDBus|

/*
QDBusConnection connection() const
*/
$method=|QDBusConnection|connection|

/*
const QDBusMessage &message() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_MESSAGE )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QDBusMessage * ptr = &obj->message ();
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}

/*
bool isDelayedReply() const
*/
$method=|bool|isDelayedReply|

/*
void setDelayedReply(bool enable) const
*/
$method=|void|setDelayedReply|bool

/*
void sendErrorReply(const QString &name, const QString &msg = QString()) const
*/
$internalMethod=|void|sendErrorReply,sendErrorReply1|const QString &,const QString &=QString()

/*
void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const
*/
$internalMethod=|void|sendErrorReply,sendErrorReply2|QDBusError::ErrorType,const QString &=QString()

//[1]void sendErrorReply(const QString &name, const QString &msg = QString()) const
//[2]void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const

HB_FUNC_STATIC( QDBUSCONTEXT_SENDERROREPLY )
{
  // TODO: implementar
}

$extraMethods

#pragma ENDDUMP

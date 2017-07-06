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
HB_FUNC_STATIC( QDBUSCONTEXT_NEW )
{
  QDBusContext * o = new QDBusContext ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool calledFromDBus() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_CALLEDFROMDBUS )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->calledFromDBus () );
  }
}


/*
QDBusConnection connection() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_CONNECTION )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusConnection * ptr = new QDBusConnection( obj->connection () );
    _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
  }
}


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
HB_FUNC_STATIC( QDBUSCONTEXT_ISDELAYEDREPLY )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isDelayedReply () );
  }
}


/*
void setDelayedReply(bool enable) const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_SETDELAYEDREPLY )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDelayedReply ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void sendErrorReply(const QString &name, const QString &msg = QString()) const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_SENDERRORREPLY1 )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->sendErrorReply ( PQSTRING(1), OPQSTRING(2,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_SENDERRORREPLY2 )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->sendErrorReply ( (QDBusError::ErrorType) hb_parni(1), OPQSTRING(2,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void sendErrorReply(const QString &name, const QString &msg = QString()) const
//[2]void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const

HB_FUNC_STATIC( QDBUSCONTEXT_SENDERROREPLY )
{
  // TODO: implementar
}


$extraMethods

#pragma ENDDUMP

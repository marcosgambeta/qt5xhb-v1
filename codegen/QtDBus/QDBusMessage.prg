$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDBusMessage

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD createReply1
   METHOD createReply2
   METHOD createReply
   METHOD createErrorReply1
   METHOD createErrorReply2
   METHOD createErrorReply3
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
   METHOD createError1
   METHOD createError2
   METHOD createError3
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

/*
QDBusMessage()
*/
HB_FUNC_STATIC( QDBUSMESSAGE_NEW1 )
{
  QDBusMessage * o = new QDBusMessage ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusMessage(const QDBusMessage &other)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_NEW2 )
{
  QDBusMessage * o = new QDBusMessage ( *PQDBUSMESSAGE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDBusMessage()
//[2]QDBusMessage(const QDBusMessage &other)

HB_FUNC_STATIC( QDBUSMESSAGE_NEW )
{
  // TODO: implementar
}

$deleteMethod

/*
QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEREPLY1 )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusMessage * ptr = new QDBusMessage( obj->createReply ( OPQVARIANTLIST(1,QList<QVariant>()) ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}

/*
QDBusMessage createReply(const QVariant &argument) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEREPLY2 )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusMessage * ptr = new QDBusMessage( obj->createReply ( *PQVARIANT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}


//[1]QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const
//[2]QDBusMessage createReply(const QVariant &argument) const

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEREPLY )
{
  // TODO: implementar
}

/*
QDBusMessage createErrorReply(const QString name, const QString &msg) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY1 )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusMessage * ptr = new QDBusMessage( obj->createErrorReply ( PQSTRING(1), PQSTRING(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}

/*
QDBusMessage createErrorReply(const QDBusError &err) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY2 )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusMessage * ptr = new QDBusMessage( obj->createErrorReply () );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}

/*
QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY3 )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusMessage * ptr = new QDBusMessage( obj->createErrorReply ( (QDBusError::ErrorType) hb_parni(1), PQSTRING(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}


//[1]QDBusMessage createErrorReply(const QString name, const QString &msg) const
//[2]QDBusMessage createErrorReply(const QDBusError &err) const
//[3]QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY )
{
  // TODO: implementar
}

/*
QString service() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SERVICE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->service () );
  }
}


/*
QString path() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_PATH )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->path () );
  }
}


/*
QString interface() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_INTERFACE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->interface () );
  }
}


/*
QString member() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_MEMBER )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->member () );
  }
}


/*
QString errorName() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ERRORNAME )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorName () );
  }
}


/*
QString errorMessage() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ERRORMESSAGE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorMessage () );
  }
}


/*
MessageType type() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_TYPE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
QString signature() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SIGNATURE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->signature () );
  }
}


/*
bool isReplyRequired() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ISREPLYREQUIRED )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isReplyRequired () );
  }
}


/*
void setDelayedReply(bool enable) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SETDELAYEDREPLY )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDelayedReply ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isDelayedReply() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ISDELAYEDREPLY )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isDelayedReply () );
  }
}


/*
void setAutoStartService(bool enable)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SETAUTOSTARTSERVICE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoStartService ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool autoStartService() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_AUTOSTARTSERVICE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->autoStartService () );
  }
}


/*
void setArguments(const QList<QVariant> &arguments)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SETARGUMENTS )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setArguments ( PQVARIANTLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QVariant> arguments() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ARGUMENTS )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    _qt5xhb_convert_qvariantlist_to_array( obj->arguments () );
  }
}


/*
static QDBusMessage createSignal(const QString &path, const QString &interface,const QString &name)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATESIGNAL )
{
  QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createSignal ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
}


/*
static QDBusMessage createMethodCall(const QString &destination, const QString &path,const QString &interface, const QString &method)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEMETHODCALL )
{
  QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createMethodCall ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
}


/*
static QDBusMessage createError(const QString &name, const QString &msg)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR1 )
{
  QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createError ( PQSTRING(1), PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
}

/*
static inline QDBusMessage createError(const QDBusError &err)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR2 )
{
  QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createError () );
  _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
}

/*
static inline QDBusMessage createError(QDBusError::ErrorType type, const QString &msg)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR3 )
{
  QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createError ( (QDBusError::ErrorType) hb_parni(1), PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
}


//[1]static QDBusMessage createError(const QString &name, const QString &msg)
//[2]static inline QDBusMessage createError(const QDBusError &err)
//[3]static inline QDBusMessage createError(QDBusError::ErrorType type, const QString &msg)

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR )
{
  // TODO: implementar
}


$extraMethods

#pragma ENDDUMP

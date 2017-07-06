$header

#include "hbclass.ch"

CLASS QOpenGLDebugMessage

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD swap
   METHOD source
   METHOD type
   METHOD severity
   METHOD id
   METHOD message
   METHOD createApplicationMessage
   METHOD createThirdPartyMessage

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
QOpenGLDebugMessage()
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEW1 )
{
  QOpenGLDebugMessage * o = new QOpenGLDebugMessage ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QOpenGLDebugMessage(const QOpenGLDebugMessage &debugMessage)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEW2 )
{
  QOpenGLDebugMessage * o = new QOpenGLDebugMessage ( *PQOPENGLDEBUGMESSAGE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEW )
{
  // TODO: implementar
}

$deleteMethod

/*
void swap(QOpenGLDebugMessage &debugMessage)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SWAP )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLDebugMessage * par1 = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Source source() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SOURCE )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->source () );
  }
}


/*
Type type() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_TYPE )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
Severity severity() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SEVERITY )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->severity () );
  }
}


/*
GLuint id() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_ID )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->id () );
  }
}


/*
QString message() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_MESSAGE )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->message () );
  }
}


/*
static QOpenGLDebugMessage createApplicationMessage(const QString &text,GLuint id = 0,Severity severity = NotificationSeverity,Type type = OtherType)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_CREATEAPPLICATIONMESSAGE )
{
  int par3 = ISNIL(3)? (int) QOpenGLDebugMessage::NotificationSeverity : hb_parni(3);
  int par4 = ISNIL(4)? (int) QOpenGLDebugMessage::OtherType : hb_parni(4);
  QOpenGLDebugMessage * ptr = new QOpenGLDebugMessage( QOpenGLDebugMessage::createApplicationMessage ( PQSTRING(1), OPGLUINT(2,0), (QOpenGLDebugMessage::Severity) par3, (QOpenGLDebugMessage::Type) par4 ) );
  _qt5xhb_createReturnClass ( ptr, "QOPENGLDEBUGMESSAGE" );
}


/*
static QOpenGLDebugMessage createThirdPartyMessage(const QString &text,GLuint id = 0,Severity severity = NotificationSeverity,Type type = OtherType)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_CREATETHIRDPARTYMESSAGE )
{
  int par3 = ISNIL(3)? (int) QOpenGLDebugMessage::NotificationSeverity : hb_parni(3);
  int par4 = ISNIL(4)? (int) QOpenGLDebugMessage::OtherType : hb_parni(4);
  QOpenGLDebugMessage * ptr = new QOpenGLDebugMessage( QOpenGLDebugMessage::createThirdPartyMessage ( PQSTRING(1), OPGLUINT(2,0), (QOpenGLDebugMessage::Severity) par3, (QOpenGLDebugMessage::Type) par4 ) );
  _qt5xhb_createReturnClass ( ptr, "QOPENGLDEBUGMESSAGE" );
}

$extraMethods

#pragma ENDDUMP

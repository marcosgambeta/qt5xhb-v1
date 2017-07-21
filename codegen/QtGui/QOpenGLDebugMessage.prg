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
$method=|void|swap|QOpenGLDebugMessage &

/*
Source source() const
*/
$method=|QOpenGLDebugMessage::Source|source|

/*
Type type() const
*/
$method=|QOpenGLDebugMessage::Type|type|

/*
Severity severity() const
*/
$method=|QOpenGLDebugMessage::Severity|severity|

/*
GLuint id() const
*/
$method=|GLuint|id|

/*
QString message() const
*/
$method=|QString|message|

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

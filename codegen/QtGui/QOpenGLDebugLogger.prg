$header

#include "hbclass.ch"

CLASS QOpenGLDebugLogger INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD initialize
   METHOD isLogging
   METHOD loggingMode
   METHOD maximumMessageLength
   METHOD pushGroup
   METHOD popGroup
   METHOD logMessage
   METHOD startLogging
   METHOD stopLogging

   METHOD onMessageLogged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QOpenGLDebugLogger(QObject *parent = 0)
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_NEW )
{
  QOpenGLDebugLogger * o = new QOpenGLDebugLogger ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool initialize()
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_INITIALIZE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->initialize () );
  }
}


/*
bool isLogging() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_ISLOGGING )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isLogging () );
  }
}


/*
LoggingMode loggingMode() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_LOGGINGMODE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->loggingMode () );
  }
}


/*
qint64 maximumMessageLength() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_MAXIMUMMESSAGELENGTH )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->maximumMessageLength () );
  }
}


/*
void pushGroup(const QString &name,GLuint id = 0,QOpenGLDebugMessage::Source source = QOpenGLDebugMessage::ApplicationSource)
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_PUSHGROUP )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QOpenGLDebugMessage::ApplicationSource : hb_parni(3);
    obj->pushGroup ( PQSTRING(1), OPGLUINT(2,0), (QOpenGLDebugMessage::Source) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void popGroup()
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_POPGROUP )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->popGroup ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}







/*
void logMessage(const QOpenGLDebugMessage &debugMessage)
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_LOGMESSAGE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->logMessage ( *PQOPENGLDEBUGMESSAGE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void startLogging(LoggingMode loggingMode = AsynchronousLogging)
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_STARTLOGGING )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QOpenGLDebugLogger::AsynchronousLogging : hb_parni(1);
    obj->startLogging ( (QOpenGLDebugLogger::LoggingMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stopLogging()
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_STOPLOGGING )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stopLogging ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

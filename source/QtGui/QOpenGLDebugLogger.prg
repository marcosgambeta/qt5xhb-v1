/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QOpenGLDebugLogger INHERIT QObject

   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QOpenGLDebugLogger
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLDebugLogger>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLDebugLogger>
#endif

/*
QOpenGLDebugLogger(QObject *parent = 0)
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QOpenGLDebugLogger * o = new QOpenGLDebugLogger ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_DELETE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool initialize()
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_INITIALIZE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->initialize () );
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
    hb_retl( obj->isLogging () );
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
    hb_retni( obj->maximumMessageLength () );
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
    obj->pushGroup ( PQSTRING(1), (GLuint) ISNIL(2)? 0 : hb_parni(2),  (QOpenGLDebugMessage::Source) par3 );
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
    QOpenGLDebugMessage * par1 = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtr(1);
    obj->logMessage ( *par1 );
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
    obj->startLogging (  (QOpenGLDebugLogger::LoggingMode) par1 );
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
/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QOpenGLDebugLogger INHERIT QObject

   DATA class_id INIT Class_Id_QOpenGLDebugLogger
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QOpenGLDebugLogger>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QOpenGLDebugLogger>
#endif
#endif

/*
QOpenGLDebugLogger(QObject *parent = 0)
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QOpenGLDebugLogger * o = new QOpenGLDebugLogger ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLDebugLogger *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
bool initialize()
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_INITIALIZE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->initialize (  ) );
  }
}


/*
bool isLogging() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_ISLOGGING )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLogging (  ) );
  }
}


/*
LoggingMode loggingMode() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_LOGGINGMODE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->loggingMode (  );
    hb_retni( i );
  }
}


/*
qint64 maximumMessageLength() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_MAXIMUMMESSAGELENGTH )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maximumMessageLength (  ) );
  }
}


/*
void pushGroup(const QString &name,GLuint id = 0,QOpenGLDebugMessage::Source source = QOpenGLDebugMessage::ApplicationSource)
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_PUSHGROUP )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par3 = ISNIL(3)? (int) QOpenGLDebugMessage::ApplicationSource : hb_parni(3);
    obj->pushGroup ( par1, (GLuint) ISNIL(2)? 0 : hb_parni(2),  (QOpenGLDebugMessage::Source) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void popGroup()
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_POPGROUP )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->popGroup (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}







/*
void logMessage(const QOpenGLDebugMessage &debugMessage)
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_LOGMESSAGE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLDebugMessage * par1 = (QOpenGLDebugMessage *) _qtxhb_itemGetPtr(1);
    obj->logMessage ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void startLogging(LoggingMode loggingMode = AsynchronousLogging)
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_STARTLOGGING )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qtxhb_itemGetPtrStackSelfItem();
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
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stopLogging (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

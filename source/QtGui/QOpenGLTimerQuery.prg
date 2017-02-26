/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST GLUINT64
#endif

CLASS QOpenGLTimerQuery INHERIT QObject

   DATA class_id INIT Class_Id_QOpenGLTimerQuery
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD objectId
   METHOD begin
   METHOD end
   METHOD waitForTimestamp
   METHOD recordTimestamp
   METHOD isResultAvailable
   METHOD waitForResult
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLTimerQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QOpenGLTimerQuery>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QOpenGLTimerQuery>
#endif
#endif

/*
explicit QOpenGLTimerQuery(QObject *parent = 0)
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QOpenGLTimerQuery * o = new QOpenGLTimerQuery ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLTimerQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
#endif
}


HB_FUNC_STATIC( QOPENGLTIMERQUERY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
bool create()
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_CREATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->create (  ) );
  }
#endif
#endif
}


/*
void destroy()
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_DESTROY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->destroy (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}


/*
bool isCreated() const
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_ISCREATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCreated (  ) );
  }
#endif
#endif
}


/*
GLuint objectId() const
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_OBJECTID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->objectId (  ) );
  }
#endif
#endif
}


/*
void begin()
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_BEGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->begin (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}


/*
void end()
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_END )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->end (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}


/*
GLuint64 waitForTimestamp() const
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_WAITFORTIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLuint64 * ptr = new GLuint64( obj->waitForTimestamp (  ) );
    _qt4xhb_createReturnClass ( ptr, "GLUINT64" );
  }
#endif
#endif
}


/*
void recordTimestamp()
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_RECORDTIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->recordTimestamp (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}


/*
bool isResultAvailable() const
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_ISRESULTAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isResultAvailable (  ) );
  }
#endif
#endif
}


/*
GLuint64 waitForResult() const
*/
HB_FUNC_STATIC( QOPENGLTIMERQUERY_WAITFORRESULT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLuint64 * ptr = new GLuint64( obj->waitForResult (  ) );
    _qt4xhb_createReturnClass ( ptr, "GLUINT64" );
  }
#endif
#endif
}



#pragma ENDDUMP

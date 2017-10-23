/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QOpenGLTimerQuery INHERIT QObject

   DATA self_destruction INIT .F.

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

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
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
  QOpenGLTimerQuery * o = new QOpenGLTimerQuery ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
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
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->create () );
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
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->destroy ();
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
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCreated () );
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
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->objectId () );
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
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->begin ();
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
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->end ();
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
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT64( obj->waitForTimestamp () );
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
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->recordTimestamp ();
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
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isResultAvailable () );
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
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT64( obj->waitForResult () );
  }
#endif
#endif
}



#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QOpenGLTimeMonitor INHERIT QObject

   DATA class_id INIT Class_Id_QOpenGLTimeMonitor
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD sampleCount
   METHOD setSampleCount
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD objectIds
   METHOD recordSample
   METHOD isResultAvailable
   METHOD waitForSamples
   METHOD waitForIntervals
   METHOD reset

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLTimeMonitor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QOpenGLTimeMonitor>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QOpenGLTimeMonitor>
#endif
#endif

#include <QVector>

/*
explicit QOpenGLTimeMonitor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QOpenGLTimeMonitor * o = new QOpenGLTimeMonitor ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
#endif
}


HB_FUNC_STATIC( QOPENGLTIMEMONITOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int sampleCount() const
*/
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_SAMPLECOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sampleCount (  ) );
  }
#endif
#endif
}

/*
void setSampleCount(int sampleCount)
*/
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_SETSAMPLECOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSampleCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}


/*
bool create()
*/
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_CREATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_DESTROY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_ISCREATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCreated (  ) );
  }
#endif
#endif
}


/*
QVector<GLuint> objectIds() const
*/
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_OBJECTIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector<GLuint> list = obj->objectIds (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
#endif
#endif
}


/*
int recordSample()
*/
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_RECORDSAMPLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->recordSample (  ) );
  }
#endif
#endif
}


/*
bool isResultAvailable() const
*/
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_ISRESULTAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isResultAvailable (  ) );
  }
#endif
#endif
}


/*
QVector<GLuint64> waitForSamples() const
*/
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_WAITFORSAMPLES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector<GLuint64> list = obj->waitForSamples (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
#endif
#endif
}


/*
QVector<GLuint64> waitForIntervals() const
*/
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_WAITFORINTERVALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector<GLuint64> list = obj->waitForIntervals (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
#endif
#endif
}


/*
void reset()
*/
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_RESET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}



#pragma ENDDUMP

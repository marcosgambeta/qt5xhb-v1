/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QOPENGLCONTEXT
REQUEST QIMAGE
#endif

CLASS QOpenGLWidget INHERIT QWidget

   DATA class_id INIT Class_Id_QOpenGLWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD format
   METHOD setFormat
   METHOD isValid
   METHOD makeCurrent
   METHOD doneCurrent
   METHOD context
   METHOD defaultFramebufferObject
   METHOD grabFramebuffer
   METHOD onAboutToCompose
   METHOD onFrameSwapped
   METHOD onAboutToResize
   METHOD onResized
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QOpenGLWidget>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QOpenGLWidget>
#endif
#endif

/*
explicit QOpenGLWidget(QWidget* parent = 0, Qt::WindowFlags f = 0)
*/
HB_FUNC_STATIC( QOPENGLWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QOpenGLWidget * o = new QOpenGLWidget ( par1,  (Qt::WindowFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
#endif
}


HB_FUNC_STATIC( QOPENGLWIDGET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  QOpenGLWidget * obj = (QOpenGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QOPENGLWIDGET_FORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  QOpenGLWidget * obj = (QOpenGLWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
#endif
#endif
}

/*
void setFormat(const QSurfaceFormat &format)
*/
HB_FUNC_STATIC( QOPENGLWIDGET_SETFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  QOpenGLWidget * obj = (QOpenGLWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * par1 = (QSurfaceFormat *) _qtxhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QOPENGLWIDGET_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  QOpenGLWidget * obj = (QOpenGLWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
#endif
}


/*
void makeCurrent()
*/
HB_FUNC_STATIC( QOPENGLWIDGET_MAKECURRENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  QOpenGLWidget * obj = (QOpenGLWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->makeCurrent (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}


/*
void doneCurrent()
*/
HB_FUNC_STATIC( QOPENGLWIDGET_DONECURRENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  QOpenGLWidget * obj = (QOpenGLWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doneCurrent (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}


/*
QOpenGLContext *context() const
*/
HB_FUNC_STATIC( QOPENGLWIDGET_CONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  QOpenGLWidget * obj = (QOpenGLWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLContext * ptr = obj->context (  );
    _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXT" );
  }
#endif
#endif
}


/*
GLuint defaultFramebufferObject() const
*/
HB_FUNC_STATIC( QOPENGLWIDGET_DEFAULTFRAMEBUFFEROBJECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  QOpenGLWidget * obj = (QOpenGLWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultFramebufferObject (  ) );
  }
#endif
#endif
}


/*
QImage grabFramebuffer()
*/
HB_FUNC_STATIC( QOPENGLWIDGET_GRABFRAMEBUFFER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  QOpenGLWidget * obj = (QOpenGLWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->grabFramebuffer (  ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
#endif
#endif
}




#pragma ENDDUMP

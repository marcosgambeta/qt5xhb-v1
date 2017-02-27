/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QOPENGLFUNCTIONS
REQUEST QFUNCTIONPOINTER
REQUEST QSCREEN
REQUEST QOPENGLCONTEXTGROUP
REQUEST QSURFACE
#endif

CLASS QOpenGLContext INHERIT QObject

   DATA class_id INIT Class_Id_QOpenGLContext
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD create
   METHOD defaultFramebufferObject
   METHOD doneCurrent
   METHOD format
   METHOD functions
   METHOD getProcAddress
   METHOD hasExtension
   METHOD isValid
   METHOD makeCurrent
   METHOD screen
   METHOD setFormat
   METHOD setScreen
   METHOD setShareContext
   METHOD shareContext
   METHOD shareGroup
   METHOD surface
   METHOD swapBuffers
   METHOD areSharing
   METHOD currentContext
   METHOD onAboutToBeDestroyed
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QOpenGLContext>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QOpenGLContext>
#endif
#endif

/*
QOpenGLContext(QObject * parent = 0)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QOpenGLContext * o = new QOpenGLContext ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLContext *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QOPENGLCONTEXT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QOpenGLContext * obj = (QOpenGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool create()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_CREATE )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->create (  ) );
  }
}


/*
GLuint defaultFramebufferObject() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_DEFAULTFRAMEBUFFEROBJECT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultFramebufferObject (  ) );
  }
}


/*
void doneCurrent()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_DONECURRENT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doneCurrent (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_FORMAT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
}


/*
QOpenGLFunctions * functions() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_FUNCTIONS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLFunctions * ptr = obj->functions (  );
    _qt5xhb_createReturnClass ( ptr, "QOPENGLFUNCTIONS" );
  }
}


/*
QFunctionPointer getProcAddress(const QByteArray & procName) const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_GETPROCADDRESS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    QFunctionPointer * ptr = new QFunctionPointer( obj->getProcAddress ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
  }
}


/*
bool hasExtension(const QByteArray & extension) const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_HASEXTENSION )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->hasExtension ( *par1 ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_ISVALID )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool makeCurrent(QSurface * surface)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_MAKECURRENT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurface * par1 = (QSurface *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->makeCurrent ( par1 ) );
  }
}


/*
QScreen * screen() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SCREEN )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * ptr = obj->screen (  );
    _qt5xhb_createReturnClass ( ptr, "QSCREEN" );
  }
}


/*
void setFormat(const QSurfaceFormat & format)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETFORMAT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * par1 = (QSurfaceFormat *) _qtxhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScreen(QScreen * screen)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETSCREEN )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * par1 = (QScreen *) _qtxhb_itemGetPtr(1);
    obj->setScreen ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShareContext(QOpenGLContext * shareContext)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETSHARECONTEXT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLContext * par1 = (QOpenGLContext *) _qtxhb_itemGetPtr(1);
    obj->setShareContext ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QOpenGLContext * shareContext() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SHARECONTEXT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLContext * ptr = obj->shareContext (  );
    _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXT" );
  }
}


/*
QOpenGLContextGroup * shareGroup() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SHAREGROUP )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLContextGroup * ptr = obj->shareGroup (  );
    _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXTGROUP" );
  }
}


/*
QSurface * surface() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SURFACE )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurface * ptr = obj->surface (  );
    _qt5xhb_createReturnClass ( ptr, "QSURFACE" );
  }
}


/*
void swapBuffers(QSurface * surface)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SWAPBUFFERS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurface * par1 = (QSurface *) _qtxhb_itemGetPtr(1);
    obj->swapBuffers ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool areSharing(QOpenGLContext * first, QOpenGLContext * second)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_ARESHARING )
{
  QOpenGLContext * par1 = (QOpenGLContext *) _qtxhb_itemGetPtr(1);
  QOpenGLContext * par2 = (QOpenGLContext *) _qtxhb_itemGetPtr(2);
  hb_retl( QOpenGLContext::areSharing ( par1, par2 ) );
}


/*
static QOpenGLContext * currentContext()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_CURRENTCONTEXT )
{
  QOpenGLContext * ptr = QOpenGLContext::currentContext (  );
  _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXT" );
}




#pragma ENDDUMP

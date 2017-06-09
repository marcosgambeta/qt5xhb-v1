/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QOPENGLFUNCTIONS
REQUEST QFUNCTIONPOINTER
REQUEST QSCREEN
REQUEST QOPENGLCONTEXTGROUP
REQUEST QSURFACE
#endif

CLASS QOpenGLContext INHERIT QObject

   DATA self_destruction INIT .F.

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
#include <QOpenGLContext>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLContext>
#endif

/*
QOpenGLContext(QObject * parent = 0)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_NEW )
{
  QOpenGLContext * o = new QOpenGLContext ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QOPENGLCONTEXT_DELETE )
{
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
}

/*
bool create()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_CREATE )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->create () );
  }
}


/*
GLuint defaultFramebufferObject() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_DEFAULTFRAMEBUFFEROBJECT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultFramebufferObject () );
  }
}


/*
void doneCurrent()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_DONECURRENT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doneCurrent ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_FORMAT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
}


/*
QOpenGLFunctions * functions() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_FUNCTIONS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLFunctions * ptr = obj->functions ();
    _qt5xhb_createReturnClass ( ptr, "QOPENGLFUNCTIONS" );
  }
}


/*
QFunctionPointer getProcAddress(const QByteArray & procName) const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_GETPROCADDRESS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFunctionPointer * ptr = new QFunctionPointer( obj->getProcAddress ( *PQBYTEARRAY(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
  }
}


/*
bool hasExtension(const QByteArray & extension) const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_HASEXTENSION )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasExtension ( *PQBYTEARRAY(1) ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_ISVALID )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}


/*
bool makeCurrent(QSurface * surface)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_MAKECURRENT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurface * par1 = (QSurface *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->makeCurrent ( par1 ) );
  }
}


/*
QScreen * screen() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SCREEN )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * ptr = obj->screen ();
    _qt5xhb_createReturnClass ( ptr, "QSCREEN" );
  }
}


/*
void setFormat(const QSurfaceFormat & format)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETFORMAT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * par1 = (QSurfaceFormat *) _qt5xhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScreen(QScreen * screen)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETSCREEN )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * par1 = (QScreen *) _qt5xhb_itemGetPtr(1);
    obj->setScreen ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShareContext(QOpenGLContext * shareContext)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETSHARECONTEXT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLContext * par1 = (QOpenGLContext *) _qt5xhb_itemGetPtr(1);
    obj->setShareContext ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QOpenGLContext * shareContext() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SHARECONTEXT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLContext * ptr = obj->shareContext ();
    _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXT" );
  }
}


/*
QOpenGLContextGroup * shareGroup() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SHAREGROUP )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLContextGroup * ptr = obj->shareGroup ();
    _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXTGROUP" );
  }
}


/*
QSurface * surface() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SURFACE )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurface * ptr = obj->surface ();
    _qt5xhb_createReturnClass ( ptr, "QSURFACE" );
  }
}


/*
void swapBuffers(QSurface * surface)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SWAPBUFFERS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurface * par1 = (QSurface *) _qt5xhb_itemGetPtr(1);
    obj->swapBuffers ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool areSharing(QOpenGLContext * first, QOpenGLContext * second)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_ARESHARING )
{
  QOpenGLContext * par1 = (QOpenGLContext *) _qt5xhb_itemGetPtr(1);
  QOpenGLContext * par2 = (QOpenGLContext *) _qt5xhb_itemGetPtr(2);
  hb_retl( QOpenGLContext::areSharing ( par1, par2 ) );
}


/*
static QOpenGLContext * currentContext()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_CURRENTCONTEXT )
{
  QOpenGLContext * ptr = QOpenGLContext::currentContext ();
  _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXT" );
}




#pragma ENDDUMP

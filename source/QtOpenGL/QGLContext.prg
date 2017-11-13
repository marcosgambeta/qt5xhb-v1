/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTDEVICE
REQUEST QGLFORMAT
REQUEST QCOLOR
#endif

CLASS QGLContext

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bindTexture1
   METHOD bindTexture2
   METHOD bindTexture3
   METHOD bindTexture4
   METHOD bindTexture5
   METHOD bindTexture
   METHOD create
   METHOD deleteTexture
   METHOD device
   METHOD doneCurrent
   METHOD drawTexture1
   METHOD drawTexture2
   METHOD drawTexture
   METHOD format
   METHOD isSharing
   METHOD isValid
   METHOD makeCurrent
   METHOD overlayTransparentColor
   METHOD requestedFormat
   METHOD reset
   METHOD setFormat
   METHOD swapBuffers
   METHOD areSharing
   METHOD currentContext
   METHOD setTextureCacheLimit
   METHOD textureCacheLimit

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGLContext>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGLContext>
#endif

/*
QGLContext ( const QGLFormat & format )
*/
HB_FUNC_STATIC( QGLCONTEXT_NEW )
{
  QGLContext * o = new QGLContext ( *PQGLFORMAT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGLCONTEXT_DELETE )
{
  QGLContext * obj = (QGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
GLuint bindTexture ( const QImage & image, GLenum target, GLint format, BindOptions options )
*/
HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE1 )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par4 = hb_parni(4);
    RGLUINT( obj->bindTexture ( *PQIMAGE(1), PGLENUM(2), PGLINT(3), (QGLContext::BindOptions) par4 ) );
  }
}

/*
GLuint bindTexture ( const QString & fileName )
*/
HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE2 )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->bindTexture ( PQSTRING(1) ) );
  }
}

/*
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE3 )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->bindTexture ( *PQIMAGE(1), OPGLENUM(2,GL_TEXTURE_2D), OPGLINT(3,GL_RGBA) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE4 )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->bindTexture ( *PQPIXMAP(1), OPGLENUM(2,GL_TEXTURE_2D), OPGLINT(3,GL_RGBA) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, BindOptions options )
*/
HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE5 )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par4 = hb_parni(4);
    RGLUINT( obj->bindTexture ( *PQPIXMAP(1), PGLENUM(2), PGLINT(3), (QGLContext::BindOptions) par4 ) );
  }
}


//[1]GLuint bindTexture ( const QImage & image, GLenum target, GLint format, BindOptions options )
//[2]GLuint bindTexture ( const QString & fileName )
//[3]GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
//[4]GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
//[5]GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, BindOptions options )

HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE )
{
  if( ISNUMPAR(4) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_BINDTEXTURE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_BINDTEXTURE2 );
  }
  else if( ISBETWEEN(1,3) && ISQIMAGE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_BINDTEXTURE3 );
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_BINDTEXTURE4 );
  }
  else if( ISNUMPAR(4) && ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_BINDTEXTURE5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool create ( const QGLContext * shareContext = 0 )
*/
HB_FUNC_STATIC( QGLCONTEXT_CREATE )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGLContext * par1 = ISNIL(1)? 0 : (QGLContext *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->create ( par1 ) );
  }
}


/*
void deleteTexture ( GLuint id )
*/
HB_FUNC_STATIC( QGLCONTEXT_DELETETEXTURE )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deleteTexture ( PGLUINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPaintDevice * device () const
*/
HB_FUNC_STATIC( QGLCONTEXT_DEVICE )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}


/*
virtual void doneCurrent ()
*/
HB_FUNC_STATIC( QGLCONTEXT_DONECURRENT )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doneCurrent ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLCONTEXT_DRAWTEXTURE1 )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawTexture ( *PQRECTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLCONTEXT_DRAWTEXTURE2 )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawTexture ( *PQPOINTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLCONTEXT_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_DRAWTEXTURE1 );
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_DRAWTEXTURE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFormat format () const
*/
HB_FUNC_STATIC( QGLCONTEXT_FORMAT )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGLFormat * ptr = new QGLFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QGLFORMAT" );
  }
}



/*
bool isSharing () const
*/
HB_FUNC_STATIC( QGLCONTEXT_ISSHARING )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSharing () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLCONTEXT_ISVALID )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
virtual void makeCurrent ()
*/
HB_FUNC_STATIC( QGLCONTEXT_MAKECURRENT )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->makeCurrent ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QColor overlayTransparentColor () const
*/
HB_FUNC_STATIC( QGLCONTEXT_OVERLAYTRANSPARENTCOLOR )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->overlayTransparentColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QGLFormat requestedFormat () const
*/
HB_FUNC_STATIC( QGLCONTEXT_REQUESTEDFORMAT )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGLFormat * ptr = new QGLFormat( obj->requestedFormat () );
    _qt5xhb_createReturnClass ( ptr, "QGLFORMAT" );
  }
}


/*
void reset ()
*/
HB_FUNC_STATIC( QGLCONTEXT_RESET )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat ( const QGLFormat & format )
*/
HB_FUNC_STATIC( QGLCONTEXT_SETFORMAT )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFormat ( *PQGLFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void swapBuffers () const
*/
HB_FUNC_STATIC( QGLCONTEXT_SWAPBUFFERS )
{
  QGLContext * obj = (QGLContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->swapBuffers ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool areSharing ( const QGLContext * context1, const QGLContext * context2 )
*/
HB_FUNC_STATIC( QGLCONTEXT_ARESHARING )
{
  QGLContext * par1 = (QGLContext *) _qt5xhb_itemGetPtr(1);
  QGLContext * par2 = (QGLContext *) _qt5xhb_itemGetPtr(2);
  RBOOL( QGLContext::areSharing ( par1, par2 ) );
}


/*
static const QGLContext * currentContext ()
*/
HB_FUNC_STATIC( QGLCONTEXT_CURRENTCONTEXT )
{
  const QGLContext * ptr = QGLContext::currentContext ();
  _qt5xhb_createReturnClass ( ptr, "QGLCONTEXT" );
}


/*
static void setTextureCacheLimit ( int size )
*/
HB_FUNC_STATIC( QGLCONTEXT_SETTEXTURECACHELIMIT )
{
  QGLContext::setTextureCacheLimit ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static int textureCacheLimit ()
*/
HB_FUNC_STATIC( QGLCONTEXT_TEXTURECACHELIMIT )
{
  RINT( QGLContext::textureCacheLimit () );
}



HB_FUNC_STATIC( QGLCONTEXT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGLCONTEXT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QGLCONTEXT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QGLCONTEXT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLCONTEXT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP

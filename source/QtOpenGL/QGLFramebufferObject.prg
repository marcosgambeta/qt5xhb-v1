/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGLFRAMEBUFFEROBJECTFORMAT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QPAINTENGINE
#endif

CLASS QGLFramebufferObject INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD attachment
   METHOD bind
   METHOD drawTexture1
   METHOD drawTexture2
   METHOD drawTexture
   METHOD format
   METHOD handle
   METHOD isBound
   METHOD isValid
   METHOD release
   METHOD size
   METHOD texture
   METHOD toImage
   METHOD paintEngine
   METHOD blitFramebuffer
   METHOD hasOpenGLFramebufferBlit
   METHOD hasOpenGLFramebufferObjects

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLFramebufferObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGLFramebufferObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGLFramebufferObject>
#endif

/*
QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW1 )
{
  GLenum par2 = ISNIL(2)? GL_TEXTURE_2D : hb_parni(2);
  QGLFramebufferObject * o = new QGLFramebufferObject ( *PQSIZE(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW2 )
{
  GLenum par3 = ISNIL(3)? GL_TEXTURE_2D : hb_parni(3);
  QGLFramebufferObject * o = new QGLFramebufferObject ( PINT(1), PINT(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW3 )
{
  QGLFramebufferObjectFormat * par2 = (QGLFramebufferObjectFormat *) _qt5xhb_itemGetPtr(2);
  QGLFramebufferObject * o = new QGLFramebufferObject ( *PQSIZE(1), *par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW4 )
{
  QGLFramebufferObjectFormat * par3 = (QGLFramebufferObjectFormat *) _qt5xhb_itemGetPtr(3);
  QGLFramebufferObject * o = new QGLFramebufferObject ( PINT(1), PINT(2), *par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
//[2]QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
//[3]QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
//[4]QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
//[5]QGLFramebufferObject ( int width, int height, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
//[6]QGLFramebufferObject ( const QSize & size, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW )
{
  if( ISBETWEEN(1,2) && ISQSIZE(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISQGLFRAMEBUFFEROBJECTFORMAT(2) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_NEW3 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQGLFRAMEBUFFEROBJECTFORMAT(3) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_NEW4 );
  }
  //else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  //{
  //  HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_NEW5 );
  //}
  //else if( ISBETWEEN(2,4) && ISQSIZE(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  //{
  //  HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_NEW6 );
  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DELETE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Attachment attachment () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ATTACHMENT )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->attachment () );
  }
}


/*
bool bind ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_BIND )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->bind () );
  }
}


/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE1 )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawTexture ( *PQRECTF(1), (GLenum) ISNIL(3)? GL_TEXTURE_2D : hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE2 )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawTexture ( *PQPOINTF(1), (GLuint) hb_parni(2), (GLenum) ISNIL(3)? GL_TEXTURE_2D : hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE1 );
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFramebufferObjectFormat format () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_FORMAT )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGLFramebufferObjectFormat * ptr = new QGLFramebufferObjectFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QGLFRAMEBUFFEROBJECTFORMAT" );
  }
}


/*
GLuint handle () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HANDLE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->handle () );
  }
}


/*
bool isBound () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ISBOUND )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isBound () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ISVALID )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
bool release ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_RELEASE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->release () );
  }
}


/*
QSize size () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_SIZE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
GLuint texture () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_TEXTURE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->texture () );
  }
}


/*
QImage toImage () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_TOIMAGE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->toImage () );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
virtual QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_PAINTENGINE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}


/*
static void blitFramebuffer ( QGLFramebufferObject * target, const QRect & targetRect, QGLFramebufferObject * source, const QRect & sourceRect, GLbitfield buffers = GL_COLOR_BUFFER_BIT, GLenum filter = GL_NEAREST )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER )
{
  QGLFramebufferObject * par1 = (QGLFramebufferObject *) _qt5xhb_itemGetPtr(1);
  QGLFramebufferObject * par3 = (QGLFramebufferObject *) _qt5xhb_itemGetPtr(3);
  QGLFramebufferObject::blitFramebuffer ( par1, *PQRECT(2), par3, *PQRECT(4), (GLenum) ISNIL(6)? GL_NEAREST : hb_parni(6) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool hasOpenGLFramebufferBlit ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFERBLIT )
{
  RBOOL( QGLFramebufferObject::hasOpenGLFramebufferBlit () );
}


/*
static bool hasOpenGLFramebufferObjects ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFEROBJECTS )
{
  RBOOL( QGLFramebufferObject::hasOpenGLFramebufferObjects () );
}



#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QGLFRAMEBUFFEROBJECTFORMAT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QPAINTENGINE
#endif

CLASS QGLFramebufferObject INHERIT QPaintDevice

   DATA class_id INIT Class_Id_QGLFramebufferObject
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGLFramebufferObject>
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
#include <QGLFramebufferObject>
#endif
#endif

/*
QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  GLenum par2 = ISNIL(2)? GL_TEXTURE_2D : hb_parni(2);
  QGLFramebufferObject * o = new QGLFramebufferObject ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  GLenum par3 = ISNIL(3)? GL_TEXTURE_2D : hb_parni(3);
  QGLFramebufferObject * o = new QGLFramebufferObject ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  QGLFramebufferObjectFormat * par2 = (QGLFramebufferObjectFormat *) _qtxhb_itemGetPtr(2);
  QGLFramebufferObject * o = new QGLFramebufferObject ( *par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QGLFramebufferObjectFormat * par3 = (QGLFramebufferObjectFormat *) _qtxhb_itemGetPtr(3);
  QGLFramebufferObject * o = new QGLFramebufferObject ( par1, par2, *par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
//[2]QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
//[3]QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
//[4]QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
//[5]QGLFramebufferObject ( int width, int height, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
//[6]QGLFramebufferObject ( const QSize & size, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW )
{
  if( ISBETWEEN(1,2) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
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
  //else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  //{
  //  HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_NEW5 );
  //}
  //else if( ISBETWEEN(2,4) && ISQSIZE(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
Attachment attachment () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ATTACHMENT )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->attachment (  ) );
  }
}


/*
bool bind ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_BIND )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->bind (  ) );
  }
}


/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE1 )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->drawTexture ( *par1, (GLenum) ISNIL(3)? GL_TEXTURE_2D : hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE2 )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->drawTexture ( *par1, (GLuint) hb_parni(2), (GLenum) ISNIL(3)? GL_TEXTURE_2D : hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE1 );
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
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
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGLFramebufferObjectFormat * ptr = new QGLFramebufferObjectFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QGLFRAMEBUFFEROBJECTFORMAT" );
  }
}


/*
GLuint handle () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HANDLE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->handle (  ) );
  }
}


/*
bool isBound () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ISBOUND )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isBound (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ISVALID )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool release ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_RELEASE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->release (  ) );
  }
}


/*
QSize size () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_SIZE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
GLuint texture () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_TEXTURE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->texture (  ) );
  }
}


/*
QImage toImage () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_TOIMAGE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->toImage (  ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
virtual QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_PAINTENGINE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine (  );
    _qt4xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}


/*
static void blitFramebuffer ( QGLFramebufferObject * target, const QRect & targetRect, QGLFramebufferObject * source, const QRect & sourceRect, GLbitfield buffers = GL_COLOR_BUFFER_BIT, GLenum filter = GL_NEAREST )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER )
{
  QGLFramebufferObject * par1 = (QGLFramebufferObject *) _qtxhb_itemGetPtr(1);
  QRect * par2 = (QRect *) _qtxhb_itemGetPtr(2);
  QGLFramebufferObject * par3 = (QGLFramebufferObject *) _qtxhb_itemGetPtr(3);
  QRect * par4 = (QRect *) _qtxhb_itemGetPtr(4);
  QGLFramebufferObject::blitFramebuffer ( par1, *par2, par3, *par4, (GLenum) ISNIL(6)? GL_NEAREST : hb_parni(6) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool hasOpenGLFramebufferBlit ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFERBLIT )
{
  hb_retl( QGLFramebufferObject::hasOpenGLFramebufferBlit (  ) );
}


/*
static bool hasOpenGLFramebufferObjects ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFEROBJECTS )
{
  hb_retl( QGLFramebufferObject::hasOpenGLFramebufferObjects (  ) );
}



#pragma ENDDUMP

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOPENGLFRAMEBUFFEROBJECTFORMAT
REQUEST QSIZE
REQUEST QIMAGE
#endif

CLASS QOpenGLFramebufferObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD format
   METHOD isValid
   METHOD isBound
   METHOD bind
   METHOD release
   METHOD width
   METHOD height
   METHOD texture
   METHOD size
   METHOD toImage
   METHOD attachment
   METHOD setAttachment
   METHOD handle
   METHOD bindDefault
   METHOD hasOpenGLFramebufferObjects
   METHOD hasOpenGLFramebufferBlit
   METHOD blitFramebuffer1
   METHOD blitFramebuffer2
   METHOD blitFramebuffer

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLFramebufferObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLFramebufferObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLFramebufferObject>
#endif

#include <QImage>

/*
QOpenGLFramebufferObject(const QSize &size, GLenum target = GL_TEXTURE_2D)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW1 )
{
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( *PQSIZE(1), OPGLENUM(2,GL_TEXTURE_2D) );
  _qt5xhb_storePointerAndFlag( o, false );
}


/*
QOpenGLFramebufferObject(int width, int height, GLenum target = GL_TEXTURE_2D)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW2 )
{
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( PINT(1), PINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  _qt5xhb_storePointerAndFlag( o, false );
}


#if !defined(QT_OPENGL_ES) || defined(Q_QDOC)
/*
QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW3 )
{
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( *PQSIZE(1), (QOpenGLFramebufferObject::Attachment) hb_parni(2), OPGLENUM(3,GL_TEXTURE_2D), OPGLENUM(4,GL_RGBA8) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW4 )
{
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( PINT(1), PINT(2), (QOpenGLFramebufferObject::Attachment) hb_parni(3), OPGLENUM(4,GL_TEXTURE_2D), OPGLENUM(5,GL_RGBA8) );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW5 )
{
}
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW6 )
{
}
#else
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW3 )
{
}
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW4 )
{
}
/*
QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW5 )
{
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( *PQSIZE(1), (QOpenGLFramebufferObject::Attachment) hb_parni(2), OPGLENUM(3,GL_TEXTURE_2D), OPGLENUM(4,GL_RGBA) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW6 )
{
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( PINT(1), PINT(2), (QOpenGLFramebufferObject::Attachment) hb_parni(3), OPGLENUM(4,GL_TEXTURE_2D), OPGLENUM(5,GL_RGBA) );
  _qt5xhb_storePointerAndFlag( o, false );
}

#endif

/*
QOpenGLFramebufferObject(const QSize &size, const QOpenGLFramebufferObjectFormat &format)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW7 )
{
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( *PQSIZE(1), *PQOPENGLFRAMEBUFFEROBJECTFORMAT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}


/*
QOpenGLFramebufferObject(int width, int height, const QOpenGLFramebufferObjectFormat &format)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW8 )
{
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( PINT(1), PINT(2), *PQOPENGLFRAMEBUFFEROBJECTFORMAT(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QOpenGLFramebufferObject(const QSize &size, GLenum target = GL_TEXTURE_2D)
//[2]QOpenGLFramebufferObject(int width, int height, GLenum target = GL_TEXTURE_2D)
//[3]QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
//[4]QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
//[5]QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
//[6]QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
//[7]QOpenGLFramebufferObject(const QSize &size, const QOpenGLFramebufferObjectFormat &format)
//[8]QOpenGLFramebufferObject(int width, int height, const QOpenGLFramebufferObjectFormat &format)

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW )
{
  if( ISBETWEEN(1,2) && ISQSIZE(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW2 );
  }
#if !defined(QT_OPENGL_ES) || defined(Q_QDOC)
  else if( ISBETWEEN(2,4) && ISQSIZE(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW3 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW4 );
  }
#else
  else if( ISBETWEEN(2,4) && ISQSIZE(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW5 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW6 );
  }
#endif
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(2) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW7 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(3) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_DELETE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QOpenGLFramebufferObjectFormat format() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_FORMAT )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLFramebufferObjectFormat * ptr = new QOpenGLFramebufferObjectFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QOPENGLFRAMEBUFFEROBJECTFORMAT" );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_ISVALID )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
bool isBound() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_ISBOUND )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isBound () );
  }
}


/*
bool bind()
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BIND )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->bind () );
  }
}


/*
bool release()
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_RELEASE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->release () );
  }
}


/*
int width() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_WIDTH )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->width () );
  }
}


/*
int height() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_HEIGHT )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->height () );
  }
}


/*
GLuint texture() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_TEXTURE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->texture () );
  }
}


/*
QSize size() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_SIZE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QImage toImage() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_TOIMAGE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->toImage () );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
Attachment attachment() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_ATTACHMENT )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->attachment () );
  }
}


/*
void setAttachment(Attachment attachment)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_SETATTACHMENT )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttachment ( (QOpenGLFramebufferObject::Attachment) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
GLuint handle() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_HANDLE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->handle () );
  }
}


/*
static bool bindDefault()
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BINDDEFAULT )
{
  RBOOL( QOpenGLFramebufferObject::bindDefault () );
}


/*
static bool hasOpenGLFramebufferObjects()
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFEROBJECTS )
{
  RBOOL( QOpenGLFramebufferObject::hasOpenGLFramebufferObjects () );
}


/*
static bool hasOpenGLFramebufferBlit()
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFERBLIT )
{
  RBOOL( QOpenGLFramebufferObject::hasOpenGLFramebufferBlit () );
}


/*
static void blitFramebuffer(QOpenGLFramebufferObject *target, const QRect &targetRect,QOpenGLFramebufferObject *source, const QRect &sourceRect,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER1 )
{
  QOpenGLFramebufferObject::blitFramebuffer ( PQOPENGLFRAMEBUFFEROBJECT(1), *PQRECT(2), PQOPENGLFRAMEBUFFEROBJECT(3), *PQRECT(4), OPGLBITFIELD(5,GL_COLOR_BUFFER_BIT), OPGLENUM(6,GL_NEAREST) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void blitFramebuffer(QOpenGLFramebufferObject *target,QOpenGLFramebufferObject *source,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER2 )
{
  QOpenGLFramebufferObject::blitFramebuffer ( PQOPENGLFRAMEBUFFEROBJECT(1), PQOPENGLFRAMEBUFFEROBJECT(2), OPGLBITFIELD(3,GL_COLOR_BUFFER_BIT), OPGLENUM(4,GL_NEAREST) );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void blitFramebuffer(QOpenGLFramebufferObject *target, const QRect &targetRect,QOpenGLFramebufferObject *source, const QRect &sourceRect,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
//[2]void blitFramebuffer(QOpenGLFramebufferObject *target,QOpenGLFramebufferObject *source,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER )
{
  if( ISBETWEEN(4,6) && ISQOPENGLFRAMEBUFFEROBJECT(1) && ISQRECT(2) && ISQOPENGLFRAMEBUFFEROBJECT(3) && ISQRECT(4) && ISOPTNUM(5) && ISOPTNUM(6) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER1 );
  }
  else if( ISBETWEEN(2,4) && ISQOPENGLFRAMEBUFFEROBJECT(1) && ISQOPENGLFRAMEBUFFEROBJECT(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEWFROM )
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

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_SETSELFDESTRUCTION )
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
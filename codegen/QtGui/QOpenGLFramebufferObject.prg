%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

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
   METHOD blitFramebuffer

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QImage>

$prototype=QOpenGLFramebufferObject(const QSize &size, GLenum target = GL_TEXTURE_2D)
$constructor=|new1|const QSize &,GLenum=GL_TEXTURE_2D

$prototype=QOpenGLFramebufferObject(int width, int height, GLenum target = GL_TEXTURE_2D)
$constructor=|new2|int,int,GLenum=GL_TEXTURE_2D

#if !defined(QT_OPENGL_ES) || defined(Q_QDOC)

$prototype=QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
$constructor=|new3|const QSize &,QOpenGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA8

$prototype=QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
$constructor=|new4|int,int,QOpenGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA8

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

$prototype=QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
$constructor=|new5|const QSize &,QOpenGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA

$prototype=QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
$constructor=|new6|int,int,QOpenGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA

#endif

$prototype=QOpenGLFramebufferObject(const QSize &size, const QOpenGLFramebufferObjectFormat &format)
$constructor=|new7|const QSize &,const QOpenGLFramebufferObjectFormat &

$prototype=QOpenGLFramebufferObject(int width, int height, const QOpenGLFramebufferObjectFormat &format)
$constructor=|new8|int,int,const QOpenGLFramebufferObjectFormat &

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

$deleteMethod

$prototype=QOpenGLFramebufferObjectFormat format() const
$method=|QOpenGLFramebufferObjectFormat|format|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=bool isBound() const
$method=|bool|isBound|

$prototype=bool bind()
$method=|bool|bind|

$prototype=bool release()
$method=|bool|release|

$prototype=int width() const
$method=|int|width|

$prototype=int height() const
$method=|int|height|

$prototype=GLuint texture() const
$method=|GLuint|texture|

$prototype=QSize size() const
$method=|QSize|size|

$prototype=QImage toImage() const
$method=|QImage|toImage|

$prototype=Attachment attachment() const
$method=|QOpenGLFramebufferObject::Attachment|attachment|

$prototype=void setAttachment(Attachment attachment)
$method=|void|setAttachment|QOpenGLFramebufferObject::Attachment

$prototype=GLuint handle() const
$method=|GLuint|handle|

$prototype=static bool bindDefault()
$staticMethod=|bool|bindDefault|

$prototype=static bool hasOpenGLFramebufferObjects()
$staticMethod=|bool|hasOpenGLFramebufferObjects|

$prototype=static bool hasOpenGLFramebufferBlit()
$staticMethod=|bool|hasOpenGLFramebufferBlit|

$prototype=static void blitFramebuffer(QOpenGLFramebufferObject *target, const QRect &targetRect,QOpenGLFramebufferObject *source, const QRect &sourceRect,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
$internalStaticMethod=|void|blitFramebuffer,blitFramebuffer1|QOpenGLFramebufferObject *,const QRect &,QOpenGLFramebufferObject *,const QRect &,GLbitfield=GL_COLOR_BUFFER_BIT,GLenum=GL_NEAREST

$prototype=static void blitFramebuffer(QOpenGLFramebufferObject *target,QOpenGLFramebufferObject *source,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
$internalStaticMethod=|void|blitFramebuffer,blitFramebuffer2|QOpenGLFramebufferObject *,QOpenGLFramebufferObject *,GLbitfield=GL_COLOR_BUFFER_BIT,GLenum=GL_NEAREST

//[1]void blitFramebuffer(QOpenGLFramebufferObject *target, const QRect &targetRect,QOpenGLFramebufferObject *source, const QRect &sourceRect,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
//[2]void blitFramebuffer(QOpenGLFramebufferObject *target,QOpenGLFramebufferObject *source,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER )
{
  if( ISBETWEEN(4,6) && ISQOPENGLFRAMEBUFFEROBJECT(1) && ISQRECT(2) && ISQOPENGLFRAMEBUFFEROBJECT(3) && ISQRECT(4) && ISOPTNUM(5) && ISOPTNUM(6) )
  {
    QOpenGLFramebufferObject_blitFramebuffer1();
  }
  else if( ISBETWEEN(2,4) && ISQOPENGLFRAMEBUFFEROBJECT(1) && ISQOPENGLFRAMEBUFFEROBJECT(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QOpenGLFramebufferObject_blitFramebuffer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP

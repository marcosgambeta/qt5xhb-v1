%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGLFRAMEBUFFEROBJECTFORMAT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QPAINTENGINE
#endif

CLASS QGLFramebufferObject INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD attachment
   METHOD bind
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

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
$internalConstructor=|new1|const QSize &,GLenum=GL_TEXTURE_2D

$prototype=QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
$internalConstructor=|new2|int,int,GLenum=GL_TEXTURE_2D

$prototype=QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
$internalConstructor=|new3|const QSize &,const QGLFramebufferObjectFormat &

$prototype=QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
$internalConstructor=|new4|int,int,const QGLFramebufferObjectFormat &

$prototype=QGLFramebufferObject ( int width, int height, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
$internalConstructor=|new5|int,int,QGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA8

$prototype=QGLFramebufferObject ( const QSize & size, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
$internalConstructor=|new6|const QSize &,QGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA8

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
    QGLFramebufferObject_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLFramebufferObject_new2();
  }
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISQGLFRAMEBUFFEROBJECTFORMAT(2) )
  {
    QGLFramebufferObject_new3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQGLFRAMEBUFFEROBJECTFORMAT(3) )
  {
    QGLFramebufferObject_new4();
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QGLFramebufferObject_new5();
  }
  else if( ISBETWEEN(2,4) && ISQSIZE(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QGLFramebufferObject_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=Attachment attachment () const
$method=|QGLFramebufferObject::Attachment|attachment|

$prototype=bool bind ()
$method=|bool|bind|

$prototype=void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
$internalMethod=|void|drawTexture,drawTexture1|const QRectF &,GLuint,GLenum=GL_TEXTURE_2D

$prototype=void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
$internalMethod=|void|drawTexture,drawTexture2|const QPointF &,GLuint,GLenum=GL_TEXTURE_2D

//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLFrameBufferObject_drawTexture1();
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLFrameBufferObject_drawTexture2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QGLFramebufferObjectFormat format () const
$method=|QGLFramebufferObjectFormat|format|

$prototype=GLuint handle () const
$method=|GLuint|handle|

$prototype=bool isBound () const
$method=|bool|isBound|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool release ()
$method=|bool|release|

$prototype=QSize size () const
$method=|QSize|size|

$prototype=GLuint texture () const
$method=|GLuint|texture|

$prototype=QImage toImage () const
$method=|QImage|toImage|

$prototype=virtual QPaintEngine * paintEngine () const
$virtualMethod=|QPaintEngine *|paintEngine|

$prototype=static void blitFramebuffer ( QGLFramebufferObject * target, const QRect & targetRect, QGLFramebufferObject * source, const QRect & sourceRect, GLbitfield buffers = GL_COLOR_BUFFER_BIT, GLenum filter = GL_NEAREST )
$staticMethod=|void|blitFramebuffer|QGLFramebufferObject *,const QRect &,QGLFramebufferObject *,const QRect &,GLbitfield=GL_COLOR_BUFFER_BIT,GLenum=GL_NEAREST

$prototype=static bool hasOpenGLFramebufferBlit ()
$staticMethod=|bool|hasOpenGLFramebufferBlit|

$prototype=static bool hasOpenGLFramebufferObjects ()
$staticMethod=|bool|hasOpenGLFramebufferObjects|

#pragma ENDDUMP

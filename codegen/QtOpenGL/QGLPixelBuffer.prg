%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGLFORMAT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QPAINTENGINE
#endif

$beginClassFrom=QPaintDevice

   METHOD new
   METHOD delete
   METHOD bindTexture
   METHOD bindToDynamicTexture
   METHOD deleteTexture
   METHOD doneCurrent
   METHOD drawTexture
   METHOD format
   METHOD generateDynamicTexture
   METHOD isValid
   METHOD makeCurrent
   METHOD releaseFromDynamicTexture
   METHOD size
   METHOD toImage
   METHOD updateDynamicTexture
   METHOD paintEngine
   METHOD hasOpenGLPbuffers

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLPixelBuffer ( const QSize & size, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
$internalConstructor=|new1|const QSize &,const QGLFormat &=QGLFormat::defaultFormat(),QGLWidget *=0

$prototype=QGLPixelBuffer ( int width, int height, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
$internalConstructor=|new2|int,int,const QGLFormat &=QGLFormat::defaultFormat(),QGLWidget *=0

//[1]QGLPixelBuffer ( const QSize & size, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
//[2]QGLPixelBuffer ( int width, int height, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )

HB_FUNC_STATIC( QGLPIXELBUFFER_NEW )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISQGLFORMAT(2)||ISNIL(2)) && (ISQGLWIDGET(3)||ISNIL(3)) )
  {
    QGLPixelBuffer_new1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISQGLFORMAT(3)||ISNIL(3)) && (ISQGLWIDGET(4)||ISNIL(4)) )
  {
    QGLPixelBuffer_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D )
$internalMethod=|GLuint|bindTexture,bindTexture1|const QImage &,GLenum=GL_TEXTURE_2D

$prototype=GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D )
$internalMethod=|GLuint|bindTexture,bindTexture2|const QPixmap &,GLenum=GL_TEXTURE_2D

$prototype=GLuint bindTexture ( const QString & fileName )
$internalMethod=|GLuint|bindTexture,bindTexture3|const QString &

//[1]GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D )
//[2]GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D )
//[3]GLuint bindTexture ( const QString & fileName )

HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTEXTURE )
{
  if( ISBETWEEN(1,2) && ISQIMAGE(1) && ISOPTNUM(2) )
  {
    QGLPixelBuffer_bindTexture1();
  }
  else if( ISBETWEEN(1,2) && ISQPIXMAP(1) && ISOPTNUM(2) )
  {
    QGLPixelBuffer_bindTexture2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QGLPixelBuffer_bindTexture3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool bindToDynamicTexture ( GLuint texture_id )
$method=|bool|bindToDynamicTexture|GLuint

$prototype=void deleteTexture ( GLuint texture_id )
$method=|void|deleteTexture|GLuint

$prototype=bool doneCurrent ()
$method=|bool|doneCurrent|

$prototype=void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
$internalMethod=|void|drawTexture,drawTexture1|const QRectF &,GLuint,GLenum=GL_TEXTURE_2D

$prototype=void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
$internalMethod=|void|drawTexture,drawTexture2|const QPointF &,GLuint,GLenum=GL_TEXTURE_2D

//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLPIXELBUFFER_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLPixelBuffer_drawTexture1();
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLPixelBuffer_drawTexture2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QGLFormat format () const
$method=|QGLFormat|format|

$prototype=GLuint generateDynamicTexture () const
$method=|GLuint|generateDynamicTexture|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool makeCurrent ()
$method=|bool|makeCurrent|

$prototype=void releaseFromDynamicTexture ()
$method=|void|releaseFromDynamicTexture|

$prototype=QSize size () const
$method=|QSize|size|

$prototype=QImage toImage () const
$method=|QImage|toImage|

$prototype=void updateDynamicTexture ( GLuint texture_id ) const
$method=|void|updateDynamicTexture|GLuint

$prototype=virtual QPaintEngine * paintEngine () const
$virtualMethod=|QPaintEngine *|paintEngine|

$prototype=bool hasOpenGLPbuffers ()
$method=|bool|hasOpenGLPbuffers|

#pragma ENDDUMP

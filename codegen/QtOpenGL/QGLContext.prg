%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLContext ( const QGLFormat & format )
$constructor=|new|const QGLFormat &

$deleteMethod

$prototype=GLuint bindTexture ( const QImage & image, GLenum target, GLint format, BindOptions options )
$internalMethod=|GLuint|bindTexture,bindTexture1|const QImage &,GLenum,GLint,QGLContext::BindOptions

$prototype=GLuint bindTexture ( const QString & fileName )
$internalMethod=|GLuint|bindTexture,bindTexture2|const QString &

$prototype=GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
$internalMethod=|GLuint|bindTexture,bindTexture3|const QImage &,GLenum=GL_TEXTURE_2D,GLint=GL_RGBA

$prototype=GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
$internalMethod=|GLuint|bindTexture,bindTexture4|const QPixmap &,GLenum=GL_TEXTURE_2D,GLint=GL_RGBA

$prototype=GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, BindOptions options )
$internalMethod=|GLuint|bindTexture,bindTexture5|const QPixmap &,GLenum,GLint,QGLContext::BindOptions

//[1]GLuint bindTexture ( const QImage & image, GLenum target, GLint format, BindOptions options )
//[2]GLuint bindTexture ( const QString & fileName )
//[3]GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
//[4]GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
//[5]GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, BindOptions options )

HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE )
{
  if( ISNUMPAR(4) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGLContext_bindTexture1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QGLContext_bindTexture2();
  }
  else if( ISBETWEEN(1,3) && ISQIMAGE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGLContext_bindTexture3();
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGLContext_bindTexture4();
  }
  else if( ISNUMPAR(4) && ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGLContext_bindTexture5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bindTexture

$prototype=virtual bool create ( const QGLContext * shareContext = 0 ) [private]
%% $virtualMethod=|bool|create|const QGLContext *=0

$prototype=void deleteTexture ( GLuint id )
$method=|void|deleteTexture|GLuint

$prototype=QPaintDevice * device () const
$method=|QPaintDevice *|device|

$prototype=virtual void doneCurrent ()
$virtualMethod=|void|doneCurrent|

$prototype=void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
$internalMethod=|void|drawTexture,drawTexture1|const QRectF &,GLuint,GLenum=GL_TEXTURE_2D

$prototype=void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
$internalMethod=|void|drawTexture,drawTexture2|const QPointF &,GLuint,GLenum=GL_TEXTURE_2D

//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLCONTEXT_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLContext_drawTexture1();
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLContext_drawTexture2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=drawTexture

$prototype=QGLFormat format () const
$method=|QGLFormat|format|

$prototype=bool isSharing () const
$method=|bool|isSharing|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=virtual void makeCurrent ()
$virtualMethod=|void|makeCurrent|

$prototype=QColor overlayTransparentColor () const
$method=|QColor|overlayTransparentColor|

$prototype=QGLFormat requestedFormat () const
$method=|QGLFormat|requestedFormat|

$prototype=void reset ()
$method=|void|reset|

$prototype=void setFormat ( const QGLFormat & format )
$method=|void|setFormat|const QGLFormat &

$prototype=virtual void swapBuffers () const
$virtualMethod=|void|swapBuffers|

$prototype=static bool areSharing ( const QGLContext * context1, const QGLContext * context2 )
$staticMethod=|bool|areSharing|const QGLContext *,const QGLContext *

$prototype=static const QGLContext * currentContext ()
$staticMethod=|const QGLContext *|currentContext|

$prototype=static void setTextureCacheLimit ( int size )
$staticMethod=|void|setTextureCacheLimit|int

$prototype=static int textureCacheLimit ()
$staticMethod=|int|textureCacheLimit|

$extraMethods

#pragma ENDDUMP

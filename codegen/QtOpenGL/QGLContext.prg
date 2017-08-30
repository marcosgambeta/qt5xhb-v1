$header

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
   METHOD bindTexture
   METHOD create
   METHOD deleteTexture
   METHOD device
   METHOD doneCurrent
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

$destructor

#pragma BEGINDUMP

$includes

/*
QGLContext ( const QGLFormat & format )
*/
$constructor=|new|const QGLFormat &

$deleteMethod

/*
GLuint bindTexture ( const QImage & image, GLenum target, GLint format, BindOptions options )
*/
$internalMethod=|GLuint|bindTexture,bindTexture1|const QImage &,GLenum,GLint,QGLContext::BindOptions

/*
GLuint bindTexture ( const QString & fileName )
*/
$internalMethod=|GLuint|bindTexture,bindTexture2|const QString &

/*
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
$internalMethod=|GLuint|bindTexture,bindTexture3|const QImage &,GLenum=GL_TEXTURE_2D,GLint=GL_RGBA

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
$internalMethod=|GLuint|bindTexture,bindTexture4|const QPixmap &,GLenum=GL_TEXTURE_2D,GLint=GL_RGBA

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, BindOptions options )
*/
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

/*
virtual bool create ( const QGLContext * shareContext = 0 )
*/
$virtualMethod=|bool|create|const QGLContext *=0

/*
void deleteTexture ( GLuint id )
*/
$method=|void|deleteTexture|GLuint

/*
QPaintDevice * device () const
*/
$method=|QPaintDevice *|device|

/*
virtual void doneCurrent ()
*/
$virtualMethod=|void|doneCurrent|

/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
$internalMethod=|void|drawTexture,drawTexture1|const QRectF &,GLuint,GLenum=GL_TEXTURE_2D

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
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

/*
QGLFormat format () const
*/
$method=|QGLFormat|format|

/*
bool isSharing () const
*/
$method=|bool|isSharing|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
virtual void makeCurrent ()
*/
$virtualMethod=|void|makeCurrent|

/*
QColor overlayTransparentColor () const
*/
$method=|QColor|overlayTransparentColor|

/*
QGLFormat requestedFormat () const
*/
$method=|QGLFormat|requestedFormat|

/*
void reset ()
*/
$method=|void|reset|

/*
void setFormat ( const QGLFormat & format )
*/
$method=|void|setFormat|const QGLFormat &

/*
virtual void swapBuffers () const
*/
$virtualMethod=|void|swapBuffers|

/*
static bool areSharing ( const QGLContext * context1, const QGLContext * context2 )
*/
$staticMethod=|bool|areSharing|const QGLContext *,const QGLContext *

/*
static const QGLContext * currentContext ()
*/
$staticMethod=|const QGLContext *|currentContext|

/*
static void setTextureCacheLimit ( int size )
*/
$staticMethod=|void|setTextureCacheLimit|int

/*
static int textureCacheLimit ()
*/
$staticMethod=|int|textureCacheLimit|

$extraMethods

#pragma ENDDUMP

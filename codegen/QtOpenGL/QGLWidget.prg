$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGLCOLORMAP
REQUEST QGLCONTEXT
REQUEST QGLFORMAT
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QGLWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bindTexture
   METHOD colormap
   METHOD context
   METHOD deleteTexture
   METHOD doneCurrent
   METHOD doubleBuffer
   METHOD drawTexture
   METHOD format
   METHOD grabFrameBuffer
   METHOD isSharing
   METHOD isValid
   METHOD makeCurrent
   METHOD makeOverlayCurrent
   METHOD overlayContext
   METHOD qglClearColor
   METHOD qglColor
   METHOD renderPixmap
   METHOD setColormap
   METHOD setMouseTracking
   METHOD swapBuffers
   METHOD updateGL
   METHOD updateOverlayGL
   METHOD convertToGLFormat

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGLWidget ( QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
$internalConstructor=|new1|QWidget *=0,const QGLWidget *=0,Qt::WindowFlags=0

/*
QGLWidget ( QGLContext * context, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
$internalConstructor=|new2|QGLContext *,QWidget *=0,const QGLWidget *=0,Qt::WindowFlags=0

/*
QGLWidget ( const QGLFormat & format, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
$internalConstructor=|new3|const QGLFormat &,QWidget *=0,const QGLWidget *=0,Qt::WindowFlags=0

//[1]QGLWidget ( QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
//[2]QGLWidget ( QGLContext * context, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
//[3]QGLWidget ( const QGLFormat & format, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QGLWIDGET_NEW )
{
  if( ISBETWEEN(0,3) && ISOPTQWIDGET(1) && (ISQGLWIDGET(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    QGLWidget_new1();
  }
  else if( ISBETWEEN(1,4) && ISQGLCONTEXT(1) && ISOPTQWIDGET(2) && (ISQGLWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QGLWidget_new2();
  }
  else if( ISBETWEEN(1,4) && ISQGLFORMAT(1) && ISOPTQWIDGET(2) && (ISQGLWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QGLWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
$internalMethod=|GLuint|bindTexture,bindTexture1|const QImage &,GLenum=GL_TEXTURE_2D,GLint=GL_RGBA

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
$internalMethod=|GLuint|bindTexture,bindTexture2|const QPixmap &,GLenum=GL_TEXTURE_2D,GLint=GL_RGBA

/*
GLuint bindTexture ( const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options )
*/
$internalMethod=|GLuint|bindTexture,bindTexture3|const QImage &,GLenum,GLint,QGLContext::BindOptions

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options )
*/
$internalMethod=|GLuint|bindTexture,bindTexture4|const QPixmap &,GLenum,GLint,QGLContext::BindOptions

/*
GLuint bindTexture ( const QString & fileName )
*/
$internalMethod=|GLuint|bindTexture,bindTexture5|const QString &

//[1]GLuint bindTexture(const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA)
//[2]GLuint bindTexture(const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA)
//[3]GLuint bindTexture(const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options)
//[4]GLuint bindTexture(const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options)
//[5]GLuint bindTexture(const QString & fileName)

HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE )
{
  if( ISBETWEEN(1,3) && ISQIMAGE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_BindTexture1();
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_BindTexture2();
  }
  else if( ISBETWEEN(3,4) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGLWidget_BindTexture3();
  }
  else if( ISBETWEEN(3,4) && ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGLWidget_BindTexture4();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QGLWidget_BindTexture5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QGLColormap & colormap () const
*/
HB_FUNC_STATIC( QGLWIDGET_COLORMAP )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGLColormap * ptr = &obj->colormap ();
    _qt5xhb_createReturnClass ( ptr, "QGLCOLORMAP" );
  }
}

/*
const QGLContext * context () const
*/
HB_FUNC_STATIC( QGLWIDGET_CONTEXT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGLContext * ptr = obj->context ();
    _qt5xhb_createReturnClass ( ptr, "QGLCONTEXT" );
  }
}

/*
void deleteTexture ( GLuint id )
*/
$method=|void|deleteTexture|GLuint

/*
void doneCurrent ()
*/
$method=|void|doneCurrent|

/*
bool doubleBuffer () const
*/
$method=|bool|doubleBuffer|

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

HB_FUNC_STATIC( QGLWIDGET_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_drawTexture1();
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_drawTexture2();
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
QImage grabFrameBuffer ( bool withAlpha = false )
*/
$method=|QImage|grabFrameBuffer|bool=false

/*
bool isSharing () const
*/
$method=|bool|isSharing|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
void makeCurrent ()
*/
$method=|void|makeCurrent|

/*
void makeOverlayCurrent ()
*/
$method=|void|makeOverlayCurrent|

/*
const QGLContext * overlayContext () const
*/
HB_FUNC_STATIC( QGLWIDGET_OVERLAYCONTEXT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGLContext * ptr = obj->overlayContext ();
    _qt5xhb_createReturnClass ( ptr, "QGLCONTEXT" );
  }
}

/*
void qglClearColor ( const QColor & c ) const
*/
$method=|void|qglClearColor|const QColor &

/*
void qglColor ( const QColor & c ) const
*/
$method=|void|qglColor|const QColor &

/*
QPixmap renderPixmap ( int w = 0, int h = 0, bool useContext = false )
*/
$method=|QPixmap|renderPixmap|int=0,int=0,bool=false

//[1]void renderText ( int x, int y, const QString & str, const QFont & font = QFont(), int listBase = 2000 )
//[2]void renderText ( double x, double y, double z, const QString & str, const QFont & font = QFont(), int listBase = 2000 )

// HB_FUNC_STATIC( QGLWIDGET_RENDERTEXT ) // TODO: implementar
// {
//   if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && (ISQFONT(4)||ISNIL(4)) && ISOPTNUM(5) )
//   {
//     HB_FUNC_EXEC( QGLWIDGET_RENDERTEXT1 );
//   }
//   else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISCHAR(4) && (ISQFONT(5)||ISNIL(5)) && ISOPTNUM(6) )
//   {
//     HB_FUNC_EXEC( QGLWIDGET_RENDERTEXT2 );
//   }
// }

/*
void setColormap ( const QGLColormap & cmap )
*/
$method=|void|setColormap|const QGLColormap &

/*
void setMouseTracking ( bool enable )
*/
$method=|void|setMouseTracking|bool

/*
void swapBuffers ()
*/
$method=|void|swapBuffers|

/*
virtual void updateGL ()
*/
$method=|void|updateGL|

/*
virtual void updateOverlayGL ()
*/
$method=|void|updateOverlayGL|

/*
static QImage convertToGLFormat ( const QImage & img )
*/
$staticMethod=|QImage|convertToGLFormat|const QImage &

#pragma ENDDUMP

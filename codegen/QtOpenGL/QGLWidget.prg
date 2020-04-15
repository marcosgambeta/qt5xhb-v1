%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtOpenGL

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLWidget ( QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new1|QWidget *=0,const QGLWidget *=0,Qt::WindowFlags=0

$prototype=QGLWidget ( QGLContext * context, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new2|QGLContext *,QWidget *=0,const QGLWidget *=0,Qt::WindowFlags=0

$prototype=QGLWidget ( const QGLFormat & format, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new3|const QGLFormat &,QWidget *=0,const QGLWidget *=0,Qt::WindowFlags=0

/*
[1]QGLWidget ( QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
[2]QGLWidget ( QGLContext * context, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
[3]QGLWidget ( const QGLFormat & format, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/

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

$prototype=GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
$internalMethod=|GLuint|bindTexture,bindTexture1|const QImage &,GLenum=GL_TEXTURE_2D,GLint=GL_RGBA

$prototype=GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
$internalMethod=|GLuint|bindTexture,bindTexture2|const QPixmap &,GLenum=GL_TEXTURE_2D,GLint=GL_RGBA

$prototype=GLuint bindTexture ( const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options )
$internalMethod=|GLuint|bindTexture,bindTexture3|const QImage &,GLenum,GLint,QGLContext::BindOptions

$prototype=GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options )
$internalMethod=|GLuint|bindTexture,bindTexture4|const QPixmap &,GLenum,GLint,QGLContext::BindOptions

$prototype=GLuint bindTexture ( const QString & fileName )
$internalMethod=|GLuint|bindTexture,bindTexture5|const QString &

/*
[1]GLuint bindTexture(const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA)
[2]GLuint bindTexture(const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA)
[3]GLuint bindTexture(const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options)
[4]GLuint bindTexture(const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options)
[5]GLuint bindTexture(const QString & fileName)
*/

HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE )
{
  if( ISBETWEEN(1,3) && ISQIMAGE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_bindTexture1();
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_bindTexture2();
  }
  else if( ISBETWEEN(3,4) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGLWidget_bindTexture3();
  }
  else if( ISBETWEEN(3,4) && ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGLWidget_bindTexture4();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QGLWidget_bindTexture5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bindTexture

$prototype=const QGLColormap & colormap () const
$method=|const QGLColormap &|colormap|

$prototype=const QGLContext * context () const
$method=|const QGLContext *|context|

$prototype=void deleteTexture ( GLuint id )
$method=|void|deleteTexture|GLuint

$prototype=void doneCurrent ()
$method=|void|doneCurrent|

$prototype=bool doubleBuffer () const
$method=|bool|doubleBuffer|

$prototype=void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
$internalMethod=|void|drawTexture,drawTexture1|const QRectF &,GLuint,GLenum=GL_TEXTURE_2D

$prototype=void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
$internalMethod=|void|drawTexture,drawTexture2|const QPointF &,GLuint,GLenum=GL_TEXTURE_2D

/*
[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/

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
$addMethod=drawTexture

$prototype=QGLFormat format () const
$method=|QGLFormat|format|

$prototype=QImage grabFrameBuffer ( bool withAlpha = false )
$method=|QImage|grabFrameBuffer|bool=false

$prototype=bool isSharing () const
$method=|bool|isSharing|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=void makeCurrent ()
$method=|void|makeCurrent|

$prototype=void makeOverlayCurrent ()
$method=|void|makeOverlayCurrent|

$prototype=const QGLContext * overlayContext () const
$method=|const QGLContext *|overlayContext|

$prototype=void qglClearColor ( const QColor & c ) const
$method=|void|qglClearColor|const QColor &

$prototype=void qglColor ( const QColor & c ) const
$method=|void|qglColor|const QColor &

$prototype=QPixmap renderPixmap ( int w = 0, int h = 0, bool useContext = false )
$method=|QPixmap|renderPixmap|int=0,int=0,bool=false

$prototype=void renderText(int x, int y, const QString &str, const QFont &font = QFont())
$internalMethod=|void|renderText,renderText1|int,int,const QString &,const QFont &=QFont()

$prototype=void renderText(double x, double y, double z, const QString &str, const QFont &font = QFont())
$internalMethod=|void|renderText,renderText2|double,double,double,const QString &,const QFont &=QFont()

/*
[1]void renderText(int x, int y, const QString &str, const QFont &font = QFont())
[2]void renderText(double x, double y, double z, const QString &str, const QFont &font = QFont())
*/

HB_FUNC_STATIC( QGLWIDGET_RENDERTEXT )
{
  if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && (ISQFONT(4)||ISNIL(4)) )
  {
    QGLWidget_renderText1();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISCHAR(4) && (ISQFONT(5)||ISNIL(5)) )
  {
    QGLWidget_renderText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setColormap ( const QGLColormap & cmap )
$method=|void|setColormap|const QGLColormap &

$prototype=void setMouseTracking ( bool enable )
$method=|void|setMouseTracking|bool

$prototype=void swapBuffers ()
$method=|void|swapBuffers|

$prototype=virtual void updateGL ()
$virtualMethod=|void|updateGL|

$prototype=virtual void updateOverlayGL ()
$virtualMethod=|void|updateOverlayGL|

$prototype=static QImage convertToGLFormat ( const QImage & img )
$staticMethod=|QImage|convertToGLFormat|const QImage &

#pragma ENDDUMP

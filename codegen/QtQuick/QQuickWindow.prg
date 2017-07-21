$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQUICKITEM
REQUEST QCOLOR
REQUEST QSGTEXTURE
REQUEST QIMAGE
REQUEST QQMLINCUBATIONCONTROLLER
REQUEST QOPENGLCONTEXT
REQUEST QOPENGLFRAMEBUFFEROBJECT
REQUEST QSIZE
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QQuickWindow INHERIT QWindow

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD activeFocusItem
   METHOD clearBeforeRendering
   METHOD color
   METHOD contentItem
   METHOD createTextureFromId
   METHOD createTextureFromImage
   METHOD grabWindow
   METHOD incubationController
   METHOD isPersistentOpenGLContext
   METHOD isPersistentSceneGraph
   METHOD mouseGrabberItem
   METHOD openglContext
   METHOD renderTarget
   METHOD renderTargetId
   METHOD renderTargetSize
   METHOD sendEvent
   METHOD setClearBeforeRendering
   METHOD setColor
   METHOD setPersistentOpenGLContext
   METHOD setPersistentSceneGraph
   METHOD setRenderTarget1
   METHOD setRenderTarget2
   METHOD setRenderTarget
   METHOD accessibleRoot
   METHOD releaseResources
   METHOD update

   METHOD onAfterRendering
   METHOD onBeforeRendering
   METHOD onBeforeSynchronizing
   METHOD onColorChanged
   METHOD onFrameSwapped
   METHOD onSceneGraphInitialized
   METHOD onSceneGraphInvalidated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QQuickWindow(QWindow * parent = 0)
*/
$constructor=|new|QWindow *=0

$deleteMethod

/*
QQuickItem * activeFocusItem() const
*/
$method=|QQuickItem *|activeFocusItem|

/*
bool clearBeforeRendering() const
*/
$method=|bool|clearBeforeRendering|

/*
QColor color() const
*/
$method=|QColor|color|

/*
QQuickItem * contentItem() const
*/
$method=|QQuickItem *|contentItem|

/*
QSGTexture * createTextureFromId(uint id, const QSize & size, CreateTextureOptions options = CreateTextureOption( 0 )) const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CREATETEXTUREFROMID )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = hb_parni(3);
    QSGTexture * ptr = obj->createTextureFromId ( (uint) hb_parni(1), *PQSIZE(2), (QQuickWindow::CreateTextureOptions) par3 );
    _qt5xhb_createReturnClass ( ptr, "QSGTEXTURE" );
  }
}

/*
QSGTexture * createTextureFromImage(const QImage & image) const
*/
$method=|QSGTexture *|createTextureFromImage|const QImage &

/*
QImage grabWindow()
*/
$method=|QImage|grabWindow|

/*
QQmlIncubationController * incubationController() const
*/
$method=|QQmlIncubationController *|incubationController|

/*
bool isPersistentOpenGLContext() const
*/
$method=|bool|isPersistentOpenGLContext|

/*
bool isPersistentSceneGraph() const
*/
$method=|bool|isPersistentSceneGraph|

/*
QQuickItem * mouseGrabberItem() const
*/
$method=|QQuickItem *|mouseGrabberItem|

/*
QOpenGLContext * openglContext() const
*/
$method=|QOpenGLContext *|openglContext|

/*
QOpenGLFramebufferObject * renderTarget() const
*/
$method=|QOpenGLFramebufferObject *|renderTarget|

/*
uint renderTargetId() const
*/
$method=|uint|renderTargetId|

/*
QSize renderTargetSize() const
*/
$method=|QSize|renderTargetSize|

/*
bool sendEvent(QQuickItem * item, QEvent * e)
*/
$method=|bool|sendEvent|QQuickItem *,QEvent *

/*
void setClearBeforeRendering(bool enabled)
*/
$method=|void|setClearBeforeRendering|bool

/*
void setColor(const QColor & color)
*/
$method=|void|setColor|const QColor &

/*
void setPersistentOpenGLContext(bool persistent)
*/
$method=|void|setPersistentOpenGLContext|bool

/*
void setPersistentSceneGraph(bool persistent)
*/
$method=|void|setPersistentSceneGraph|bool

/*
void setRenderTarget(QOpenGLFramebufferObject * fbo)
*/
$method=|void|setRenderTarget|QOpenGLFramebufferObject *

/*
void setRenderTarget(uint fboId, const QSize & size)
*/
$method=|void|setRenderTarget|uint,const QSize &

//[1]void setRenderTarget(QOpenGLFramebufferObject * fbo)
//[2]void setRenderTarget(uint fboId, const QSize & size)

HB_FUNC_STATIC( QQUICKWINDOW_SETRENDERTARGET )
{
  if( ISNUMPAR(1) && ISQOPENGLFRAMEBUFFEROBJECT(1) )
  {
    QQuickWindow_setRenderTarget1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSIZE(2) )
  {
    QQuickWindow_setRenderTarget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QAccessibleInterface * accessibleRoot() const
*/
$method=|QAccessibleInterface *|accessibleRoot|

/*
void releaseResources()
*/
$method=|void|releaseResources|

/*
void update()
*/
$method=|void|update|

#pragma ENDDUMP

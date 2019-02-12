%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWindow

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtQuick/QQuickItem>
#include <QtQuick/QSGTexture>
#include <QtGui/QOpenGLContext>

$prototype=QQuickWindow(QWindow * parent = 0)
$constructor=|new|QWindow *=0

$deleteMethod

$prototype=QQuickItem * activeFocusItem() const
$method=|QQuickItem *|activeFocusItem|

$prototype=bool clearBeforeRendering() const
$method=|bool|clearBeforeRendering|

$prototype=QColor color() const
$method=|QColor|color|

$prototype=QQuickItem * contentItem() const
$method=|QQuickItem *|contentItem|

$prototype=QSGTexture * createTextureFromId(uint id, const QSize & size, CreateTextureOptions options = CreateTextureOption( 0 )) const
$method=|QSGTexture *|createTextureFromId|uint,const QSize &,QQuickWindow::CreateTextureOptions=QQuickWindow::CreateTextureOption( 0 )

$prototype=QSGTexture * createTextureFromImage(const QImage & image) const
$method=|QSGTexture *|createTextureFromImage|const QImage &

$prototype=QImage grabWindow()
$method=|QImage|grabWindow|

$prototype=QQmlIncubationController * incubationController() const
$method=|QQmlIncubationController *|incubationController|

$prototype=bool isPersistentOpenGLContext() const
$method=|bool|isPersistentOpenGLContext|

$prototype=bool isPersistentSceneGraph() const
$method=|bool|isPersistentSceneGraph|

$prototype=QQuickItem * mouseGrabberItem() const
$method=|QQuickItem *|mouseGrabberItem|

$prototype=QOpenGLContext * openglContext() const
$method=|QOpenGLContext *|openglContext|

$prototype=QOpenGLFramebufferObject * renderTarget() const
$method=|QOpenGLFramebufferObject *|renderTarget|

$prototype=uint renderTargetId() const
$method=|uint|renderTargetId|

$prototype=QSize renderTargetSize() const
$method=|QSize|renderTargetSize|

$prototype=bool sendEvent(QQuickItem * item, QEvent * e)
$method=|bool|sendEvent|QQuickItem *,QEvent *

$prototype=void setClearBeforeRendering(bool enabled)
$method=|void|setClearBeforeRendering|bool

$prototype=void setColor(const QColor & color)
$method=|void|setColor|const QColor &

$prototype=void setPersistentOpenGLContext(bool persistent)
$method=|void|setPersistentOpenGLContext|bool

$prototype=void setPersistentSceneGraph(bool persistent)
$method=|void|setPersistentSceneGraph|bool

$prototype=void setRenderTarget(QOpenGLFramebufferObject * fbo)
$internalMethod=|void|setRenderTarget,setRenderTarget1|QOpenGLFramebufferObject *

$prototype=void setRenderTarget(uint fboId, const QSize & size)
$internalMethod=|void|setRenderTarget,setRenderTarget2|uint,const QSize &

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
$addMethod=setRenderTarget

$prototype=virtual QAccessibleInterface * accessibleRoot() const
$virtualMethod=|QAccessibleInterface *|accessibleRoot|

$prototype=void releaseResources()
$method=|void|releaseResources|

$prototype=void update()
$method=|void|update|

$beginSignals
$signal=|afterRendering()
$signal=|beforeRendering()
$signal=|beforeSynchronizing()
$signal=|colorChanged(QColor)
$signal=|frameSwapped()
$signal=|sceneGraphInitialized()
$signal=|sceneGraphInvalidated()
$endSignals

#pragma ENDDUMP

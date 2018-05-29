%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QSurface

   METHOD new
   METHOD delete
   METHOD baseSize
   METHOD contentOrientation
   METHOD create
   METHOD cursor
   METHOD destroy
   METHOD focusObject
   METHOD frameGeometry
   METHOD frameMargins
   METHOD geometry
   METHOD height
   METHOD isActive
   METHOD isAncestorOf
   METHOD isExposed
   METHOD isModal
   METHOD isTopLevel
   METHOD isVisible
   METHOD mapFromGlobal
   METHOD mapToGlobal
   METHOD maximumSize
   METHOD minimumSize
   METHOD parent
   METHOD reportContentOrientationChange
   METHOD requestedFormat
   METHOD resize
   METHOD screen
   METHOD setBaseSize
   METHOD setCursor
   METHOD setFormat
   METHOD setGeometry
   METHOD setKeyboardGrabEnabled
   METHOD setMaximumSize
   METHOD setMinimumSize
   METHOD setMouseGrabEnabled
   METHOD setOpacity
   METHOD setParent
   METHOD setScreen
   METHOD setSizeIncrement
   METHOD setSurfaceType
   METHOD setTransientParent
   METHOD sizeIncrement
   METHOD transientParent
   METHOD unsetCursor
   METHOD width
   METHOD windowState
   METHOD x
   METHOD y
   METHOD format
   METHOD size
   METHOD surfaceType
   METHOD close
   METHOD hide
   METHOD lower
   METHOD raise
   METHOD setHeight
   METHOD setVisible
   METHOD setWidth
   METHOD setX
   METHOD setY
   METHOD show
   METHOD showFullScreen
   METHOD showMaximized
   METHOD showMinimized
   METHOD showNormal
   METHOD position
   METHOD setPosition
   METHOD requestUpdate

   METHOD onContentOrientationChanged
   METHOD onFocusObjectChanged
   METHOD onHeightChanged
   METHOD onScreenChanged
   METHOD onVisibleChanged
   METHOD onWidthChanged
   METHOD onWindowModalityChanged
   METHOD onXChanged
   METHOD onYChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QScreen>

$prototype=QWindow(QScreen * targetScreen = 0)
$internalConstructor=|new1|QScreen *=0

$prototype=QWindow(QWindow * parent)
$internalConstructor=|new2|QWindow *

//[1]QWindow(QScreen * targetScreen = 0)
//[2]QWindow(QWindow * parent)

HB_FUNC_STATIC( QWINDOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSCREEN(1)||ISNIL(1)) )
  {
    QWindow_new1();
  }
  else if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
    QWindow_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QSize baseSize() const
$method=|QSize|baseSize|

$prototype=Qt::ScreenOrientation contentOrientation() const
$method=|Qt::ScreenOrientation|contentOrientation|

$prototype=void create()
$method=|void|create|

$prototype=QCursor cursor() const
$method=|QCursor|cursor|

$prototype=void destroy()
$method=|void|destroy|

$prototype=virtual QObject * focusObject() const
$virtualMethod=|QObject *|focusObject|

$prototype=QRect frameGeometry() const
$method=|QRect|frameGeometry|

$prototype=QMargins frameMargins() const
$method=|QMargins|frameMargins|

$prototype=QRect geometry() const
$method=|QRect|geometry|

$prototype=int height() const
$method=|int|height|

$prototype=bool isActive() const
$method=|bool|isActive|

$prototype=bool isAncestorOf(const QWindow * child, AncestorMode mode = IncludeTransients) const
$method=|bool|isAncestorOf|const QWindow *,QWindow::AncestorMode=QWindow::IncludeTransients

$prototype=bool isExposed() const
$method=|bool|isExposed|

$prototype=bool isModal() const
$method=|bool|isModal|

$prototype=bool isTopLevel() const
$method=|bool|isTopLevel|

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=QPoint mapFromGlobal(const QPoint & pos) const
$method=|QPoint|mapFromGlobal|const QPoint &

$prototype=QPoint mapToGlobal(const QPoint & pos) const
$method=|QPoint|mapToGlobal|const QPoint &

$prototype=QSize maximumSize() const
$method=|QSize|maximumSize|

$prototype=QSize minimumSize() const
$method=|QSize|minimumSize|

$prototype=QWindow * parent() const
$method=|QWindow *|parent|

$prototype=void reportContentOrientationChange(Qt::ScreenOrientation orientation)
$method=|void|reportContentOrientationChange|Qt::ScreenOrientation

$prototype=QSurfaceFormat requestedFormat() const
$method=|QSurfaceFormat|requestedFormat|

$prototype=void resize(const QSize & newSize)
$internalMethod=|void|resize,resize1|const QSize &

$prototype=void resize(int w, int h)
$internalMethod=|void|resize,resize2|int,int

//[1]void resize(const QSize & newSize)
//[2]void resize(int w, int h)

HB_FUNC_STATIC( QWINDOW_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWindow_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWindow_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QScreen * screen() const
$method=|QScreen *|screen|

$prototype=void setBaseSize(const QSize & size)
$method=|void|setBaseSize|const QSize &

$prototype=void setCursor(const QCursor &)
$method=|void|setCursor|const QCursor &

$prototype=void setFormat(const QSurfaceFormat & format)
$method=|void|setFormat|const QSurfaceFormat &

$prototype=void setGeometry(int posx, int posy, int w, int h)
$internalMethod=|void|setGeometry,setGeometry1|int,int,int,int

$prototype=void setGeometry(const QRect & rect)
$internalMethod=|void|setGeometry,setGeometry2|const QRect &

//[1]void setGeometry(int posx, int posy, int w, int h)
//[2]void setGeometry(const QRect & rect)

HB_FUNC_STATIC( QWINDOW_SETGEOMETRY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWindow_setGeometry1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWindow_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool setKeyboardGrabEnabled(bool grab)
$method=|bool|setKeyboardGrabEnabled|bool

$prototype=void setMaximumSize(const QSize & size)
$method=|void|setMaximumSize|const QSize &

$prototype=void setMinimumSize(const QSize & size)
$method=|void|setMinimumSize|const QSize &

$prototype=bool setMouseGrabEnabled(bool grab)
$method=|bool|setMouseGrabEnabled|bool

$prototype=void setOpacity(qreal level)
$method=|void|setOpacity|qreal

$prototype=void setParent(QWindow * parent)
$method=|void|setParent|QWindow *

%% TODO: checar existencia do metodo
%%//[1]void setPos(const QPoint & pt)
%%//[2]void setPos(int posx, int posy)

%%//HB_FUNC_STATIC( QWINDOW_SETPOS )
%%//{
%%//  if( ISNUMPAR(1) && ISOBJECT(1) )
%%//  {
%%//    HB_FUNC_EXEC( QWINDOW_SETPOS1 );
%%//  }
%%//  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
%%//  {
%%//    HB_FUNC_EXEC( QWINDOW_SETPOS2 );
%%//  }
%%//}

$prototype=void setScreen(QScreen * newScreen)
$method=|void|setScreen|QScreen *

$prototype=void setSizeIncrement(const QSize & size)
$method=|void|setSizeIncrement|const QSize &

$prototype=void setSurfaceType(SurfaceType surfaceType)
$method=|void|setSurfaceType|QSurface::SurfaceType

$prototype=void setTransientParent(QWindow * parent)
$method=|void|setTransientParent|QWindow *

$prototype=QSize sizeIncrement() const
$method=|QSize|sizeIncrement|

$prototype=QWindow * transientParent() const
$method=|QWindow *|transientParent|

$prototype=void unsetCursor()
$method=|void|unsetCursor|

$prototype=int width() const
$method=|int|width|

$prototype=Qt::WindowState windowState() const
$method=|Qt::WindowState|windowState|

$prototype=int x() const
$method=|int|x|

$prototype=int y() const
$method=|int|y|

$prototype=virtual QSurfaceFormat format() const
$virtualMethod=|QSurfaceFormat|format|

$prototype=virtual QSize size() const
$virtualMethod=|QSize|size|

$prototype=virtual SurfaceType surfaceType() const
$virtualMethod=|QSurface::SurfaceType|surfaceType|

$prototype=bool close()
$method=|bool|close|

$prototype=void hide()
$method=|void|hide|

$prototype=void lower()
$method=|void|lower|

$prototype=void raise()
$method=|void|raise|

$prototype=void setHeight(int arg)
$method=|void|setHeight|int

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototype=void setWidth(int arg)
$method=|void|setWidth|int

$prototype=void setX(int arg)
$method=|void|setX|int

$prototype=void setY(int arg)
$method=|void|setY|int

$prototype=void show()
$method=|void|show|

$prototype=void showFullScreen()
$method=|void|showFullScreen|

$prototype=void showMaximized()
$method=|void|showMaximized|

$prototype=void showMinimized()
$method=|void|showMinimized|

$prototype=void showNormal()
$method=|void|showNormal|

$prototype=QPoint position() const
$method=|QPoint|position|

$prototype=void setPosition(const QPoint & pt)
$internalMethod=|void|setPosition,setPosition1|const QPoint &

$prototype=void setPosition(int posx, int posy)
$internalMethod=|void|setPosition,setPosition2|int,int

//[1]void setPosition(const QPoint & pt)
//[2]void setPosition(int posx, int posy)

HB_FUNC_STATIC( QWINDOW_SETPOSITION )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWindow_setPosition1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWindow_setPosition2();
  }
}

$prototype=void requestUpdate()
$slotMethod=5,5,0|void|requestUpdate|

$beginSignals
$signal=|contentOrientationChanged(Qt::ScreenOrientation)
$signal=|focusObjectChanged(QObject*)
$signal=|heightChanged(int)
$signal=|screenChanged(QScreen*)
$signal=|visibleChanged(bool)
$signal=|widthChanged(int)
$signal=|windowModalityChanged(Qt::WindowModality)
$signal=|xChanged(int)
$signal=|yChanged(int)
$endSignals

#pragma ENDDUMP

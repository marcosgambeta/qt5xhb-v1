$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QCURSOR
REQUEST QOBJECT
REQUEST QRECT
REQUEST QMARGINS
REQUEST QPOINT
REQUEST QSURFACEFORMAT
REQUEST QSCREEN
#endif

CLASS QWindow INHERIT QObject,QSurface

   DATA self_destruction INIT .F.

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

   METHOD onContentOrientationChanged
   METHOD onFocusObjectChanged
   METHOD onHeightChanged
   METHOD onScreenChanged
   METHOD onVisibleChanged
   METHOD onWidthChanged
   METHOD onWindowModalityChanged
   METHOD onXChanged
   METHOD onYChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWindow(QScreen * targetScreen = 0)
*/
$internalConstructor=|new1|QScreen *=0

/*
QWindow(QWindow * parent)
*/
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

/*
QSize baseSize() const
*/
$method=|QSize|baseSize|

/*
Qt::ScreenOrientation contentOrientation() const
*/
$method=|Qt::ScreenOrientation|contentOrientation|

/*
void create()
*/
$method=|void|create|

/*
QCursor cursor() const
*/
$method=|QCursor|cursor|

/*
void destroy()
*/
$method=|void|destroy|

/*
virtual QObject * focusObject() const
*/
$virtualMethod=|QObject *|focusObject|

/*
QRect frameGeometry() const
*/
$method=|QRect|frameGeometry|

/*
QMargins frameMargins() const
*/
$method=|QMargins|frameMargins|

/*
QRect geometry() const
*/
$method=|QRect|geometry|

/*
int height() const
*/
$method=|int|height|

/*
bool isActive() const
*/
$method=|bool|isActive|

/*
bool isAncestorOf(const QWindow * child, AncestorMode mode = IncludeTransients) const
*/
$method=|bool|isAncestorOf|const QWindow *,QWindow::AncestorMode=QWindow::IncludeTransients

/*
bool isExposed() const
*/
$method=|bool|isExposed|

/*
bool isModal() const
*/
$method=|bool|isModal|

/*
bool isTopLevel() const
*/
$method=|bool|isTopLevel|

/*
bool isVisible() const
*/
$method=|bool|isVisible|

/*
QPoint mapFromGlobal(const QPoint & pos) const
*/
$method=|QPoint|mapFromGlobal|const QPoint &

/*
QPoint mapToGlobal(const QPoint & pos) const
*/
$method=|QPoint|mapToGlobal|const QPoint &

/*
QSize maximumSize() const
*/
$method=|QSize|maximumSize|

/*
QSize minimumSize() const
*/
$method=|QSize|minimumSize|

/*
QWindow * parent() const
*/
$method=|QWindow *|parent|

/*
void reportContentOrientationChange(Qt::ScreenOrientation orientation)
*/
$method=|void|reportContentOrientationChange|Qt::ScreenOrientation

/*
QSurfaceFormat requestedFormat() const
*/
$method=|QSurfaceFormat|requestedFormat|

/*
void resize(const QSize & newSize)
*/
$internalMethod=|void|resize,resize1|const QSize &

/*
void resize(int w, int h)
*/
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

/*
QScreen * screen() const
*/
$method=|QScreen *|screen|

/*
void setBaseSize(const QSize & size)
*/
$method=|void|setBaseSize|const QSize &

/*
void setCursor(const QCursor &)
*/
$method=|void|setCursor|const QCursor &

/*
void setFormat(const QSurfaceFormat & format)
*/
$method=|void|setFormat|const QSurfaceFormat &

/*
void setGeometry(int posx, int posy, int w, int h)
*/
internalMmethod=|void|setGeometry,setGeometry1|int,int,int,int

/*
void setGeometry(const QRect & rect)
*/
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

/*
bool setKeyboardGrabEnabled(bool grab)
*/
$method=|bool|setKeyboardGrabEnabled|bool

/*
void setMaximumSize(const QSize & size)
*/
$method=|void|setMaximumSize|const QSize &

/*
void setMinimumSize(const QSize & size)
*/
$method=|void|setMinimumSize|const QSize &

/*
bool setMouseGrabEnabled(bool grab)
*/
$method=|bool|setMouseGrabEnabled|bool

/*
void setOpacity(qreal level)
*/
$method=|void|setOpacity|qreal

/*
void setParent(QWindow * parent)
*/
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

/*
void setScreen(QScreen * newScreen)
*/
$method=|void|setScreen|QScreen *

/*
void setSizeIncrement(const QSize & size)
*/
$method=|void|setSizeIncrement|const QSize &

/*
void setSurfaceType(SurfaceType surfaceType)
*/
$method=|void|setSurfaceType|QSurface::SurfaceType

/*
void setTransientParent(QWindow * parent)
*/
$method=|void|setTransientParent|QWindow *

/*
QSize sizeIncrement() const
*/
$method=|QSize|sizeIncrement|

/*
QWindow * transientParent() const
*/
$method=|QWindow *|transientParent|

/*
void unsetCursor()
*/
$method=|void|unsetCursor|

/*
int width() const
*/
$method=|int|width|

/*
Qt::WindowState windowState() const
*/
$method=|Qt::WindowState|windowState|

/*
int x() const
*/
$method=|int|x|

/*
int y() const
*/
$method=|int|y|

/*
virtual QSurfaceFormat format() const
*/
$virtualMethod=|QSurfaceFormat|format|

/*
virtual QSize size() const
*/
$virtualMethod=|QSize|size|

/*
virtual SurfaceType surfaceType() const
*/
$virtualMethod=|QSurface::SurfaceType|surfaceType|

/*
bool close()
*/
$method=|bool|close|

/*
void hide()
*/
$method=|void|hide|

/*
void lower()
*/
$method=|void|lower|

/*
void raise()
*/
$method=|void|raise|

/*
void setHeight(int arg)
*/
$method=|void|setHeight|int

/*
void setVisible(bool visible)
*/
$method=|void|setVisible|bool

/*
void setWidth(int arg)
*/
$method=|void|setWidth|int

/*
void setX(int arg)
*/
$method=|void|setX|int

/*
void setY(int arg)
*/
$method=|void|setY|int

/*
void show()
*/
$method=|void|show|

/*
void showFullScreen()
*/
$method=|void|showFullScreen|

/*
void showMaximized()
*/
$method=|void|showMaximized|

/*
void showMinimized()
*/
$method=|void|showMinimized|

/*
void showNormal()
*/
$method=|void|showNormal|

#pragma ENDDUMP

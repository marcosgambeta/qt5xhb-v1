%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QSIZE
REQUEST QRECT
REQUEST QREGION
REQUEST QMARGINS
REQUEST QCURSOR
REQUEST QFONT
REQUEST QFONTINFO
REQUEST QFONTMETRICS
REQUEST QGRAPHICSEFFECT
REQUEST QGRAPHICSPROXYWIDGET
REQUEST QVARIANT
REQUEST QLAYOUT
REQUEST QLOCALE
REQUEST QPOINT
REQUEST QPALETTE
REQUEST QBYTEARRAY
REQUEST QSIZEPOLICY
REQUEST QSTYLE
REQUEST QICON
REQUEST QPAINTENGINE
REQUEST QPIXMAP
REQUEST QBACKINGSTORE
REQUEST QWINDOW
#endif

CLASS QWidget INHERIT QObject

   METHOD new
   METHOD delete
   METHOD acceptDrops
   METHOD setAcceptDrops
   METHOD accessibleDescription
   METHOD setAccessibleDescription
   METHOD accessibleName
   METHOD setAccessibleName
   METHOD actions
   METHOD activateWindow
   METHOD addAction
   METHOD addActions
   METHOD adjustSize
   METHOD autoFillBackground
   METHOD setAutoFillBackground
   METHOD backgroundRole
   METHOD setBackgroundRole
   METHOD baseSize
   METHOD setBaseSize
   METHOD childAt
   METHOD childrenRect
   METHOD childrenRegion
   METHOD clearFocus
   METHOD clearMask
   METHOD contentsMargins
   METHOD contentsRect
   METHOD contextMenuPolicy
   METHOD setContextMenuPolicy
   METHOD cursor
   METHOD setCursor
   METHOD unsetCursor
   METHOD effectiveWinId
   METHOD ensurePolished
   METHOD focusPolicy
   METHOD setFocusPolicy
   METHOD focusProxy
   METHOD focusWidget
   METHOD font
   METHOD setFont
   METHOD fontInfo
   METHOD fontMetrics
   METHOD foregroundRole
   METHOD setForegroundRole
   METHOD frameGeometry
   METHOD frameSize
   METHOD getContentsMargins
   METHOD grabGesture
   METHOD grabKeyboard
   METHOD grabMouse
   METHOD grabShortcut
   METHOD graphicsEffect
   METHOD setGraphicsEffect
   METHOD graphicsProxyWidget
   METHOD hasEditFocus
   METHOD hasFocus
   METHOD hasMouseTracking
   METHOD setMouseTracking
   METHOD height
   METHOD heightForWidth
   METHOD inputMethodHints
   METHOD setInputMethodHints
   METHOD inputMethodQuery
   METHOD insertAction
   METHOD insertActions
   METHOD isActiveWindow
   METHOD isAncestorOf
   METHOD isEnabledTo
   METHOD isFullScreen
   METHOD isHidden
   METHOD isMaximized
   METHOD isMinimized
   METHOD isModal
   METHOD isVisible
   METHOD setVisible
   METHOD isVisibleTo
   METHOD isWindow
   METHOD isWindowModified
   METHOD setWindowModified
   METHOD layout
   METHOD layoutDirection
   METHOD setLayoutDirection
   METHOD unsetLayoutDirection
   METHOD locale
   METHOD setLocale
   METHOD unsetLocale
   METHOD mapFrom
   METHOD mapFromGlobal
   METHOD mapFromParent
   METHOD mapTo
   METHOD mapToGlobal
   METHOD mapToParent
   METHOD mask
   METHOD setMask
   METHOD maximumHeight
   METHOD setMaximumHeight
   METHOD maximumWidth
   METHOD setMaximumWidth
   METHOD minimumHeight
   METHOD setMinimumHeight
   METHOD minimumSizeHint
   METHOD minimumWidth
   METHOD setMinimumWidth
   METHOD pos
   METHOD move
   METHOD nativeParentWidget
   METHOD nextInFocusChain
   METHOD normalGeometry
   METHOD overrideWindowFlags
   METHOD palette
   METHOD setPalette
   METHOD parentWidget
   METHOD previousInFocusChain
   METHOD rect
   METHOD releaseKeyboard
   METHOD releaseMouse
   METHOD releaseShortcut
   METHOD removeAction
   METHOD render1
   METHOD render2
   METHOD render
   METHOD repaint
   METHOD resize
   METHOD restoreGeometry
   METHOD saveGeometry
   METHOD scroll
   METHOD setAttribute
   METHOD setContentsMargins
   METHOD setEditFocus
   METHOD setFixedHeight
   METHOD setFixedSize
   METHOD setFixedWidth
   METHOD setFocus
   METHOD setFocusProxy
   METHOD geometry
   METHOD setGeometry
   METHOD setLayout
   METHOD maximumSize
   METHOD setMaximumSize
   METHOD minimumSize
   METHOD setMinimumSize
   METHOD setParent
   METHOD setShortcutAutoRepeat
   METHOD setShortcutEnabled
   METHOD sizeIncrement
   METHOD setSizeIncrement
   METHOD sizePolicy
   METHOD setSizePolicy
   METHOD toolTipDuration
   METHOD setToolTipDuration
   METHOD windowModality
   METHOD setWindowModality
   METHOD setWindowRole
   METHOD setWindowState
   METHOD size
   METHOD sizeHint
   METHOD stackUnder
   METHOD statusTip
   METHOD setStatusTip
   METHOD style
   METHOD setStyle
   METHOD styleSheet
   METHOD setStyleSheet
   METHOD testAttribute
   METHOD toolTip
   METHOD setToolTip
   METHOD underMouse
   METHOD ungrabGesture
   METHOD update
   METHOD updateGeometry
   METHOD updatesEnabled
   METHOD setUpdatesEnabled
   METHOD visibleRegion
   METHOD whatsThis
   METHOD setWhatsThis
   METHOD width
   METHOD winId
   METHOD internalWinId
   METHOD window
   METHOD windowFilePath
   METHOD setWindowFilePath
   METHOD windowFlags
   METHOD setWindowFlags
   METHOD windowIcon
   METHOD setWindowIcon
   METHOD windowIconText
   METHOD setWindowIconText
   METHOD windowOpacity
   METHOD setWindowOpacity
   METHOD windowRole
   METHOD windowState
   METHOD windowTitle
   METHOD setWindowTitle
   METHOD windowType
   METHOD x
   METHOD y
   METHOD paintEngine
   METHOD close
   METHOD hide
   METHOD lower
   METHOD raise
   METHOD setDisabled
   METHOD isEnabled
   METHOD setEnabled
   METHOD setHidden
   METHOD show
   METHOD showFullScreen
   METHOD showMaximized
   METHOD showMinimized
   METHOD showNormal
   METHOD devType
   METHOD isTopLevel
   METHOD isEnabledToTLW
   METHOD topLevelWidget
   METHOD grab
   METHOD isRightToLeft
   METHOD isLeftToRight
   METHOD overrideWindowState
   METHOD backingStore
   METHOD windowHandle
   METHOD hasHeightForWidth
   METHOD colorCount
   METHOD depth
   METHOD heightMM
   METHOD logicalDpiX
   METHOD logicalDpiY
   METHOD paintingActive
   METHOD physicalDpiX
   METHOD physicalDpiY
   METHOD widthMM
   METHOD find
   METHOD keyboardGrabber
   METHOD mouseGrabber
   METHOD setTabOrder
   METHOD createWindowContainer

   METHOD onWindowTitleChanged
   METHOD onWindowIconChanged
   METHOD onWindowIconTextChanged // TODO: verificar se ainda é valido no Qt 5
   METHOD onCustomContextMenuRequested

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QIcon>
#include <QVariant>
#include <QLocale>
#include <QGraphicsEffect>
#include <QGraphicsProxyWidget>
#include <QLayout>
#include <QStyle>
#include <QWindow>

$prototype=explicit QWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=bool acceptDrops () const
$method=|bool|acceptDrops|

$prototype=void setAcceptDrops ( bool on )
$method=|void|setAcceptDrops|bool

$prototype=QString accessibleDescription () const
$method=|QString|accessibleDescription||#ifndef QT_NO_ACCESSIBILITY

$prototype=void setAccessibleDescription ( const QString & description )
$method=|void|setAccessibleDescription|const QString &|#ifndef QT_NO_ACCESSIBILITY

$prototype=QString accessibleName () const
$method=|QString|accessibleName||#ifndef QT_NO_ACCESSIBILITY

$prototype=void setAccessibleName ( const QString & name )
$method=|void|setAccessibleName|const QString &|#ifndef QT_NO_ACCESSIBILITY

$prototype=QList<QAction *> actions () const
$method=|QList<QAction *>|actions||#ifndef QT_NO_ACTION

$prototype=void activateWindow ()
$method=|void|activateWindow|

$prototype=void addAction ( QAction * action )
$method=|void|addAction|QAction *|#ifndef QT_NO_ACTION

$prototype=void addActions ( QList<QAction *> actions )
$method=|void|addActions|QList<QAction *>|#ifndef QT_NO_ACTION

$prototype=void adjustSize ()
$method=|void|adjustSize|

$prototype=bool autoFillBackground () const
$method=|bool|autoFillBackground|

$prototype=void setAutoFillBackground ( bool enabled )
$method=|void|setAutoFillBackground|bool

$prototype=QPalette::ColorRole backgroundRole () const
$method=|QPalette::ColorRole|backgroundRole|

$prototype=void setBackgroundRole ( QPalette::ColorRole role )
$method=|void|setBackgroundRole|QPalette::ColorRole

$prototype=QSize baseSize () const
$method=|QSize|baseSize|

$prototype=void setBaseSize ( const QSize & )
$internalMethod=|void|setBaseSize,setBaseSize1|const QSize &

$prototype=void setBaseSize ( int basew, int baseh )
$internalMethod=|void|setBaseSize,setBaseSize2|int,int

//[1]void setBaseSize ( const QSize & )
//[2]void setBaseSize ( int basew, int baseh )

HB_FUNC_STATIC( QWIDGET_SETBASESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setBaseSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setBaseSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QWidget * childAt ( int x, int y ) const
$internalMethod=|QWidget *|childAt,childAt1|int,int

$prototype=QWidget * childAt ( const QPoint & p ) const
$internalMethod=|QWidget *|childAt,childAt2|const QPoint &

//[1]QWidget * childAt ( int x, int y ) const
//[2]QWidget * childAt ( const QPoint & p ) const

HB_FUNC_STATIC( QWIDGET_CHILDAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_childAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWidget_childAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect childrenRect () const
$method=|QRect|childrenRect|

$prototype=QRegion childrenRegion () const
$method=|QRegion|childrenRegion|

$prototype=void clearFocus ()
$method=|void|clearFocus|

$prototype=void clearMask ()
$method=|void|clearMask|

$prototype=QMargins contentsMargins () const
$method=|QMargins|contentsMargins|

$prototype=QRect contentsRect () const
$method=|QRect|contentsRect|

$prototype=Qt::ContextMenuPolicy contextMenuPolicy () const
$method=|Qt::ContextMenuPolicy|contextMenuPolicy|

$prototype=void setContextMenuPolicy ( Qt::ContextMenuPolicy policy )
$method=|void|setContextMenuPolicy|Qt::ContextMenuPolicy

$prototype=QCursor cursor () const
$method=|QCursor|cursor||#ifndef QT_NO_CURSOR

$prototype=void setCursor ( const QCursor & )
$method=|void|setCursor|const QCursor &|#ifndef QT_NO_CURSOR

$prototype=void unsetCursor ()
$method=|void|unsetCursor||#ifndef QT_NO_CURSOR

$prototype=WId effectiveWinId () const
$method=|WId|effectiveWinId|

$prototype=void ensurePolished () const
$method=|void|ensurePolished|

$prototype=Qt::FocusPolicy focusPolicy () const
$method=|Qt::FocusPolicy|focusPolicy|

$prototype=void setFocusPolicy ( Qt::FocusPolicy policy )
$method=|void|setFocusPolicy|Qt::FocusPolicy

$prototype=QWidget * focusProxy () const
$method=|QWidget *|focusProxy|

$prototype=QWidget * focusWidget () const
$method=|QWidget *|focusWidget|

$prototype=const QFont & font () const
$method=|const QFont &|font|

$prototype=void setFont ( const QFont & )
$method=|void|setFont|const QFont &

$prototype=QFontInfo fontInfo () const
$method=|QFontInfo|fontInfo|

$prototype=QFontMetrics fontMetrics () const
$method=|QFontMetrics|fontMetrics|

$prototype=QPalette::ColorRole foregroundRole () const
$method=|QPalette::ColorRole|foregroundRole|

$prototype=void setForegroundRole ( QPalette::ColorRole role )
$method=|void|setForegroundRole|QPalette::ColorRole

$prototype=QRect frameGeometry () const
$method=|QRect|frameGeometry|

$prototype=QSize frameSize () const
$method=|QSize|frameSize|

$prototype=void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
$method=|void|getContentsMargins|int *,int *,int *,int *

$prototype=void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
$method=|void|grabGesture|Qt::GestureType,Qt::GestureFlags=Qt::GestureFlags()

$prototype=void grabKeyboard ()
$method=|void|grabKeyboard|

$prototype=void grabMouse ()
$internalMethod=|void|grabMouse,grabMouse1|

$prototype=void grabMouse ( const QCursor & cursor )
$internalMethod=|void|grabMouse,grabMouse2|const QCursor &|#ifndef QT_NO_CURSOR

//[1]void grabMouse ()
//[2]void grabMouse ( const QCursor & cursor )

HB_FUNC_STATIC( QWIDGET_GRABMOUSE )
{
  if( ISNUMPAR(0) )
  {
    QWidget_grabMouse1();
  }
  else if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
    QWidget_grabMouse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int grabShortcut ( const QKeySequence & key, Qt::ShortcutContext context = Qt::WindowShortcut )
$method=|int|grabShortcut|const QKeySequence &,Qt::ShortcutContext=Qt::WindowShortcut|#ifndef QT_NO_SHORTCUT

$prototype=QGraphicsEffect * graphicsEffect () const
$method=|QGraphicsEffect *|graphicsEffect||#ifndef QT_NO_GRAPHICSEFFECT

$prototype=void setGraphicsEffect ( QGraphicsEffect * effect )
$method=|void|setGraphicsEffect|QGraphicsEffect *|#ifndef QT_NO_GRAPHICSEFFECT

$prototype=QGraphicsProxyWidget * graphicsProxyWidget () const
$method=|QGraphicsProxyWidget *|graphicsProxyWidget||#ifndef QT_NO_GRAPHICSVIEW

$prototype=bool hasEditFocus () const
$method=|bool|hasEditFocus||#ifdef QT_KEYPAD_NAVIGATION

$prototype=bool hasFocus () const
$method=|bool|hasFocus|

$prototype=bool hasMouseTracking () const
$method=|bool|hasMouseTracking|

$prototype=void setMouseTracking ( bool enable )
$method=|void|setMouseTracking|bool

$prototype=int height () const
$method=|int|height|

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototype=Qt::InputMethodHints inputMethodHints () const
$method=|Qt::InputMethodHints|inputMethodHints|

$prototype=void setInputMethodHints ( Qt::InputMethodHints hints )
$method=|void|setInputMethodHints|Qt::InputMethodHints

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void insertAction ( QAction * before, QAction * action )
$method=|void|insertAction|QAction *,QAction *|#ifndef QT_NO_ACTION

$prototype=void insertActions ( QAction * before, QList<QAction *> actions )
$method=|void|insertActions|QAction *,QList<QAction *>|#ifndef QT_NO_ACTION

$prototype=bool isActiveWindow () const
$method=|bool|isActiveWindow|

$prototype=bool isAncestorOf ( const QWidget * child ) const
$method=|bool|isAncestorOf|const QWidget *

$prototype=bool isEnabledTo ( const QWidget * ancestor ) const
$method=|bool|isEnabledTo|const QWidget *

$prototype=bool isFullScreen () const
$method=|bool|isFullScreen|

$prototype=bool isHidden () const
$method=|bool|isHidden|

$prototype=bool isMaximized () const
$method=|bool|isMaximized|

$prototype=bool isMinimized () const
$method=|bool|isMinimized|

$prototype=bool isModal () const
$method=|bool|isModal|

$prototype=bool isVisible () const
$method=|bool|isVisible|

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=bool isVisibleTo ( const QWidget * ancestor ) const
$method=|bool|isVisibleTo|const QWidget *

$prototype=bool isWindow () const
$method=|bool|isWindow|

$prototype=bool isWindowModified () const
$method=|bool|isWindowModified|

$prototype=void setWindowModified ( bool )
$method=|void|setWindowModified|bool

$prototype=QLayout * layout () const
$method=|QLayout *|layout|

$prototype=Qt::LayoutDirection layoutDirection () const
$method=|Qt::LayoutDirection|layoutDirection|

$prototype=void setLayoutDirection ( Qt::LayoutDirection direction )
$method=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=void unsetLayoutDirection ()
$method=|void|unsetLayoutDirection|

$prototype=QLocale locale () const
$method=|QLocale|locale|

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototype=void unsetLocale ()
$method=|void|unsetLocale|

$prototype=QPoint mapFrom ( QWidget * parent, const QPoint & pos ) const
$method=|QPoint|mapFrom|QWidget *,const QPoint &

$prototype=QPoint mapFromGlobal ( const QPoint & pos ) const
$method=|QPoint|mapFromGlobal|const QPoint &

$prototype=QPoint mapFromParent ( const QPoint & pos ) const
$method=|QPoint|mapFromParent|const QPoint &

$prototype=QPoint mapTo ( QWidget * parent, const QPoint & pos ) const
$method=|QPoint|mapTo|QWidget *,const QPoint &

$prototype=QPoint mapToGlobal ( const QPoint & pos ) const
$method=|QPoint|mapToGlobal|const QPoint &

$prototype=QPoint mapToParent ( const QPoint & pos ) const
$method=|QPoint|mapToParent|const QPoint &

$prototype=QRegion mask () const
$method=|QRegion|mask|

$prototype=void setMask ( const QBitmap & bitmap )
$internalMethod=|void|setMask,setMask1|const QBitmap &

$prototype=void setMask ( const QRegion & region )
$internalMethod=|void|setMask,setMask2|const QRegion &

//[1]void setMask ( const QBitmap & bitmap )
//[2]void setMask ( const QRegion & region )

HB_FUNC_STATIC( QWIDGET_SETMASK )
{
  if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    QWidget_setMask1();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_setMask2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int maximumHeight () const
$method=|int|maximumHeight|

$prototype=void setMaximumHeight ( int maxh )
$method=|void|setMaximumHeight|int

$prototype=int maximumWidth () const
$method=|int|maximumWidth|

$prototype=void setMaximumWidth ( int maxw )
$method=|void|setMaximumWidth|int

$prototype=int minimumHeight () const
$method=|int|minimumHeight|

$prototype=void setMinimumHeight ( int minh )
$method=|void|setMinimumHeight|int

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=int minimumWidth () const
$method=|int|minimumWidth|

$prototype=void setMinimumWidth ( int minw )
$method=|void|setMinimumWidth|int

$prototype=QPoint pos () const
$method=|QPoint|pos|

$prototype=void move ( const QPoint & )
$internalMethod=|void|move,move1|const QPoint &

$prototype=void move ( int x, int y )
$internalMethod=|void|move,move2|int,int

//[1]void move ( const QPoint & )
//[2]void move ( int x, int y )

HB_FUNC_STATIC( QWIDGET_MOVE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWidget_move1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_move2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QWidget * nativeParentWidget () const
$method=|QWidget *|nativeParentWidget|

$prototype=QWidget * nextInFocusChain () const
$method=|QWidget *|nextInFocusChain|

$prototype=QRect normalGeometry () const
$method=|QRect|normalGeometry|

$prototype=void overrideWindowFlags ( Qt::WindowFlags flags )
$method=|void|overrideWindowFlags|Qt::WindowFlags

$prototype=const QPalette & palette () const
$method=|const QPalette &|palette|

$prototype=void setPalette ( const QPalette & )
$method=|void|setPalette|const QPalette &

$prototype=QWidget * parentWidget () const
$method=|QWidget *|parentWidget|

$prototype=QWidget * previousInFocusChain () const
$method=|QWidget *|previousInFocusChain|

$prototype=QRect rect () const
$method=|QRect|rect|

$prototype=void releaseKeyboard ()
$method=|void|releaseKeyboard|

$prototype=void releaseMouse ()
$method=|void|releaseMouse|

$prototype=void releaseShortcut ( int id )
$method=|void|releaseShortcut|int|#ifndef QT_NO_SHORTCUT

$prototype=void removeAction ( QAction * action )
$method=|void|removeAction|QAction *|#ifndef QT_NO_ACTION

$prototype=void render (QPaintDevice *target, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
$method=|void|render,render1|QPaintDevice *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags(QWidget::DrawWindowBackground OR QWidget::DrawChildren)

$prototype=void render (QPainter *painter, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
$method=|void|render,render2|QPainter *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags(QWidget::DrawWindowBackground OR QWidget::DrawChildren)

//[1]void render (QPaintDevice *target, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
//[2]void render (QPainter *painter, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

%% TODO: identificar QPaintDevice e QPainter
HB_FUNC_STATIC( QWIDGET_RENDER )
{
  if( ISBETWEEN(1,4) && ISOBJECT(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QWIDGET_RENDER1 );
  }
  else if( ISBETWEEN(1,4) && ISQPAINTER(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QWIDGET_RENDER2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void repaint ( int x, int y, int w, int h )
$internalMethod=|void|repaint,repaint1|int,int,int,int

$prototype=void repaint ( const QRect & rect )
$internalMethod=|void|repaint,repaint2|const QRect &

$prototype=void repaint ( const QRegion & rgn )
$internalMethod=|void|repaint,repaint3|const QRegion &

$prototype=void repaint ()
$internalMethod=|void|repaint,repaint4|

//[1]void repaint ( int x, int y, int w, int h )
//[2]void repaint ( const QRect & rect )
//[3]void repaint ( const QRegion & rgn )
//[4]void repaint ()

HB_FUNC_STATIC( QWIDGET_REPAINT )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_repaint1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_repaint2();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_repaint3();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_repaint4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void resize ( const QSize & )
$internalMethod=|void|resize,resize1|const QSize &

$prototype=void resize ( int w, int h )
$internalMethod=|void|resize,resize2|int,int

//[1]void resize ( const QSize & )
//[2]void resize ( int w, int h )

HB_FUNC_STATIC( QWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool restoreGeometry ( const QByteArray & geometry )
$method=|bool|restoreGeometry|const QByteArray &

$prototype=QByteArray saveGeometry () const
$method=|QByteArray|saveGeometry|

$prototype=void scroll ( int dx, int dy )
$internalMethod=|void|scroll,scroll1|int,int

$prototype=void scroll ( int dx, int dy, const QRect & r )
$internalMethod=|void|scroll,scroll2|int,int,const QRect &

//[1]void scroll ( int dx, int dy )
//[2]void scroll ( int dx, int dy, const QRect & r )

HB_FUNC_STATIC( QWIDGET_SCROLL )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_scroll1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQRECT(3) )
  {
    QWidget_scroll2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
$method=|void|setAttribute|Qt::WidgetAttribute,bool=true

$prototype=void setContentsMargins ( int left, int top, int right, int bottom )
$internalMethod=|void|setContentsMargins,setContentsMargins1|int,int,int,int

$prototype=void setContentsMargins ( const QMargins & margins )
$internalMethod=|void|setContentsMargins,setContentsMargins2|const QMargins &

//[1]void setContentsMargins ( int left, int top, int right, int bottom )
//[2]void setContentsMargins ( const QMargins & margins )

HB_FUNC_STATIC( QWIDGET_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_setContentsMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QWidget_setContentsMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setEditFocus ( bool enable )
$method=|void|setEditFocus|bool|#ifdef QT_KEYPAD_NAVIGATION

$prototype=void setFixedHeight ( int h )
$method=|void|setFixedHeight|int

$prototype=void setFixedSize ( const QSize & s )
$internalMethod=|void|setFixedSize,setFixedSize1|const QSize &

$prototype=void setFixedSize ( int w, int h )
$internalMethod=|void|setFixedSize,setFixedSize2|int,int

//[1]void setFixedSize ( const QSize & s )
//[2]void setFixedSize ( int w, int h )

HB_FUNC_STATIC( QWIDGET_SETFIXEDSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setFixedSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setFixedSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setFixedWidth ( int w )
$method=|void|setFixedWidth|int

$prototype=void setFocus ( Qt::FocusReason reason )
$internalMethod=|void|setFocus,setFocus1|Qt::FocusReason

$prototype=void setFocus ()
$internalMethod=|void|setFocus,setFocus2|

//[1]void setFocus ( Qt::FocusReason reason )
//[2]void setFocus ()

HB_FUNC_STATIC( QWIDGET_SETFOCUS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QWidget_setFocus1();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_setFocus2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setFocusProxy ( QWidget * w )
$method=|void|setFocusProxy|QWidget *

$prototype=const QRect & geometry () const
$method=|const QRect &|geometry|

$prototype=void setGeometry ( const QRect & )
$internalMethod=|void|setGeometry,setGeometry1|const QRect &

$prototype=void setGeometry ( int x, int y, int w, int h )
$internalMethod=|void|setGeometry,setGeometry2|int,int,int,int

//[1]void setGeometry ( const QRect & )
//[2]void setGeometry ( int x, int y, int w, int h )

HB_FUNC_STATIC( QWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_setGeometry1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setLayout ( QLayout * layout )
$method=|void|setLayout|QLayout *

$prototype=QSize maximumSize () const
$method=|QSize|maximumSize|

$prototype=void setMaximumSize ( const QSize & )
$internalMethod=|void|setMaximumSize,setMaximumSize1|const QSize &

$prototype=void setMaximumSize ( int maxw, int maxh )
$internalMethod=|void|setMaximumSize,setMaximumSize2|int,int

//[1]void setMaximumSize ( const QSize & )
//[2]void setMaximumSize ( int maxw, int maxh )

HB_FUNC_STATIC( QWIDGET_SETMAXIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setMaximumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setMaximumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSize minimumSize () const
$method=|QSize|minimumSize|

$prototype=void setMinimumSize ( const QSize & )
$internalMethod=|void|setMinimumSize,setMinimumSize1|const QSize &

$prototype=void setMinimumSize ( int minw, int minh )
$internalMethod=|void|setMinimumSize,setMinimumSize2|int,int

//[1]void setMinimumSize ( const QSize & )
//[2]void setMinimumSize ( int minw, int minh )

HB_FUNC_STATIC( QWIDGET_SETMINIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setMinimumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setMinimumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setParent ( QWidget * parent )
$internalMethod=|void|setParent,setParent1|QWidget *

$prototype=void setParent ( QWidget * parent, Qt::WindowFlags f )
$internalMethod=|void|setParent,setParent2|QWidget *,Qt::WindowFlags

//[1]void setParent ( QWidget * parent )
//[2]void setParent ( QWidget * parent, Qt::WindowFlags f )

HB_FUNC_STATIC( QWIDGET_SETPARENT )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QWidget_setParent1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QWidget_setParent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setShortcutAutoRepeat ( int id, bool enable = true )
$method=|void|setShortcutAutoRepeat|int,bool=true|#ifndef QT_NO_SHORTCUT

$prototype=void setShortcutEnabled ( int id, bool enable = true )
$method=|void|setShortcutEnabled|int,bool=true|#ifndef QT_NO_SHORTCUT

$prototype=QSize sizeIncrement () const
$method=|QSize|sizeIncrement|

$prototype=void setSizeIncrement ( const QSize & )
$internalMethod=|void|setSizeIncrement,setSizeIncrement1|const QSize &

$prototype=void setSizeIncrement ( int w, int h )
$internalMethod=|void|setSizeIncrement,setSizeIncrement2|int,int

//[1]void setSizeIncrement ( const QSize & )
//[2]void setSizeIncrement ( int w, int h )

HB_FUNC_STATIC( QWIDGET_SETSIZEINCREMENT )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setSizeIncrement1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setSizeIncrement2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSizePolicy sizePolicy () const
$method=|QSizePolicy|sizePolicy|

$prototype=void setSizePolicy ( QSizePolicy )
$internalMethod=|void|setSizePolicy,setSizePolicy1|QSizePolicy

$prototype=void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
$internalMethod=|void|setSizePolicy,setSizePolicy2|QSizePolicy::Policy,QSizePolicy::Policy

//[1]void setSizePolicy ( QSizePolicy & )
//[2]void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )

HB_FUNC_STATIC( QWIDGET_SETSIZEPOLICY )
{
  if( ISNUMPAR(1) && ISQSIZEPOLICY(1) )
  {
    QWidget_setSizePolicy1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setSizePolicy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int toolTipDuration() const
$method=5,2,0|int|toolTipDuration||#ifndef QT_NO_TOOLTIP

$prototype=void setToolTipDuration(int msec)
$method=5,2,0|void|setToolTipDuration|int|#ifndef QT_NO_TOOLTIP

$prototype=Qt::WindowModality windowModality () const
$method=|Qt::WindowModality|windowModality|

$prototype=void setWindowModality ( Qt::WindowModality windowModality )
$method=|void|setWindowModality|Qt::WindowModality

$prototype=void setWindowRole ( const QString & role )
$method=|void|setWindowRole|const QString &

$prototype=void setWindowState ( Qt::WindowStates windowState )
$method=|void|setWindowState|Qt::WindowStates

$prototype=QSize size () const
$method=|QSize|size|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void stackUnder ( QWidget * w )
$method=|void|stackUnder|QWidget *

$prototype=QString statusTip () const
$method=|QString|statusTip||#ifndef QT_NO_STATUSTIP

$prototype=void setStatusTip ( const QString & )
$method=|void|setStatusTip|const QString &|#ifndef QT_NO_STATUSTIP

$prototype=QStyle * style () const
$method=|QStyle *|style|

$prototype=void setStyle ( QStyle * style )
$method=|void|setStyle|QStyle *

$prototype=QString styleSheet () const
$method=|QString|styleSheet||#ifndef QT_NO_STYLE_STYLESHEET

$prototype=void setStyleSheet ( const QString & styleSheet )
$method=|void|setStyleSheet|const QString &|#ifndef QT_NO_STYLE_STYLESHEET

$prototype=bool testAttribute ( Qt::WidgetAttribute attribute ) const
$method=|bool|testAttribute|Qt::WidgetAttribute

$prototype=QString toolTip () const
$method=|QString|toolTip||#ifndef QT_NO_TOOLTIP

$prototype=void setToolTip ( const QString & )
$method=|void|setToolTip|const QString &|#ifndef QT_NO_TOOLTIP

$prototype=bool underMouse () const
$method=|bool|underMouse|

$prototype=void ungrabGesture ( Qt::GestureType gesture )
$method=|void|ungrabGesture|Qt::GestureType|#ifndef QT_NO_GESTURES

$prototype=void update ( int x, int y, int w, int h )
$internalMethod=|void|update,update1|int,int,int,int

$prototype=void update ( const QRect & rect )
$internalMethod=|void|update,update2|const QRect &

$prototype=void update ( const QRegion & rgn )
$internalMethod=|void|update,update3|const QRegion &

$prototype=void update ()
$internalMethod=|void|update,update4|

//[1]void update ( int x, int y, int w, int h )
//[2]void update ( const QRect & rect )
//[3]void update ( const QRegion & rgn )
//[4]void update ()

HB_FUNC_STATIC( QWIDGET_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_update1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_update2();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_update3();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_update4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void updateGeometry ()
$method=|void|updateGeometry|

$prototype=bool updatesEnabled () const
$method=|bool|updatesEnabled|

$prototype=void setUpdatesEnabled ( bool enable )
$method=|void|setUpdatesEnabled|bool

$prototype=QRegion visibleRegion () const
$method=|QRegion|visibleRegion|

$prototype=QString whatsThis () const
$method=|QString|whatsThis||#ifndef QT_NO_WHATSTHIS

$prototype=void setWhatsThis ( const QString & )
$method=|void|setWhatsThis|const QString &|#ifndef QT_NO_WHATSTHIS

$prototype=int width () const
$method=|int|width|

$prototype=WId winId () const
$method=|WId|winId|

$prototype=WId internalWinId() const
$method=|WId|internalWinId|

$prototype=QWidget * window () const
$method=|QWidget *|window|

$prototype=QString windowFilePath () const
$method=|QString|windowFilePath|

$prototype=void setWindowFilePath ( const QString & filePath )
$method=|void|setWindowFilePath|const QString &

$prototype=Qt::WindowFlags windowFlags () const
$method=|Qt::WindowFlags|windowFlags|

$prototype=void setWindowFlags ( Qt::WindowFlags type )
$method=|void|setWindowFlags|Qt::WindowFlags

$prototype=QIcon windowIcon () const
$method=|QIcon|windowIcon|

$prototype=void setWindowIcon ( const QIcon & icon )
$method=|void|setWindowIcon|const QIcon &

$prototype=QString windowIconText () const
$method=|QString|windowIconText|

$prototype=void setWindowIconText ( const QString & )
$method=|void|setWindowIconText|const QString &

$prototype=qreal windowOpacity () const
$method=|qreal|windowOpacity|

$prototype=void setWindowOpacity ( qreal level )
$method=|void|setWindowOpacity|qreal

$prototype=QString windowRole () const
$method=|QString|windowRole|

$prototype=Qt::WindowStates windowState () const
$method=|Qt::WindowStates|windowState|

$prototype=QString windowTitle () const
$method=|QString|windowTitle|

$prototype=void setWindowTitle ( const QString & )
$method=|void|setWindowTitle|const QString &

$prototype=Qt::WindowType windowType () const
$method=|Qt::WindowType|windowType|

$prototype=int x () const
$method=|int|x|

$prototype=int y () const
$method=|int|y|

$prototype=QPaintEngine * paintEngine () const
$method=|QPaintEngine *|paintEngine|

$prototype=bool close ()
$method=|bool|close|

$prototype=void hide ()
$method=|void|hide|

$prototype=void lower ()
$method=|void|lower|

$prototype=void raise ()
$method=|void|raise|

$prototype=void setDisabled ( bool disable )
$method=|void|setDisabled|bool

$prototype=bool isEnabled () const
$method=|bool|isEnabled|

$prototype=void setEnabled ( bool )
$method=|void|setEnabled|bool

$prototype=void setHidden ( bool hidden )
$method=|void|setHidden|bool

$prototype=void show ()
$method=|void|show|

$prototype=void showFullScreen ()
$method=|void|showFullScreen|

$prototype=void showMaximized ()
$method=|void|showMaximized|

$prototype=void showMinimized ()
$method=|void|showMinimized|

$prototype=void showNormal ()
$method=|void|showNormal|

$prototype=int devType() const
$method=|int|devType|

$prototype=bool isTopLevel() const
$method=|bool|isTopLevel|

$prototype=bool isEnabledToTLW() const
$method=|bool|isEnabledToTLW|

$prototype=QWidget * topLevelWidget () const
$method=|QWidget *|topLevelWidget|

$prototype=Q_INVOKABLE QPixmap grab (const QRect &rectangle = QRect(QPoint(0, 0), QSize(-1, -1)))
$method=|QPixmap|grab|const QRect &=QRect(QPoint(0 COMMA 0) COMMA QSize(-1 COMMA -1))

$prototype=bool isRightToLeft() const
$method=|bool|isRightToLeft|

$prototype=bool isLeftToRight() const
$method=|bool|isLeftToRight|

$prototype=void overrideWindowState (Qt::WindowStates state)
$method=|void|overrideWindowState|Qt::WindowStates

$prototype=QBackingStore * backingStore () const
$method=|QBackingStore *|backingStore|

$prototype=QWindow * windowHandle () const
$method=|QWindow *|windowHandle|

$prototype=virtual bool hasHeightForWidth() const
$virtualMethod=|bool|hasHeightForWidth|

//=============================================================================
// QPaintDevice methods - BEGIN
//=============================================================================

$prototype=int colorCount () const
$method=|int|colorCount|

$prototype=int depth () const
$method=|int|depth|

$prototype=int heightMM () const
$method=|int|heightMM|

$prototype=int logicalDpiX () const
$method=|int|logicalDpiX|

$prototype=int logicalDpiY () const
$method=|int|logicalDpiY|

$prototype=bool paintingActive () const
$method=|bool|paintingActive|

$prototype=int physicalDpiX () const
$method=|int|physicalDpiX|

$prototype=int physicalDpiY () const
$method=|int|physicalDpiY|

$prototype=int widthMM () const
$method=|int|widthMM|

//=============================================================================
// QPaintDevice methods - END
//=============================================================================

$prototype=static QWidget * find ( WId id )
$staticMethod=|QWidget *|find|WId

$prototype=static QWidget * keyboardGrabber ()
$staticMethod=|QWidget *|keyboardGrabber|

$prototype=static QWidget * mouseGrabber ()
$staticMethod=|QWidget *|mouseGrabber|

$prototype=static void setTabOrder ( QWidget * first, QWidget * second )
$staticMethod=|void|setTabOrder|QWidget *,QWidget *

$prototype=static QWidget * createWindowContainer (QWindow *window, QWidget *parent=0, Qt::WindowFlags flags=0)
$staticMethod=|QWidget *|createWindowContainer|QWindow *,QWidget *=0,Qt::WindowFlags=0

$connectSignalFunction

$signalMethod=5,2,0|windowTitleChanged(QString)
$signalMethod=5,2,0|windowIconChanged(QIcon)
$signalMethod=|windowIconTextChanged(QString)
$signalMethod=|customContextMenuRequested(QPoint)

#pragma ENDDUMP

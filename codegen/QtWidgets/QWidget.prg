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

/*
explicit QWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

/*
bool acceptDrops () const
*/
$method=|bool|acceptDrops|

/*
void setAcceptDrops ( bool on )
*/
$method=|void|setAcceptDrops|bool

/*
QString accessibleDescription () const
*/
$method=|QString|accessibleDescription||#ifndef QT_NO_ACCESSIBILITY

/*
void setAccessibleDescription ( const QString & description )
*/
$method=|void|setAccessibleDescription|const QString &|#ifndef QT_NO_ACCESSIBILITY

/*
QString accessibleName () const
*/
$method=|QString|accessibleName||#ifndef QT_NO_ACCESSIBILITY

/*
void setAccessibleName ( const QString & name )
*/
$method=|void|setAccessibleName|const QString &|#ifndef QT_NO_ACCESSIBILITY

/*
QList<QAction *> actions () const
*/
HB_FUNC_STATIC( QWIDGET_ACTIONS )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAction *> list = obj->actions ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QACTION" );
    #else
    pDynSym = hb_dynsymFindName( "QACTION" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAction *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}

/*
void activateWindow ()
*/
$method=|void|activateWindow|

/*
void addAction ( QAction * action )
*/
$method=|void|addAction|QAction *|#ifndef QT_NO_ACTION

/*
void addActions ( QList<QAction *> actions )
*/
HB_FUNC_STATIC( QWIDGET_ADDACTIONS )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QList<QAction *> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->addActions ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void adjustSize ()
*/
$method=|void|adjustSize|

/*
bool autoFillBackground () const
*/
$method=|bool|autoFillBackground|

/*
void setAutoFillBackground ( bool enabled )
*/
$method=|void|setAutoFillBackground|bool

/*
QPalette::ColorRole backgroundRole () const
*/
$method=|QPalette::ColorRole|backgroundRole|

/*
void setBackgroundRole ( QPalette::ColorRole role )
*/
$method=|void|setBackgroundRole|QPalette::ColorRole

/*
QSize baseSize () const
*/
$method=|QSize|baseSize|

/*
void setBaseSize ( const QSize & )
*/
$internalMethod=|void|setBaseSize,setBaseSize1|const QSize &

/*
void setBaseSize ( int basew, int baseh )
*/
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

/*
QWidget * childAt ( int x, int y ) const
*/
$internalMethod=|QWidget *|childAt,childAt1|int,int

/*
QWidget * childAt ( const QPoint & p ) const
*/
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

/*
QRect childrenRect () const
*/
$method=|QRect|childrenRect|

/*
QRegion childrenRegion () const
*/
$method=|QRegion|childrenRegion|

/*
void clearFocus ()
*/
$method=|void|clearFocus|

/*
void clearMask ()
*/
$method=|void|clearMask|

/*
QMargins contentsMargins () const
*/
$method=|QMargins|contentsMargins|

/*
QRect contentsRect () const
*/
$method=|QRect|contentsRect|

/*
Qt::ContextMenuPolicy contextMenuPolicy () const
*/
$method=|Qt::ContextMenuPolicy|contextMenuPolicy|

/*
void setContextMenuPolicy ( Qt::ContextMenuPolicy policy )
*/
$method=|void|setContextMenuPolicy|Qt::ContextMenuPolicy

/*
QCursor cursor () const
*/
$method=|QCursor|cursor||#ifndef QT_NO_CURSOR

/*
void setCursor ( const QCursor & )
*/
$method=|void|setCursor|const QCursor &|#ifndef QT_NO_CURSOR

/*
void unsetCursor ()
*/
$method=|void|unsetCursor||#ifndef QT_NO_CURSOR

/*
WId effectiveWinId () const
*/
$method=|WId|effectiveWinId|

/*
void ensurePolished () const
*/
$method=|void|ensurePolished|

/*
Qt::FocusPolicy focusPolicy () const
*/
$method=|Qt::FocusPolicy|focusPolicy|

/*
void setFocusPolicy ( Qt::FocusPolicy policy )
*/
$method=|void|setFocusPolicy|Qt::FocusPolicy

/*
QWidget * focusProxy () const
*/
$method=|QWidget *|focusProxy|

/*
QWidget * focusWidget () const
*/
$method=|QWidget *|focusWidget|

/*
const QFont & font () const
*/
$method=|const QFont &|font|

/*
void setFont ( const QFont & )
*/
$method=|void|setFont|const QFont &

/*
QFontInfo fontInfo () const
*/
$method=|QFontInfo|fontInfo|

/*
QFontMetrics fontMetrics () const
*/
$method=|QFontMetrics|fontMetrics|

/*
QPalette::ColorRole foregroundRole () const
*/
$method=|QPalette::ColorRole|foregroundRole|

/*
void setForegroundRole ( QPalette::ColorRole role )
*/
$method=|void|setForegroundRole|QPalette::ColorRole

/*
QRect frameGeometry () const
*/
$method=|QRect|frameGeometry|

/*
QSize frameSize () const
*/
$method=|QSize|frameSize|

/*
void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
*/
$method=|void|getContentsMargins|int *,int *,int *,int *

/*
void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
*/
$method=|void|grabGesture|Qt::GestureType,Qt::GestureFlags=Qt::GestureFlags()

/*
void grabKeyboard ()
*/
$method=|void|grabKeyboard|

/*
void grabMouse ()
*/
$internalMethod=|void|grabMouse,grabMouse1|

/*
void grabMouse ( const QCursor & cursor )
*/
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

/*
int grabShortcut ( const QKeySequence & key, Qt::ShortcutContext context = Qt::WindowShortcut )
*/
$method=|int|grabShortcut|const QKeySequence &,Qt::ShortcutContext=Qt::WindowShortcut|#ifndef QT_NO_SHORTCUT

/*
QGraphicsEffect * graphicsEffect () const
*/
$method=|QGraphicsEffect *|graphicsEffect||#ifndef QT_NO_GRAPHICSEFFECT

/*
void setGraphicsEffect ( QGraphicsEffect * effect )
*/
$method=|void|setGraphicsEffect|QGraphicsEffect *|#ifndef QT_NO_GRAPHICSEFFECT

/*
QGraphicsProxyWidget * graphicsProxyWidget () const
*/
$method=|QGraphicsProxyWidget *|graphicsProxyWidget||#ifndef QT_NO_GRAPHICSVIEW

/*
bool hasEditFocus () const
*/
$method=|bool|hasEditFocus||#ifdef QT_KEYPAD_NAVIGATION

/*
bool hasFocus () const
*/
$method=|bool|hasFocus|

/*
bool hasMouseTracking () const
*/
$method=|bool|hasMouseTracking|

/*
void setMouseTracking ( bool enable )
*/
$method=|void|setMouseTracking|bool

/*
int height () const
*/
$method=|int|height|

/*
virtual int heightForWidth ( int w ) const
*/
$method=|int|heightForWidth|int

/*
Qt::InputMethodHints inputMethodHints () const
*/
$method=|Qt::InputMethodHints|inputMethodHints|

/*
void setInputMethodHints ( Qt::InputMethodHints hints )
*/
$method=|void|setInputMethodHints|Qt::InputMethodHints

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
void insertAction ( QAction * before, QAction * action )
*/
$method=|void|insertAction|QAction *,QAction *|#ifndef QT_NO_ACTION

/*
void insertActions ( QAction * before, QList<QAction *> actions )
*/
HB_FUNC_STATIC( QWIDGET_INSERTACTIONS )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) && ISARRAY(2) )
    {
      QList<QAction *> par2;
      PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
      int i2;
      int nLen2 = hb_arrayLen(aList2);
      for (i2=0;i2<nLen2;i2++)
      {
        par2 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
      }
      obj->insertActions ( PQACTION(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isActiveWindow () const
*/
$method=|bool|isActiveWindow|

/*
bool isAncestorOf ( const QWidget * child ) const
*/
$method=|bool|isAncestorOf|const QWidget *

/*
bool isEnabledTo ( const QWidget * ancestor ) const
*/
$method=|bool|isEnabledTo|const QWidget *

/*
bool isFullScreen () const
*/
$method=|bool|isFullScreen|

/*
bool isHidden () const
*/
$method=|bool|isHidden|

/*
bool isMaximized () const
*/
$method=|bool|isMaximized|

/*
bool isMinimized () const
*/
$method=|bool|isMinimized|

/*
bool isModal () const
*/
$method=|bool|isModal|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
virtual void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
bool isVisibleTo ( const QWidget * ancestor ) const
*/
$method=|bool|isVisibleTo|const QWidget *

/*
bool isWindow () const
*/
$method=|bool|isWindow|

/*
bool isWindowModified () const
*/
$method=|bool|isWindowModified|

/*
void setWindowModified ( bool )
*/
$method=|void|setWindowModified|bool

/*
QLayout * layout () const
*/
$method=|QLayout *|layout|

/*
Qt::LayoutDirection layoutDirection () const
*/
$method=|Qt::LayoutDirection|layoutDirection|

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
$method=|void|setLayoutDirection|Qt::LayoutDirection

/*
void unsetLayoutDirection ()
*/
$method=|void|unsetLayoutDirection|

/*
QLocale locale () const
*/
$method=|QLocale|locale|

/*
void setLocale ( const QLocale & locale )
*/
$method=|void|setLocale|const QLocale &

/*
void unsetLocale ()
*/
$method=|void|unsetLocale|

/*
QPoint mapFrom ( QWidget * parent, const QPoint & pos ) const
*/
$method=|QPoint|mapFrom|QWidget *,const QPoint &

/*
QPoint mapFromGlobal ( const QPoint & pos ) const
*/
$method=|QPoint|mapFromGlobal|const QPoint &

/*
QPoint mapFromParent ( const QPoint & pos ) const
*/
$method=|QPoint|mapFromParent|const QPoint &

/*
QPoint mapTo ( QWidget * parent, const QPoint & pos ) const
*/
$method=|QPoint|mapTo|QWidget *,const QPoint &

/*
QPoint mapToGlobal ( const QPoint & pos ) const
*/
$method=|QPoint|mapToGlobal|const QPoint &

/*
QPoint mapToParent ( const QPoint & pos ) const
*/
$method=|QPoint|mapToParent|const QPoint &

/*
QRegion mask () const
*/
$method=|QRegion|mask|

/*
void setMask ( const QBitmap & bitmap )
*/
$internalMethod=|void|setMask,setMask1|const QBitmap &

/*
void setMask ( const QRegion & region )
*/
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

/*
int maximumHeight () const
*/
$method=|int|maximumHeight|

/*
void setMaximumHeight ( int maxh )
*/
$method=|void|setMaximumHeight|int

/*
int maximumWidth () const
*/
$method=|int|maximumWidth|

/*
void setMaximumWidth ( int maxw )
*/
$method=|void|setMaximumWidth|int

/*
int minimumHeight () const
*/
$method=|int|minimumHeight|

/*
void setMinimumHeight ( int minh )
*/
$method=|void|setMinimumHeight|int

/*
virtual QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
int minimumWidth () const
*/
$method=|int|minimumWidth|

/*
void setMinimumWidth ( int minw )
*/
$method=|void|setMinimumWidth|int

/*
QPoint pos () const
*/
$method=|QPoint|pos|

/*
void move ( const QPoint & )
*/
$internalMethod=|void|move,move1|const QPoint &

/*
void move ( int x, int y )
*/
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

/*
QWidget * nativeParentWidget () const
*/
$method=|QWidget *|nativeParentWidget|

/*
QWidget * nextInFocusChain () const
*/
$method=|QWidget *|nextInFocusChain|

/*
QRect normalGeometry () const
*/
$method=|QRect|normalGeometry|

/*
void overrideWindowFlags ( Qt::WindowFlags flags )
*/
$method=|void|overrideWindowFlags|Qt::WindowFlags

/*
const QPalette & palette () const
*/
$method=|const QPalette &|palette|

/*
void setPalette ( const QPalette & )
*/
$method=|void|setPalette|const QPalette &

/*
QWidget * parentWidget () const
*/
$method=|QWidget *|parentWidget|

/*
QWidget * previousInFocusChain () const
*/
$method=|QWidget *|previousInFocusChain|

/*
QRect rect () const
*/
$method=|QRect|rect|

/*
void releaseKeyboard ()
*/
$method=|void|releaseKeyboard|

/*
void releaseMouse ()
*/
$method=|void|releaseMouse|

/*
void releaseShortcut ( int id )
*/
$method=|void|releaseShortcut|int|#ifndef QT_NO_SHORTCUT

/*
void removeAction ( QAction * action )
*/
$method=|void|removeAction|QAction *|#ifndef QT_NO_ACTION

/*
void render (QPaintDevice *target, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
*/
$method=|void|render,render1|QPaintDevice *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags(QWidget::DrawWindowBackground OR QWidget::DrawChildren)

/*
void render (QPainter *painter, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
*/
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

/*
void repaint ( int x, int y, int w, int h )
*/
$internalMethod=|void|repaint,repaint1|int,int,int,int

/*
void repaint ( const QRect & rect )
*/
$internalMethod=|void|repaint,repaint2|const QRect &

/*
void repaint ( const QRegion & rgn )
*/
$internalMethod=|void|repaint,repaint3|const QRegion &

/*
void repaint ()
*/
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

/*
void resize ( const QSize & )
*/
$internalMethod=|void|resize,resize1|const QSize &

/*
void resize ( int w, int h )
*/
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

/*
bool restoreGeometry ( const QByteArray & geometry )
*/
$method=|bool|restoreGeometry|const QByteArray &

/*
QByteArray saveGeometry () const
*/
$method=|QByteArray|saveGeometry|

/*
void scroll ( int dx, int dy )
*/
$internalMethod=|void|scroll,scroll1|int,int

/*
void scroll ( int dx, int dy, const QRect & r )
*/
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

/*
void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
*/
$method=|void|setAttribute|Qt::WidgetAttribute,bool=true

/*
void setContentsMargins ( int left, int top, int right, int bottom )
*/
$internalMethod=|void|setContentsMargins,setContentsMargins1|int,int,int,int

/*
void setContentsMargins ( const QMargins & margins )
*/
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

/*
void setEditFocus ( bool enable )
*/
$method=|void|setEditFocus|bool|#ifdef QT_KEYPAD_NAVIGATION

/*
void setFixedHeight ( int h )
*/
$method=|void|setFixedHeight|int

/*
void setFixedSize ( const QSize & s )
*/
$internalMethod=|void|setFixedSize,setFixedSize1|const QSize &

/*
void setFixedSize ( int w, int h )
*/
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

/*
void setFixedWidth ( int w )
*/
$method=|void|setFixedWidth|int

/*
void setFocus ( Qt::FocusReason reason )
*/
$internalMethod=|void|setFocus,setFocus1|Qt::FocusReason

/*
void setFocus ()
*/
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

/*
void setFocusProxy ( QWidget * w )
*/
$method=|void|setFocusProxy|QWidget *

/*
const QRect & geometry () const
*/
$method=|const QRect &|geometry|

/*
void setGeometry ( const QRect & )
*/
$internalMethod=|void|setGeometry,setGeometry1|const QRect &

/*
void setGeometry ( int x, int y, int w, int h )
*/
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

/*
void setLayout ( QLayout * layout )
*/
$method=|void|setLayout|QLayout *

/*
QSize maximumSize () const
*/
$method=|QSize|maximumSize|

/*
void setMaximumSize ( const QSize & )
*/
$internalMethod=|void|setMaximumSize,setMaximumSize1|const QSize &

/*
void setMaximumSize ( int maxw, int maxh )
*/
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

/*
QSize minimumSize () const
*/
$method=|QSize|minimumSize|

/*
void setMinimumSize ( const QSize & )
*/
$internalMethod=|void|setMinimumSize,setMinimumSize1|const QSize &

/*
void setMinimumSize ( int minw, int minh )
*/
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

/*
void setParent ( QWidget * parent )
*/
$internalMethod=|void|setParent,setParent1|QWidget *

/*
void setParent ( QWidget * parent, Qt::WindowFlags f )
*/
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

/*
void setShortcutAutoRepeat ( int id, bool enable = true )
*/
$method=|void|setShortcutAutoRepeat|int,bool=true|#ifndef QT_NO_SHORTCUT

/*
void setShortcutEnabled ( int id, bool enable = true )
*/
$method=|void|setShortcutEnabled|int,bool=true|#ifndef QT_NO_SHORTCUT

/*
QSize sizeIncrement () const
*/
$method=|QSize|sizeIncrement|

/*
void setSizeIncrement ( const QSize & )
*/
$internalMethod=|void|setSizeIncrement,setSizeIncrement1|const QSize &

/*
void setSizeIncrement ( int w, int h )
*/
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

/*
QSizePolicy sizePolicy () const
*/
$method=|QSizePolicy|sizePolicy|

/*
void setSizePolicy ( QSizePolicy )
*/
$internalMethod=|void|setSizePolicy,setSizePolicy1|QSizePolicy

/*
void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
*/
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

/*
int toolTipDuration() const
*/
$method=5,2,0|int|toolTipDuration||#ifndef QT_NO_TOOLTIP

/*
void setToolTipDuration(int msec)
*/
$method=5,2,0|void|setToolTipDuration|int|#ifndef QT_NO_TOOLTIP

/*
Qt::WindowModality windowModality () const
*/
$method=|Qt::WindowModality|windowModality|

/*
void setWindowModality ( Qt::WindowModality windowModality )
*/
$method=|void|setWindowModality|Qt::WindowModality

/*
void setWindowRole ( const QString & role )
*/
$method=|void|setWindowRole|const QString &

/*
void setWindowState ( Qt::WindowStates windowState )
*/
$method=|void|setWindowState|Qt::WindowStates

/*
QSize size () const
*/
$method=|QSize|size|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void stackUnder ( QWidget * w )
*/
$method=|void|stackUnder|QWidget *

/*
QString statusTip () const
*/
$method=|QString|statusTip||#ifndef QT_NO_STATUSTIP

/*
void setStatusTip ( const QString & )
*/
$method=|void|setStatusTip|const QString &|#ifndef QT_NO_STATUSTIP

/*
QStyle * style () const
*/
$method=|QStyle *|style|

/*
void setStyle ( QStyle * style )
*/
$method=|void|setStyle|QStyle *

/*
QString styleSheet () const
*/
$method=|QString|styleSheet||#ifndef QT_NO_STYLE_STYLESHEET

/*
void setStyleSheet ( const QString & styleSheet )
*/
$method=|void|setStyleSheet|const QString &|#ifndef QT_NO_STYLE_STYLESHEET

/*
bool testAttribute ( Qt::WidgetAttribute attribute ) const
*/
$method=|bool|testAttribute|Qt::WidgetAttribute

/*
QString toolTip () const
*/
$method=|QString|toolTip||#ifndef QT_NO_TOOLTIP

/*
void setToolTip ( const QString & )
*/
$method=|void|setToolTip|const QString &|#ifndef QT_NO_TOOLTIP

/*
bool underMouse () const
*/
$method=|bool|underMouse|

/*
void ungrabGesture ( Qt::GestureType gesture )
*/
$method=|void|ungrabGesture|Qt::GestureType|#ifndef QT_NO_GESTURES

/*
void update ( int x, int y, int w, int h )
*/
$internalMethod=|void|update,update1|int,int,int,int

/*
void update ( const QRect & rect )
*/
$internalMethod=|void|update,update2|const QRect &

/*
void update ( const QRegion & rgn )
*/
$internalMethod=|void|update,update3|const QRegion &

/*
void update ()
*/
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

/*
void updateGeometry ()
*/
$method=|void|updateGeometry|

/*
bool updatesEnabled () const
*/
$method=|bool|updatesEnabled|

/*
void setUpdatesEnabled ( bool enable )
*/
$method=|void|setUpdatesEnabled|bool

/*
QRegion visibleRegion () const
*/
$method=|QRegion|visibleRegion|

/*
QString whatsThis () const
*/
$method=|QString|whatsThis||#ifndef QT_NO_WHATSTHIS

/*
void setWhatsThis ( const QString & )
*/
$method=|void|setWhatsThis|const QString &|#ifndef QT_NO_WHATSTHIS

/*
int width () const
*/
$method=|int|width|

/*
WId winId () const
*/
$method=|WId|winId|

/*
WId internalWinId() const
*/
$method=|WId|internalWinId|

/*
QWidget * window () const
*/
$method=|QWidget *|window|

/*
QString windowFilePath () const
*/
$method=|QString|windowFilePath|

/*
void setWindowFilePath ( const QString & filePath )
*/
$method=|void|setWindowFilePath|const QString &

/*
Qt::WindowFlags windowFlags () const
*/
$method=|Qt::WindowFlags|windowFlags|

/*
void setWindowFlags ( Qt::WindowFlags type )
*/
$method=|void|setWindowFlags|Qt::WindowFlags

/*
QIcon windowIcon () const
*/
$method=|QIcon|windowIcon|

/*
void setWindowIcon ( const QIcon & icon )
*/
$method=|void|setWindowIcon|const QIcon &

/*
QString windowIconText () const
*/
$method=|QString|windowIconText|

/*
void setWindowIconText ( const QString & )
*/
$method=|void|setWindowIconText|const QString &

/*
qreal windowOpacity () const
*/
$method=|qreal|windowOpacity|

/*
void setWindowOpacity ( qreal level )
*/
$method=|void|setWindowOpacity|qreal

/*
QString windowRole () const
*/
$method=|QString|windowRole|

/*
Qt::WindowStates windowState () const
*/
$method=|Qt::WindowStates|windowState|

/*
QString windowTitle () const
*/
$method=|QString|windowTitle|

/*
void setWindowTitle ( const QString & )
*/
$method=|void|setWindowTitle|const QString &

/*
Qt::WindowType windowType () const
*/
$method=|Qt::WindowType|windowType|

/*
int x () const
*/
$method=|int|x|

/*
int y () const
*/
$method=|int|y|

/*
QPaintEngine * paintEngine () const
*/
$method=|QPaintEngine *|paintEngine|

/*
bool close ()
*/
$method=|bool|close|

/*
void hide ()
*/
$method=|void|hide|

/*
void lower ()
*/
$method=|void|lower|

/*
void raise ()
*/
$method=|void|raise|

/*
void setDisabled ( bool disable )
*/
$method=|void|setDisabled|bool

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
void setEnabled ( bool )
*/
$method=|void|setEnabled|bool

/*
void setHidden ( bool hidden )
*/
$method=|void|setHidden|bool

/*
void show ()
*/
$method=|void|show|

/*
void showFullScreen ()
*/
$method=|void|showFullScreen|

/*
void showMaximized ()
*/
$method=|void|showMaximized|

/*
void showMinimized ()
*/
$method=|void|showMinimized|

/*
void showNormal ()
*/
$method=|void|showNormal|

/*
int devType() const
*/
$method=|int|devType|

/*
bool isTopLevel() const
*/
$method=|bool|isTopLevel|

/*
bool isEnabledToTLW() const
*/
$method=|bool|isEnabledToTLW|

/*
QWidget * topLevelWidget () const
*/
$method=|QWidget *|topLevelWidget|

/*
Q_INVOKABLE QPixmap grab (const QRect &rectangle = QRect(QPoint(0, 0), QSize(-1, -1)))
*/
$method=|QPixmap|grab|const QRect &=QRect(QPoint(0 COMMA 0) COMMA QSize(-1 COMMA -1))

/*
bool isRightToLeft() const
*/
$method=|bool|isRightToLeft|

/*
bool isLeftToRight() const
*/
$method=|bool|isLeftToRight|

/*
void overrideWindowState (Qt::WindowStates state)
*/
$method=|void|overrideWindowState|Qt::WindowStates

/*
QBackingStore * backingStore () const
*/
$method=|QBackingStore *|backingStore|

/*
QWindow * windowHandle () const
*/
$method=|QWindow *|windowHandle|

/*
virtual bool hasHeightForWidth() const
*/
$method=|bool|hasHeightForWidth|

//=============================================================================
// QPaintDevice methods - BEGIN
//=============================================================================

/*
int colorCount () const
*/
$method=|int|colorCount|

/*
int depth () const
*/
$method=|int|depth|

/*
int heightMM () const
*/
$method=|int|heightMM|

/*
int logicalDpiX () const
*/
$method=|int|logicalDpiX|

/*
int logicalDpiY () const
*/
$method=|int|logicalDpiY|

/*
bool paintingActive () const
*/
$method=|bool|paintingActive|

/*
int physicalDpiX () const
*/
$method=|int|physicalDpiX|

/*
int physicalDpiY () const
*/
$method=|int|physicalDpiY|

/*
int widthMM () const
*/
$method=|int|widthMM|

//=============================================================================
// QPaintDevice methods - END
//=============================================================================

/*
static QWidget * find ( WId id )
*/
$staticMethod=|QWidget *|find|WId

/*
static QWidget * keyboardGrabber ()
*/
$staticMethod=|QWidget *|keyboardGrabber|

/*
static QWidget * mouseGrabber ()
*/
$staticMethod=|QWidget *|mouseGrabber|

/*
static void setTabOrder ( QWidget * first, QWidget * second )
*/
$staticMethod=|void|setTabOrder|QWidget *,QWidget *

/*
static QWidget * createWindowContainer (QWindow *window, QWidget *parent=0, Qt::WindowFlags flags=0)
*/
$staticMethod=|QWidget *|createWindowContainer|QWindow *,QWidget *=0,Qt::WindowFlags=0

#pragma ENDDUMP

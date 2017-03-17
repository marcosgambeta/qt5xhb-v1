/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

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

   DATA class_id INIT Class_Id_QWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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
   METHOD onWindowIconTextChanged
   METHOD onCustomContextMenuRequested
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWidget>
#endif

#include <QIcon>
#include <QVariant>
#include <QLocale>

/*
explicit QWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QWIDGET_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QWidget * o = new QWidget ( par1,  (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QWIDGET_DELETE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool acceptDrops () const
*/
HB_FUNC_STATIC( QWIDGET_ACCEPTDROPS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->acceptDrops (  ) );
  }
}

/*
void setAcceptDrops ( bool on )
*/
HB_FUNC_STATIC( QWIDGET_SETACCEPTDROPS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAcceptDrops ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString accessibleDescription () const
*/
HB_FUNC_STATIC( QWIDGET_ACCESSIBLEDESCRIPTION )
{
#ifndef QT_NO_ACCESSIBILITY
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->accessibleDescription (  ).toLatin1().data() );
  }
#endif
}

/*
void setAccessibleDescription ( const QString & description )
*/
HB_FUNC_STATIC( QWIDGET_SETACCESSIBLEDESCRIPTION )
{
#ifndef QT_NO_ACCESSIBILITY
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setAccessibleDescription ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString accessibleName () const
*/
HB_FUNC_STATIC( QWIDGET_ACCESSIBLENAME )
{
#ifndef QT_NO_ACCESSIBILITY
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->accessibleName (  ).toLatin1().data() );
  }
#endif
}

/*
void setAccessibleName ( const QString & name )
*/
HB_FUNC_STATIC( QWIDGET_SETACCESSIBLENAME )
{
#ifndef QT_NO_ACCESSIBILITY
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setAccessibleName ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QAction *> actions () const
*/
HB_FUNC_STATIC( QWIDGET_ACTIONS )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAction *> list = obj->actions (  );
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
HB_FUNC_STATIC( QWIDGET_ACTIVATEWINDOW )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->activateWindow (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QWIDGET_ADDACTION )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
    obj->addAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void addActions ( QList<QAction *> actions )
*/
HB_FUNC_STATIC( QWIDGET_ADDACTIONS )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
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

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void adjustSize ()
*/
HB_FUNC_STATIC( QWIDGET_ADJUSTSIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->adjustSize (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoFillBackground () const
*/
HB_FUNC_STATIC( QWIDGET_AUTOFILLBACKGROUND )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->autoFillBackground (  ) );
  }
}

/*
void setAutoFillBackground ( bool enabled )
*/
HB_FUNC_STATIC( QWIDGET_SETAUTOFILLBACKGROUND )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAutoFillBackground ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPalette::ColorRole backgroundRole () const
*/
HB_FUNC_STATIC( QWIDGET_BACKGROUNDROLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->backgroundRole (  ) );
  }
}

/*
void setBackgroundRole ( QPalette::ColorRole role )
*/
HB_FUNC_STATIC( QWIDGET_SETBACKGROUNDROLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBackgroundRole (  (QPalette::ColorRole) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize baseSize () const
*/
HB_FUNC_STATIC( QWIDGET_BASESIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->baseSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setBaseSize ( const QSize & )
*/
void QWidget_setBaseSize1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setBaseSize ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBaseSize ( int basew, int baseh )
*/
void QWidget_setBaseSize2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBaseSize ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
void QWidget_childAt1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->childAt ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * childAt ( const QPoint & p ) const
*/
void QWidget_childAt2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QWidget * ptr = obj->childAt ( *par1 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

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
HB_FUNC_STATIC( QWIDGET_CHILDRENRECT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->childrenRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRegion childrenRegion () const
*/
HB_FUNC_STATIC( QWIDGET_CHILDRENREGION )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->childrenRegion (  ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
void clearFocus ()
*/
HB_FUNC_STATIC( QWIDGET_CLEARFOCUS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearFocus (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearMask ()
*/
HB_FUNC_STATIC( QWIDGET_CLEARMASK )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearMask (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMargins contentsMargins () const
*/
HB_FUNC_STATIC( QWIDGET_CONTENTSMARGINS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMargins * ptr = new QMargins( obj->contentsMargins (  ) );
    _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}

/*
QRect contentsRect () const
*/
HB_FUNC_STATIC( QWIDGET_CONTENTSRECT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->contentsRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
Qt::ContextMenuPolicy contextMenuPolicy () const
*/
HB_FUNC_STATIC( QWIDGET_CONTEXTMENUPOLICY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->contextMenuPolicy (  ) );
  }
}

/*
void setContextMenuPolicy ( Qt::ContextMenuPolicy policy )
*/
HB_FUNC_STATIC( QWIDGET_SETCONTEXTMENUPOLICY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setContextMenuPolicy (  (Qt::ContextMenuPolicy) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QCursor cursor () const
*/
HB_FUNC_STATIC( QWIDGET_CURSOR )
{
#ifndef QT_NO_CURSOR
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QCursor * ptr = new QCursor( obj->cursor (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCURSOR", true );
  }
#endif
}

/*
void setCursor ( const QCursor & )
*/
HB_FUNC_STATIC( QWIDGET_SETCURSOR )
{
#ifndef QT_NO_CURSOR
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QCursor * par1 = (QCursor *) _qt5xhb_itemGetPtr(1);
    obj->setCursor ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void unsetCursor ()
*/
HB_FUNC_STATIC( QWIDGET_UNSETCURSOR )
{
#ifndef QT_NO_CURSOR
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetCursor (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
WId effectiveWinId () const
*/
HB_FUNC_STATIC( QWIDGET_EFFECTIVEWINID )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    WId r = obj->effectiveWinId (  );
    hb_retptr( (void*) r );
  }
}

/*
void ensurePolished () const
*/
HB_FUNC_STATIC( QWIDGET_ENSUREPOLISHED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ensurePolished (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::FocusPolicy focusPolicy () const
*/
HB_FUNC_STATIC( QWIDGET_FOCUSPOLICY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->focusPolicy (  ) );
  }
}

/*
void setFocusPolicy ( Qt::FocusPolicy policy )
*/
HB_FUNC_STATIC( QWIDGET_SETFOCUSPOLICY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFocusPolicy (  (Qt::FocusPolicy) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * focusProxy () const
*/
HB_FUNC_STATIC( QWIDGET_FOCUSPROXY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->focusProxy (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * focusWidget () const
*/
HB_FUNC_STATIC( QWIDGET_FOCUSWIDGET )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->focusWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
const QFont & font () const
*/
HB_FUNC_STATIC( QWIDGET_FONT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QFont * ptr = &obj->font (  );
    _qt5xhb_createReturnClass ( ptr, "QFONT" );
  }
}

/*
void setFont ( const QFont & )
*/
HB_FUNC_STATIC( QWIDGET_SETFONT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
    obj->setFont ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFontInfo fontInfo () const
*/
HB_FUNC_STATIC( QWIDGET_FONTINFO )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFontInfo * ptr = new QFontInfo( obj->fontInfo (  ) );
    _qt5xhb_createReturnClass ( ptr, "QFONTINFO", true );
  }
}

/*
QFontMetrics fontMetrics () const
*/
HB_FUNC_STATIC( QWIDGET_FONTMETRICS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFontMetrics * ptr = new QFontMetrics( obj->fontMetrics (  ) );
    _qt5xhb_createReturnClass ( ptr, "QFONTMETRICS", true );
  }
}

/*
QPalette::ColorRole foregroundRole () const
*/
HB_FUNC_STATIC( QWIDGET_FOREGROUNDROLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->foregroundRole (  ) );
  }
}

/*
void setForegroundRole ( QPalette::ColorRole role )
*/
HB_FUNC_STATIC( QWIDGET_SETFOREGROUNDROLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setForegroundRole (  (QPalette::ColorRole) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect frameGeometry () const
*/
HB_FUNC_STATIC( QWIDGET_FRAMEGEOMETRY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->frameGeometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QSize frameSize () const
*/
HB_FUNC_STATIC( QWIDGET_FRAMESIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->frameSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
*/
HB_FUNC_STATIC( QWIDGET_GETCONTENTSMARGINS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
*/
HB_FUNC_STATIC( QWIDGET_GRABGESTURE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::GestureFlags() : hb_parni(2);
    obj->grabGesture (  (Qt::GestureType) par1,  (Qt::GestureFlags) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabKeyboard ()
*/
HB_FUNC_STATIC( QWIDGET_GRABKEYBOARD )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->grabKeyboard (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabMouse ()
*/
void QWidget_grabMouse1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->grabMouse (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabMouse ( const QCursor & cursor )
*/
void QWidget_grabMouse2 ()
{
#ifndef QT_NO_CURSOR
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QCursor * par1 = (QCursor *) _qt5xhb_itemGetPtr(1);
    obj->grabMouse ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

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
HB_FUNC_STATIC( QWIDGET_GRABSHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QKeySequence * par1 = (QKeySequence *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::WindowShortcut : hb_parni(2);
    hb_retni( obj->grabShortcut ( *par1,  (Qt::ShortcutContext) par2 ) );
  }
#endif
}

/*
QGraphicsEffect * graphicsEffect () const
*/
HB_FUNC_STATIC( QWIDGET_GRAPHICSEFFECT )
{
#ifndef QT_NO_GRAPHICSEFFECT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsEffect * ptr = obj->graphicsEffect (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSEFFECT" );
  }
#endif
}

/*
void setGraphicsEffect ( QGraphicsEffect * effect )
*/
HB_FUNC_STATIC( QWIDGET_SETGRAPHICSEFFECT )
{
#ifndef QT_NO_GRAPHICSEFFECT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsEffect * par1 = (QGraphicsEffect *) _qt5xhb_itemGetPtr(1);
    obj->setGraphicsEffect ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGraphicsProxyWidget * graphicsProxyWidget () const
*/
HB_FUNC_STATIC( QWIDGET_GRAPHICSPROXYWIDGET )
{
#ifndef QT_NO_GRAPHICSVIEW
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsProxyWidget * ptr = obj->graphicsProxyWidget (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSPROXYWIDGET" );
  }
#endif
}

/*
bool hasEditFocus () const
*/
HB_FUNC_STATIC( QWIDGET_HASEDITFOCUS )
{
#ifdef QT_KEYPAD_NAVIGATION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasEditFocus (  ) );
  }
#endif
}

/*
bool hasFocus () const
*/
HB_FUNC_STATIC( QWIDGET_HASFOCUS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasFocus (  ) );
  }
}

/*
bool hasMouseTracking () const
*/
HB_FUNC_STATIC( QWIDGET_HASMOUSETRACKING )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasMouseTracking (  ) );
  }
}

/*
void setMouseTracking ( bool enable )
*/
HB_FUNC_STATIC( QWIDGET_SETMOUSETRACKING )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMouseTracking ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int height () const
*/
HB_FUNC_STATIC( QWIDGET_HEIGHT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}

/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QWIDGET_HEIGHTFORWIDTH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->heightForWidth ( (int) hb_parni(1) ) );
  }
}

/*
Qt::InputMethodHints inputMethodHints () const
*/
HB_FUNC_STATIC( QWIDGET_INPUTMETHODHINTS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->inputMethodHints (  ) );
  }
}

/*
void setInputMethodHints ( Qt::InputMethodHints hints )
*/
HB_FUNC_STATIC( QWIDGET_SETINPUTMETHODHINTS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setInputMethodHints (  (Qt::InputMethodHints) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QWIDGET_INPUTMETHODQUERY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery (  (Qt::InputMethodQuery) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void insertAction ( QAction * before, QAction * action )
*/
HB_FUNC_STATIC( QWIDGET_INSERTACTION )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
    QAction * par2 = (QAction *) _qt5xhb_itemGetPtr(2);
    obj->insertAction ( par1, par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void insertActions ( QAction * before, QList<QAction *> actions )
*/
HB_FUNC_STATIC( QWIDGET_INSERTACTIONS )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
    QList<QAction *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertActions ( par1, par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isActiveWindow () const
*/
HB_FUNC_STATIC( QWIDGET_ISACTIVEWINDOW )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isActiveWindow (  ) );
  }
}

/*
bool isAncestorOf ( const QWidget * child ) const
*/
HB_FUNC_STATIC( QWIDGET_ISANCESTOROF )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isAncestorOf ( par1 ) );
  }
}

/*
bool isEnabledTo ( const QWidget * ancestor ) const
*/
HB_FUNC_STATIC( QWIDGET_ISENABLEDTO )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isEnabledTo ( par1 ) );
  }
}

/*
bool isFullScreen () const
*/
HB_FUNC_STATIC( QWIDGET_ISFULLSCREEN )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isFullScreen (  ) );
  }
}

/*
bool isHidden () const
*/
HB_FUNC_STATIC( QWIDGET_ISHIDDEN )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isHidden (  ) );
  }
}

/*
bool isMaximized () const
*/
HB_FUNC_STATIC( QWIDGET_ISMAXIMIZED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isMaximized (  ) );
  }
}

/*
bool isMinimized () const
*/
HB_FUNC_STATIC( QWIDGET_ISMINIMIZED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isMinimized (  ) );
  }
}

/*
bool isModal () const
*/
HB_FUNC_STATIC( QWIDGET_ISMODAL )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isModal (  ) );
  }
}

/*
bool isVisible () const
*/
HB_FUNC_STATIC( QWIDGET_ISVISIBLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QWIDGET_SETVISIBLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isVisibleTo ( const QWidget * ancestor ) const
*/
HB_FUNC_STATIC( QWIDGET_ISVISIBLETO )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isVisibleTo ( par1 ) );
  }
}

/*
bool isWindow () const
*/
HB_FUNC_STATIC( QWIDGET_ISWINDOW )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isWindow (  ) );
  }
}

/*
bool isWindowModified () const
*/
HB_FUNC_STATIC( QWIDGET_ISWINDOWMODIFIED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isWindowModified (  ) );
  }
}

/*
void setWindowModified ( bool )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWMODIFIED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setWindowModified ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QLayout * layout () const
*/
HB_FUNC_STATIC( QWIDGET_LAYOUT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLayout * ptr = obj->layout (  );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUT" );
  }
}

/*
Qt::LayoutDirection layoutDirection () const
*/
HB_FUNC_STATIC( QWIDGET_LAYOUTDIRECTION )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->layoutDirection (  ) );
  }
}

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QWIDGET_SETLAYOUTDIRECTION )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLayoutDirection (  (Qt::LayoutDirection) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetLayoutDirection ()
*/
HB_FUNC_STATIC( QWIDGET_UNSETLAYOUTDIRECTION )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetLayoutDirection (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QLocale locale () const
*/
HB_FUNC_STATIC( QWIDGET_LOCALE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale (  ) );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}

/*
void setLocale ( const QLocale & locale )
*/
HB_FUNC_STATIC( QWIDGET_SETLOCALE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLocale * par1 = (QLocale *) _qt5xhb_itemGetPtr(1);
    obj->setLocale ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetLocale ()
*/
HB_FUNC_STATIC( QWIDGET_UNSETLOCALE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetLocale (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint mapFrom ( QWidget * parent, const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPFROM )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QPoint * par2 = (QPoint *) _qt5xhb_itemGetPtr(2);
    QPoint * ptr = new QPoint( obj->mapFrom ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint mapFromGlobal ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPFROMGLOBAL )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QPoint * ptr = new QPoint( obj->mapFromGlobal ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint mapFromParent ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPFROMPARENT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QPoint * ptr = new QPoint( obj->mapFromParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint mapTo ( QWidget * parent, const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPTO )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QPoint * par2 = (QPoint *) _qt5xhb_itemGetPtr(2);
    QPoint * ptr = new QPoint( obj->mapTo ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint mapToGlobal ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPTOGLOBAL )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QPoint * ptr = new QPoint( obj->mapToGlobal ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint mapToParent ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPTOPARENT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QPoint * ptr = new QPoint( obj->mapToParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QRegion mask () const
*/
HB_FUNC_STATIC( QWIDGET_MASK )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->mask (  ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
void setMask ( const QBitmap & bitmap )
*/
void QWidget_setMask1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBitmap * par1 = (QBitmap *) _qt5xhb_itemGetPtr(1);
    obj->setMask ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMask ( const QRegion & region )
*/
void QWidget_setMask2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    obj->setMask ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_MAXIMUMHEIGHT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->maximumHeight (  ) );
  }
}

/*
void setMaximumHeight ( int maxh )
*/
HB_FUNC_STATIC( QWIDGET_SETMAXIMUMHEIGHT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMaximumHeight ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int maximumWidth () const
*/
HB_FUNC_STATIC( QWIDGET_MAXIMUMWIDTH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->maximumWidth (  ) );
  }
}

/*
void setMaximumWidth ( int maxw )
*/
HB_FUNC_STATIC( QWIDGET_SETMAXIMUMWIDTH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMaximumWidth ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int minimumHeight () const
*/
HB_FUNC_STATIC( QWIDGET_MINIMUMHEIGHT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->minimumHeight (  ) );
  }
}

/*
void setMinimumHeight ( int minh )
*/
HB_FUNC_STATIC( QWIDGET_SETMINIMUMHEIGHT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMinimumHeight ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QWIDGET_MINIMUMSIZEHINT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
int minimumWidth () const
*/
HB_FUNC_STATIC( QWIDGET_MINIMUMWIDTH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->minimumWidth (  ) );
  }
}

/*
void setMinimumWidth ( int minw )
*/
HB_FUNC_STATIC( QWIDGET_SETMINIMUMWIDTH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMinimumWidth ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint pos () const
*/
HB_FUNC_STATIC( QWIDGET_POS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }

}

/*
void move ( const QPoint & )
*/
void QWidget_move1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    obj->move ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void move ( int x, int y )
*/
void QWidget_move2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->move ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_NATIVEPARENTWIDGET )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->nativeParentWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * nextInFocusChain () const
*/
HB_FUNC_STATIC( QWIDGET_NEXTINFOCUSCHAIN )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->nextInFocusChain (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QRect normalGeometry () const
*/
HB_FUNC_STATIC( QWIDGET_NORMALGEOMETRY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->normalGeometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
void overrideWindowFlags ( Qt::WindowFlags flags )
*/
HB_FUNC_STATIC( QWIDGET_OVERRIDEWINDOWFLAGS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->overrideWindowFlags (  (Qt::WindowFlags) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QPalette & palette () const
*/
HB_FUNC_STATIC( QWIDGET_PALETTE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QPalette * ptr = &obj->palette (  );
    _qt5xhb_createReturnClass ( ptr, "QPALETTE" );
  }
}

/*
void setPalette ( const QPalette & )
*/
HB_FUNC_STATIC( QWIDGET_SETPALETTE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPalette * par1 = (QPalette *) _qt5xhb_itemGetPtr(1);
    obj->setPalette ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * parentWidget () const
*/
HB_FUNC_STATIC( QWIDGET_PARENTWIDGET )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->parentWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * previousInFocusChain () const
*/
HB_FUNC_STATIC( QWIDGET_PREVIOUSINFOCUSCHAIN )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->previousInFocusChain (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QRect rect () const
*/
HB_FUNC_STATIC( QWIDGET_RECT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->rect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
void releaseKeyboard ()
*/
HB_FUNC_STATIC( QWIDGET_RELEASEKEYBOARD )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->releaseKeyboard (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void releaseMouse ()
*/
HB_FUNC_STATIC( QWIDGET_RELEASEMOUSE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->releaseMouse (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void releaseShortcut ( int id )
*/
HB_FUNC_STATIC( QWIDGET_RELEASESHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->releaseShortcut ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void removeAction ( QAction * action )
*/
HB_FUNC_STATIC( QWIDGET_REMOVEACTION )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
    obj->removeAction ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void render (QPaintDevice *target, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
*/
HB_FUNC_STATIC( QWIDGET_RENDER1 )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPaintDevice * par1 = (QPaintDevice *) _qt5xhb_itemGetPtr(1);
    QPoint par2 = ISNIL(2)? QPoint() : *(QPoint *) _qt5xhb_itemGetPtr(2);
    QRegion par3 = ISNIL(3)? QRegion() : *(QRegion *) _qt5xhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) QWidget::DrawWindowBackground | QWidget::DrawChildren : hb_parni(4);
    obj->render ( par1, par2, par3,  (QWidget::RenderFlags) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render (QPainter *painter, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
*/
HB_FUNC_STATIC( QWIDGET_RENDER2 )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
    QPoint par2 = ISNIL(2)? QPoint() : *(QPoint *) _qt5xhb_itemGetPtr(2);
    QRegion par3 = ISNIL(3)? QRegion() : *(QRegion *) _qt5xhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) QWidget::DrawWindowBackground | QWidget::DrawChildren : hb_parni(4);
    obj->render ( par1, par2, par3,  (QWidget::RenderFlags) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void render (QPaintDevice *target, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
//[2]void render (QPainter *painter, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

HB_FUNC_STATIC( QWIDGET_RENDER ) // TODO: identificar QPAINTDEVICE e QPAINTER
{
  if( ISBETWEEN(1,4) && ISOBJECT(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QWIDGET_RENDER1 );
  }
  else if( ISBETWEEN(1,4) && ISOBJECT(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
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
void QWidget_repaint1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->repaint ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void repaint ( const QRect & rect )
*/
void QWidget_repaint2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->repaint ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void repaint ( const QRegion & rgn )
*/
void QWidget_repaint3 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    obj->repaint ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void repaint ()
*/
void QWidget_repaint4 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->repaint (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
void QWidget_resize1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->resize ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize ( int w, int h )
*/
void QWidget_resize2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resize ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_RESTOREGEOMETRY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->restoreGeometry ( *par1 ) );
  }
}

/*
QByteArray saveGeometry () const
*/
HB_FUNC_STATIC( QWIDGET_SAVEGEOMETRY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveGeometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void scroll ( int dx, int dy )
*/
void QWidget_scroll1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scroll ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scroll ( int dx, int dy, const QRect & r )
*/
void QWidget_scroll2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * par3 = (QRect *) _qt5xhb_itemGetPtr(3);
    obj->scroll ( (int) hb_parni(1), (int) hb_parni(2), *par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_SETATTRIBUTE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAttribute (  (Qt::WidgetAttribute) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsMargins ( int left, int top, int right, int bottom )
*/
void QWidget_setContentsMargins1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setContentsMargins ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsMargins ( const QMargins & margins )
*/
void QWidget_setContentsMargins2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMargins * par1 = (QMargins *) _qt5xhb_itemGetPtr(1);
    obj->setContentsMargins ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_SETEDITFOCUS )
{
#ifdef QT_KEYPAD_NAVIGATION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setEditFocus ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setFixedHeight ( int h )
*/
HB_FUNC_STATIC( QWIDGET_SETFIXEDHEIGHT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFixedHeight ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFixedSize ( const QSize & s )
*/
void QWidget_setFixedSize1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setFixedSize ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFixedSize ( int w, int h )
*/
void QWidget_setFixedSize2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFixedSize ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_SETFIXEDWIDTH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFixedWidth ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocus ( Qt::FocusReason reason )
*/
void QWidget_setFocus1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFocus (  (Qt::FocusReason) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocus ()
*/
void QWidget_setFocus2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFocus (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_SETFOCUSPROXY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setFocusProxy ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QRect & geometry () const
*/
HB_FUNC_STATIC( QWIDGET_GEOMETRY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QRect * ptr = &obj->geometry (  );
    _qt5xhb_createReturnClass ( ptr, "QRECT" );
  }
}

/*
void setGeometry ( const QRect & )
*/
void QWidget_setGeometry1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGeometry ( int x, int y, int w, int h )
*/
void QWidget_setGeometry2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setGeometry ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_SETLAYOUT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLayout * par1 = (QLayout *) _qt5xhb_itemGetPtr(1);
    obj->setLayout ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize maximumSize () const
*/
HB_FUNC_STATIC( QWIDGET_MAXIMUMSIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setMaximumSize ( const QSize & )
*/
void QWidget_setMaximumSize1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setMaximumSize ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximumSize ( int maxw, int maxh )
*/
void QWidget_setMaximumSize2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMaximumSize ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_MINIMUMSIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setMinimumSize ( const QSize & )
*/
void QWidget_setMinimumSize1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setMinimumSize ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimumSize ( int minw, int minh )
*/
void QWidget_setMinimumSize2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMinimumSize ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
void QWidget_setParent1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setParent ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setParent ( QWidget * parent, Qt::WindowFlags f )
*/
void QWidget_setParent2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->setParent ( par1,  (Qt::WindowFlags) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_SETSHORTCUTAUTOREPEAT )
{
#ifndef QT_NO_SHORTCUT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setShortcutAutoRepeat ( (int) hb_parni(1), (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setShortcutEnabled ( int id, bool enable = true )
*/
HB_FUNC_STATIC( QWIDGET_SETSHORTCUTENABLED )
{
#ifndef QT_NO_SHORTCUT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setShortcutEnabled ( (int) hb_parni(1), (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QSize sizeIncrement () const
*/
HB_FUNC_STATIC( QWIDGET_SIZEINCREMENT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeIncrement (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setSizeIncrement ( const QSize & )
*/
void QWidget_setSizeIncrement1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setSizeIncrement ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeIncrement ( int w, int h )
*/
void QWidget_setSizeIncrement2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSizeIncrement ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_SIZEPOLICY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSizePolicy * ptr = new QSizePolicy( obj->sizePolicy (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEPOLICY", true );
  }
}

/*
void setSizePolicy ( QSizePolicy )
*/
void QWidget_setSizePolicy1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSizePolicy * par1 = (QSizePolicy *) _qt5xhb_itemGetPtr(1);
    obj->setSizePolicy ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
*/
void QWidget_setSizePolicy2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setSizePolicy (  (QSizePolicy::Policy) par1,  (QSizePolicy::Policy) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_TOOLTIPDURATION )
{
#ifndef QT_NO_TOOLTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->toolTipDuration (  ) );
  }
#endif
}

/*
void setToolTipDuration(int msec)
*/
HB_FUNC_STATIC( QWIDGET_SETTOOLTIPDURATION )
{
#ifndef QT_NO_TOOLTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setToolTipDuration ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Qt::WindowModality windowModality () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWMODALITY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->windowModality (  ) );
  }
}

/*
void setWindowModality ( Qt::WindowModality windowModality )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWMODALITY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWindowModality (  (Qt::WindowModality) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowRole ( const QString & role )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWROLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setWindowRole ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowState ( Qt::WindowStates windowState )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWSTATE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWindowState (  (Qt::WindowStates) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QWIDGET_SIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QWIDGET_SIZEHINT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void stackUnder ( QWidget * w )
*/
HB_FUNC_STATIC( QWIDGET_STACKUNDER )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->stackUnder ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString statusTip () const
*/
HB_FUNC_STATIC( QWIDGET_STATUSTIP )
{
#ifndef QT_NO_STATUSTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->statusTip (  ).toLatin1().data() );
  }
#endif
}

/*
void setStatusTip ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETSTATUSTIP )
{
#ifndef QT_NO_STATUSTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setStatusTip ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QStyle * style () const
*/
HB_FUNC_STATIC( QWIDGET_STYLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStyle * ptr = obj->style (  );
    _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
  }
}

/*
void setStyle ( QStyle * style )
*/
HB_FUNC_STATIC( QWIDGET_SETSTYLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStyle * par1 = (QStyle *) _qt5xhb_itemGetPtr(1);
    obj->setStyle ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString styleSheet () const
*/
HB_FUNC_STATIC( QWIDGET_STYLESHEET )
{
#ifndef QT_NO_STYLE_STYLESHEET
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->styleSheet (  ).toLatin1().data() );
  }
#endif
}

/*
void setStyleSheet ( const QString & styleSheet )
*/
HB_FUNC_STATIC( QWIDGET_SETSTYLESHEET )
{
#ifndef QT_NO_STYLE_STYLESHEET
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setStyleSheet ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool testAttribute ( Qt::WidgetAttribute attribute ) const
*/
HB_FUNC_STATIC( QWIDGET_TESTATTRIBUTE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testAttribute (  (Qt::WidgetAttribute) par1 ) );
  }
}

/*
QString toolTip () const
*/
HB_FUNC_STATIC( QWIDGET_TOOLTIP )
{
#ifndef QT_NO_TOOLTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->toolTip (  ).toLatin1().data() );
  }
#endif
}

/*
void setToolTip ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETTOOLTIP )
{
#ifndef QT_NO_TOOLTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setToolTip ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool underMouse () const
*/
HB_FUNC_STATIC( QWIDGET_UNDERMOUSE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->underMouse (  ) );
  }
}

/*
void ungrabGesture ( Qt::GestureType gesture )
*/
HB_FUNC_STATIC( QWIDGET_UNGRABGESTURE )
{
#ifndef QT_NO_GESTURES
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->ungrabGesture (  (Qt::GestureType) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void update ( int x, int y, int w, int h )
*/
void QWidget_update1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->update ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( const QRect & rect )
*/
void QWidget_update2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->update ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( const QRegion & rgn )
*/
void QWidget_update3 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    obj->update ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ()
*/
void QWidget_update4 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->update (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_UPDATEGEOMETRY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->updateGeometry (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool updatesEnabled () const
*/
HB_FUNC_STATIC( QWIDGET_UPDATESENABLED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->updatesEnabled (  ) );
  }
}

/*
void setUpdatesEnabled ( bool enable )
*/
HB_FUNC_STATIC( QWIDGET_SETUPDATESENABLED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setUpdatesEnabled ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegion visibleRegion () const
*/
HB_FUNC_STATIC( QWIDGET_VISIBLEREGION )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->visibleRegion (  ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
QString whatsThis () const
*/
HB_FUNC_STATIC( QWIDGET_WHATSTHIS )
{
#ifndef QT_NO_WHATSTHIS
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->whatsThis (  ).toLatin1().data() );
  }
#endif
}

/*
void setWhatsThis ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETWHATSTHIS )
{
#ifndef QT_NO_WHATSTHIS
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setWhatsThis ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int width () const
*/
HB_FUNC_STATIC( QWIDGET_WIDTH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}

/*
WId winId () const
*/
HB_FUNC_STATIC( QWIDGET_WINID )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    WId r = obj->winId (  );
    hb_retptr( (void*) r );
  }
}

/*
WId internalWinId() const
*/
HB_FUNC_STATIC( QWIDGET_INTERNALWINID )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    WId r = obj->internalWinId (  );
    hb_retptr( (void*) r );
  }
}

/*
QWidget * window () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOW )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->window (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QString windowFilePath () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWFILEPATH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->windowFilePath (  ).toLatin1().data() );
  }
}

/*
void setWindowFilePath ( const QString & filePath )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWFILEPATH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setWindowFilePath ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::WindowFlags windowFlags () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWFLAGS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->windowFlags (  ) );
  }
}

/*
void setWindowFlags ( Qt::WindowFlags type )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWFLAGS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWindowFlags (  (Qt::WindowFlags) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon windowIcon () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWICON )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->windowIcon (  ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
void setWindowIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWICON )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setWindowIcon ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString windowIconText () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWICONTEXT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->windowIconText (  ).toLatin1().data() );
  }
}

/*
void setWindowIconText ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWICONTEXT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setWindowIconText ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal windowOpacity () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWOPACITY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->windowOpacity (  ) );
  }
}

/*
void setWindowOpacity ( qreal level )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWOPACITY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWindowOpacity ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString windowRole () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWROLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->windowRole (  ).toLatin1().data() );
  }
}

/*
Qt::WindowStates windowState () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWSTATE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->windowState (  ) );
  }
}

/*
QString windowTitle () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWTITLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->windowTitle (  ).toLatin1().data() );
  }
}

/*
void setWindowTitle ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWTITLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setWindowTitle ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::WindowType windowType () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWTYPE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->windowType (  ) );
  }
}

/*
int x () const
*/
HB_FUNC_STATIC( QWIDGET_X )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->x (  ) );
  }
}

/*
int y () const
*/
HB_FUNC_STATIC( QWIDGET_Y )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->y (  ) );
  }
}

/*
QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QWIDGET_PAINTENGINE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine (  );
    _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}

/*
bool close ()
*/
HB_FUNC_STATIC( QWIDGET_CLOSE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->close (  ) );
  }
}

/*
void hide ()
*/
HB_FUNC_STATIC( QWIDGET_HIDE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->hide (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void lower ()
*/
HB_FUNC_STATIC( QWIDGET_LOWER )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->lower (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void raise ()
*/
HB_FUNC_STATIC( QWIDGET_RAISE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->raise (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDisabled ( bool disable )
*/
HB_FUNC_STATIC( QWIDGET_SETDISABLED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDisabled ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QWIDGET_ISENABLED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}

/*
void setEnabled ( bool )
*/
HB_FUNC_STATIC( QWIDGET_SETENABLED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setEnabled ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHidden ( bool hidden )
*/
HB_FUNC_STATIC( QWIDGET_SETHIDDEN )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setHidden ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void show ()
*/
HB_FUNC_STATIC( QWIDGET_SHOW )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->show (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showFullScreen ()
*/
HB_FUNC_STATIC( QWIDGET_SHOWFULLSCREEN )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->showFullScreen (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMaximized ()
*/
HB_FUNC_STATIC( QWIDGET_SHOWMAXIMIZED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->showMaximized (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMinimized ()
*/
HB_FUNC_STATIC( QWIDGET_SHOWMINIMIZED )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->showMinimized (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showNormal ()
*/
HB_FUNC_STATIC( QWIDGET_SHOWNORMAL )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->showNormal (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int devType() const
*/
HB_FUNC_STATIC( QWIDGET_DEVTYPE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->devType (  ) );
  }
}

/*
bool isTopLevel() const
*/
HB_FUNC_STATIC( QWIDGET_ISTOPLEVEL )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isTopLevel (  ) );
  }
}

/*
bool isEnabledToTLW() const
*/
HB_FUNC_STATIC( QWIDGET_ISENABLEDTOTLW )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEnabledToTLW (  ) );
  }
}

/*
QWidget * topLevelWidget () const
*/
HB_FUNC_STATIC( QWIDGET_TOPLEVELWIDGET )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->topLevelWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
Q_INVOKABLE QPixmap grab (const QRect &rectangle = QRect(QPoint(0, 0), QSize(-1, -1)))
*/
HB_FUNC_STATIC( QWIDGET_GRAB )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect par1 = ISNIL(1)? QRect(QPoint(0, 0), QSize(-1, -1)) : *(QRect *) _qt5xhb_itemGetPtr(1);
    QPixmap * ptr = new QPixmap( obj->grab ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
bool isRightToLeft() const
*/
HB_FUNC_STATIC( QWIDGET_ISRIGHTTOLEFT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isRightToLeft (  ) );
  }
}

/*
bool isLeftToRight() const
*/
HB_FUNC_STATIC( QWIDGET_ISLEFTTORIGHT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isLeftToRight (  ) );
  }
}

/*
void overrideWindowState (Qt::WindowStates state)
*/
HB_FUNC_STATIC( QWIDGET_OVERRIDEWINDOWSTATE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->overrideWindowState (  (Qt::WindowStates) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBackingStore * backingStore () const
*/
HB_FUNC_STATIC( QWIDGET_BACKINGSTORE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBackingStore * ptr = obj->backingStore (  );
    _qt5xhb_createReturnClass ( ptr, "QBACKINGSTORE" );
  }
}

/*
QWindow * windowHandle () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWHANDLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWindow * ptr = obj->windowHandle (  );
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}

/*
virtual bool hasHeightForWidth() const
*/
HB_FUNC_STATIC( QWIDGET_HASHEIGHTFORWIDTH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasHeightForWidth (  ) );
  }
}

//=============================================================================
// QPaintDevice methods - BEGIN
//=============================================================================

/*
int colorCount () const
*/
HB_FUNC_STATIC( QWIDGET_COLORCOUNT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->colorCount (  ) );
  }
}

/*
int depth () const
*/
HB_FUNC_STATIC( QWIDGET_DEPTH )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->depth (  ) );
  }
}

/*
int heightMM () const
*/
HB_FUNC_STATIC( QWIDGET_HEIGHTMM )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->heightMM (  ) );
  }
}

/*
int logicalDpiX () const
*/
HB_FUNC_STATIC( QWIDGET_LOGICALDPIX )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->logicalDpiX (  ) );
  }
}

/*
int logicalDpiY () const
*/
HB_FUNC_STATIC( QWIDGET_LOGICALDPIY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->logicalDpiY (  ) );
  }
}

/*
bool paintingActive () const
*/
HB_FUNC_STATIC( QWIDGET_PAINTINGACTIVE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->paintingActive (  ) );
  }
}

/*
int physicalDpiX () const
*/
HB_FUNC_STATIC( QWIDGET_PHYSICALDPIX )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->physicalDpiX (  ) );
  }
}

/*
int physicalDpiY () const
*/
HB_FUNC_STATIC( QWIDGET_PHYSICALDPIY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->physicalDpiY (  ) );
  }
}

/*
int widthMM () const
*/
HB_FUNC_STATIC( QWIDGET_WIDTHMM )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->widthMM (  ) );
  }
}

//=============================================================================
// QPaintDevice methods - END
//=============================================================================

/*
static QWidget * find ( WId id )
*/
HB_FUNC_STATIC( QWIDGET_FIND )
{
  WId par1 = (WId) hb_parptr(1);
  QWidget * ptr = QWidget::find ( par1 );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * keyboardGrabber ()
*/
HB_FUNC_STATIC( QWIDGET_KEYBOARDGRABBER )
{
  QWidget * ptr = QWidget::keyboardGrabber (  );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * mouseGrabber ()
*/
HB_FUNC_STATIC( QWIDGET_MOUSEGRABBER )
{
  QWidget * ptr = QWidget::mouseGrabber (  );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static void setTabOrder ( QWidget * first, QWidget * second )
*/
HB_FUNC_STATIC( QWIDGET_SETTABORDER )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
  QWidget::setTabOrder ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QWidget * createWindowContainer (QWindow *window, QWidget *parent=0, Qt::WindowFlags flags=0)
*/
HB_FUNC_STATIC( QWIDGET_CREATEWINDOWCONTAINER )
{
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QWidget * ptr = QWidget::createWindowContainer ( par1, par2,  (Qt::WindowFlags) par3 );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

#pragma ENDDUMP

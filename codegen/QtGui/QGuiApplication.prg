$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QCLIPBOARD
REQUEST QOBJECT
REQUEST QFONT
REQUEST QINPUTMETHOD
REQUEST QCURSOR
REQUEST QPALETTE
REQUEST QPLATFORMNATIVEINTERFACE
REQUEST QSCREEN
REQUEST QSTYLEHINTS
#endif

CLASS QGuiApplication INHERIT QCoreApplication

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD notify
   METHOD allWindows
   METHOD applicationDisplayName
   METHOD changeOverrideCursor
   METHOD clipboard
   METHOD desktopSettingsAware
   METHOD exec
   METHOD focusObject
   METHOD focusWindow
   METHOD font
   METHOD inputMethod
   METHOD isLeftToRight
   METHOD isRightToLeft
   METHOD keyboardModifiers
   METHOD layoutDirection
   METHOD modalWindow
   METHOD mouseButtons
   METHOD overrideCursor
   METHOD palette
   METHOD platformName
   METHOD platformNativeInterface
   METHOD primaryScreen
   METHOD queryKeyboardModifiers
   METHOD quitOnLastWindowClosed
   METHOD restoreOverrideCursor
   METHOD screens
   METHOD setApplicationDisplayName
   METHOD setDesktopSettingsAware
   METHOD setFont
   METHOD setLayoutDirection
   METHOD setOverrideCursor
   METHOD setPalette
   METHOD setQuitOnLastWindowClosed
   METHOD styleHints
   METHOD topLevelAt
   METHOD topLevelWindows

   METHOD onFocusObjectChanged
   METHOD onFocusWindowChanged
   METHOD onFontDatabaseChanged
   METHOD onLastWindowClosed
   METHOD onScreenAdded

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QFont>
#include <QPalette>

/*
QGuiApplication(int & argc, char ** argv)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QGuiApplication * o = NULL;
  o = new QGuiApplication( argc, argv );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
virtual bool notify(QObject * object, QEvent * event)
*/
$method=|bool|notify|QObject *,QEvent *

/*
static QWindowList allWindows()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ALLWINDOWS )
{
  QWindowList list = QGuiApplication::allWindows ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWINDOW" );
  #else
  pDynSym = hb_dynsymFindName( "QWINDOW" );
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
      hb_itemPutPtr( pItem, (QWindow *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QString applicationDisplayName()
*/
$staticMethod=|QString|applicationDisplayName|

/*
static void changeOverrideCursor(const QCursor & cursor)
*/
$staticMethod=|void|changeOverrideCursor|const QCursor &

/*
static QClipboard * clipboard()
*/
$staticMethod=|QClipboard *|clipboard|

/*
static bool desktopSettingsAware()
*/
$staticMethod=|bool|desktopSettingsAware|

/*
static int exec()
*/
$staticMethod=|int|exec|

/*
static QObject * focusObject()
*/
$staticMethod=|QObject *|focusObject|

/*
static QWindow * focusWindow()
*/
$staticMethod=|QWindow *|focusWindow|

/*
static QFont font()
*/
$staticMethod=|QFont|font|

/*
static QInputMethod * inputMethod()
*/
$staticMethod=|QInputMethod *|inputMethod|

/*
static bool isLeftToRight()
*/
$staticMethod=|bool|isLeftToRight|

/*
static bool isRightToLeft()
*/
$staticMethod=|bool|isRightToLeft|

/*
static Qt::KeyboardModifiers keyboardModifiers()
*/
$staticMethod=|Qt::KeyboardModifiers|keyboardModifiers|

/*
static Qt::LayoutDirection layoutDirection()
*/
$staticMethod=|Qt::LayoutDirection|layoutDirection|

/*
static QWindow * modalWindow()
*/
$staticMethod=|QWindow *|modalWindow|

/*
static Qt::MouseButtons mouseButtons()
*/
$staticMethod=|Qt::MouseButtons|mouseButtons|

/*
static QCursor * overrideCursor()
*/
$staticMethod=|QCursor *|overrideCursor|

/*
static QPalette palette()
*/
$staticMethod=|QPalette|palette|

/*
static QString platformName()
*/
$staticMethod=|QString|platformName|

/*
static QPlatformNativeInterface * platformNativeInterface()
*/
$staticMethod=|QPlatformNativeInterface *|platformNativeInterface|

/*
static QScreen * primaryScreen()
*/
$staticMethod=|QScreen *|primaryScreen|

/*
static Qt::KeyboardModifiers queryKeyboardModifiers()
*/
$staticMethod=|Qt::KeyboardModifiers|queryKeyboardModifiers|

/*
static bool quitOnLastWindowClosed()
*/
$staticMethod=|bool|quitOnLastWindowClosed|

/*
static void restoreOverrideCursor()
*/
$staticMethod=|void|restoreOverrideCursor|

/*
static QList<QScreen *> screens()
*/
$staticMethod=|QList<QScreen *>|screens|

/*
static void setApplicationDisplayName(const QString & name)
*/
$staticMethod=|void|setApplicationDisplayName|const QString &

/*
static void setDesktopSettingsAware(bool on)
*/
$staticMethod=|void|setDesktopSettingsAware|bool

/*
static void setFont(const QFont & font)
*/
$staticMethod=|void|setFont|const QFont &

/*
static void setLayoutDirection(Qt::LayoutDirection direction)
*/
$staticMethod=|void|setLayoutDirection|Qt::LayoutDirection

/*
static void setOverrideCursor(const QCursor & cursor)
*/
$staticMethod=|void|setOverrideCursor|const QCursor &

/*
static void setPalette(const QPalette & pal)
*/
$staticMethod=|void|setPalette|const QPalette &

/*
static void setQuitOnLastWindowClosed(bool quit)
*/
$staticMethod=|void|setQuitOnLastWindowClosed|bool

/*
static QStyleHints * styleHints()
*/
$staticMethod=|QStyleHints *|styleHints|

/*
static QWindow * topLevelAt(const QPoint & pos)
*/
$staticMethod=|QWindow *|topLevelAt|const QPoint &

/*
static QWindowList topLevelWindows()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_TOPLEVELWINDOWS )
{
  QWindowList list = QGuiApplication::topLevelWindows ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWINDOW" );
  #else
  pDynSym = hb_dynsymFindName( "QWINDOW" );
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
      hb_itemPutPtr( pItem, (QWindow *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}

#pragma ENDDUMP

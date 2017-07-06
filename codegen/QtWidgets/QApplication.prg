$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QCLIPBOARD
REQUEST QDESKTOPWIDGET
REQUEST QFONT
REQUEST QFONTMETRICS
REQUEST QSIZE
REQUEST QCURSOR
REQUEST QPALETTE
REQUEST QSTYLE
REQUEST QICON
#endif

CLASS QApplication INHERIT QGuiApplication

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isSessionRestored
   METHOD sessionId
   METHOD sessionKey
   METHOD styleSheet
   METHOD notify
   METHOD aboutQt
   METHOD closeAllWindows
   METHOD setStyleSheet
   METHOD activeModalWidget
   METHOD activePopupWidget
   METHOD activeWindow
   METHOD alert
   METHOD allWidgets
   METHOD beep
   METHOD changeOverrideCursor
   METHOD clipboard
   METHOD colorSpec
   METHOD cursorFlashTime
   METHOD desktop
   METHOD desktopSettingsAware
   METHOD doubleClickInterval
   METHOD exec
   METHOD focusWidget
   METHOD font
   METHOD fontMetrics
   METHOD globalStrut
   METHOD isEffectEnabled
   METHOD isLeftToRight
   METHOD isRightToLeft
   METHOD keyboardInputInterval
   METHOD keyboardModifiers
   METHOD layoutDirection
   METHOD mouseButtons
   METHOD overrideCursor
   METHOD palette
   METHOD queryKeyboardModifiers
   METHOD quitOnLastWindowClosed
   METHOD restoreOverrideCursor
   METHOD setActiveWindow
   METHOD setColorSpec
   METHOD setCursorFlashTime
   METHOD setDesktopSettingsAware
   METHOD setDoubleClickInterval
   METHOD setEffectEnabled
   METHOD setFont
   METHOD setGlobalStrut
   METHOD setKeyboardInputInterval
   METHOD setLayoutDirection
   METHOD setOverrideCursor
   METHOD setPalette
   METHOD setQuitOnLastWindowClosed
   METHOD setStartDragDistance
   METHOD setStartDragTime
   METHOD setStyle
   METHOD setWheelScrollLines
   METHOD setWindowIcon
   METHOD startDragDistance
   METHOD startDragTime
   METHOD style
   METHOD topLevelAt
   METHOD topLevelWidgets
   METHOD wheelScrollLines
   METHOD widgetAt
   METHOD windowIcon

   METHOD onAboutToReleaseGpuResources
   METHOD onAboutToUseGpuResources
   METHOD onCommitDataRequest
   METHOD onFocusChanged
   METHOD onFontDatabaseChanged
   METHOD onLastWindowClosed
   METHOD onSaveStateRequest

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QFont>
#include <QLocale>
#include <QIcon>
#include <QSessionManager>
#include <QFontMetrics>
#include <QPalette>

//QApplication ( int & argc, char ** argv )
//QApplication ( int & argc, char ** argv, bool GUIenabled )
//QApplication ( int & argc, char ** argv, Type type )
//QApplication ( Display * display, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
//QApplication ( Display * display, int & argc, char ** argv, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
//QApplication ( QApplication::QS60MainApplicationFactory factory, int & argc, char ** argv )

/*
QApplication ( int & argc, char ** argv )
*/
HB_FUNC_STATIC( QAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QApplication * o = NULL;
  o = new QApplication( argc, argv );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool isSessionRestored () const
*/
$method=|bool|isSessionRestored|

/*
QString sessionId () const
*/
$method=|QString|sessionId|

/*
QString sessionKey () const
*/
$method=|QString|sessionKey|

/*
QString styleSheet () const
*/
$method=|QString|styleSheet|

/*
virtual bool notify ( QObject * receiver, QEvent * e )
*/
$method=|bool|notify|QObject *,QEvent *

/*
void aboutQt ()
*/
$method=|void|aboutQt|

/*
void closeAllWindows ()
*/
$method=|void|closeAllWindows|

/*
void setStyleSheet ( const QString & sheet )
*/
$method=|void|setStyleSheet|const QString &

/*
static QWidget * activeModalWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEMODALWIDGET )
{
  QWidget * ptr = QApplication::activeModalWidget ();
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * activePopupWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEPOPUPWIDGET )
{
  QWidget * ptr = QApplication::activePopupWidget ();
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * activeWindow ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEWINDOW )
{
  QWidget * ptr = QApplication::activeWindow ();
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static void alert ( QWidget * widget, int msec = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_ALERT )
{
  QApplication::alert ( PQWIDGET(1), OPINT(2,0) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QWidgetList allWidgets ()
*/
HB_FUNC_STATIC( QAPPLICATION_ALLWIDGETS )
{
  QWidgetList list = QApplication::allWidgets ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWIDGET" );
  #else
  pDynSym = hb_dynsymFindName( "QWIDGET" );
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
      hb_itemPutPtr( pItem, (QWidget *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static void beep ()
*/
$staticMethod=|void|beep|

/*
static void changeOverrideCursor ( const QCursor & cursor )
*/
$staticMethod=|void|changeOverrideCursor|const QCursor &

/*
static QClipboard * clipboard ()
*/
HB_FUNC_STATIC( QAPPLICATION_CLIPBOARD )
{
  QClipboard * ptr = QApplication::clipboard ();
  _qt5xhb_createReturnClass ( ptr, "QCLIPBOARD" );
}

/*
static int colorSpec ()
*/
$staticMethod=|int|colorSpec|

/*
static int cursorFlashTime ()
*/
$staticMethod=|int|cursorFlashTime|

/*
static QDesktopWidget * desktop ()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOP )
{
  QDesktopWidget * ptr = QApplication::desktop ();
  _qt5xhb_createReturnClass ( ptr, "QDESKTOPWIDGET" );
}

/*
static bool desktopSettingsAware ()
*/
$staticMethod=|bool|desktopSettingsAware|

/*
static int doubleClickInterval ()
*/
$staticMethod=|int|doubleClickInterval|

/*
static int exec ()
*/
$staticMethod=|int|exec|

/*
static QWidget * focusWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_FOCUSWIDGET )
{
  QWidget * ptr = QApplication::focusWidget ();
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QFont font ()
*/
void QApplication_font1 ()
{
  QFont * ptr = new QFont( QApplication::font () );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
}

/*
static QFont font ( const QWidget * widget )
*/
void QApplication_font2 ()
{
  QFont * ptr = new QFont( QApplication::font ( PQWIDGET(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
}

/*
static QFont font ( const char * className )
*/
void QApplication_font3 ()
{
  QFont * ptr = new QFont( QApplication::font ( PCONSTCHAR(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
}

//[1]QFont font ()
//[2]QFont font ( const QWidget * widget )
//[3]QFont font ( const char * className )

HB_FUNC_STATIC( QAPPLICATION_FONT )
{
  if( ISNUMPAR(0) )
  {
    QApplication_font1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QApplication_font2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_font3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QFontMetrics fontMetrics ()
*/
HB_FUNC_STATIC( QAPPLICATION_FONTMETRICS )
{
  QFontMetrics * ptr = new QFontMetrics( QApplication::fontMetrics () );
  _qt5xhb_createReturnClass ( ptr, "QFONTMETRICS", true );
}

/*
static QSize globalStrut ()
*/
HB_FUNC_STATIC( QAPPLICATION_GLOBALSTRUT )
{
  QSize * ptr = new QSize( QApplication::globalStrut () );
  _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
}

/*
static bool isEffectEnabled ( Qt::UIEffect effect )
*/
HB_FUNC_STATIC( QAPPLICATION_ISEFFECTENABLED )
{
  RBOOL( QApplication::isEffectEnabled ( (Qt::UIEffect) hb_parni(1) ) );
}

/*
static bool isLeftToRight ()
*/
$staticMethod=|bool|isLeftToRight|

/*
static bool isRightToLeft ()
*/
$staticMethod=|bool|isRightToLeft|

/*
static int keyboardInputInterval ()
*/
$staticMethod=|int|keyboardInputInterval|

/*
static Qt::KeyboardModifiers keyboardModifiers ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDMODIFIERS )
{
  hb_retni( QApplication::keyboardModifiers () );
}

/*
static Qt::LayoutDirection layoutDirection ()
*/
HB_FUNC_STATIC( QAPPLICATION_LAYOUTDIRECTION )
{
  hb_retni( QApplication::layoutDirection () );
}

/*
static Qt::MouseButtons mouseButtons ()
*/
HB_FUNC_STATIC( QAPPLICATION_MOUSEBUTTONS )
{
  hb_retni( QApplication::mouseButtons () );
}

/*
static QCursor * overrideCursor ()
*/
HB_FUNC_STATIC( QAPPLICATION_OVERRIDECURSOR )
{
  QCursor * ptr = QApplication::overrideCursor ();
  _qt5xhb_createReturnClass ( ptr, "QCURSOR" );
}

/*
static QPalette palette ()
*/
void QApplication_palette1 ()
{
  QPalette * ptr = new QPalette( QApplication::palette () );
  _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
}

/*
static QPalette palette ( const QWidget * widget )
*/
void QApplication_palette2 ()
{
  QPalette * ptr = new QPalette( QApplication::palette ( PQWIDGET(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
}

/*
static QPalette palette ( const char * className )
*/
void QApplication_palette3 ()
{
  QPalette * ptr = new QPalette( QApplication::palette ( PCONSTCHAR(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
}

//[1]QPalette palette ()
//[2]QPalette palette ( const QWidget * widget )
//[3]QPalette palette ( const char * className )

HB_FUNC_STATIC( QAPPLICATION_PALETTE )
{
  if( ISNUMPAR(0) )
  {
    QApplication_palette1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QApplication_palette2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_palette3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static Qt::KeyboardModifiers queryKeyboardModifiers ()
*/
HB_FUNC_STATIC( QAPPLICATION_QUERYKEYBOARDMODIFIERS )
{
  hb_retni( QApplication::queryKeyboardModifiers () );
}

/*
static bool quitOnLastWindowClosed ()
*/
$staticMethod=|bool|quitOnLastWindowClosed|

/*
static void restoreOverrideCursor ()
*/
$staticMethod=|void|restoreOverrideCursor|

/*
static void setActiveWindow ( QWidget * active )
*/
$staticMethod=|void|setActiveWindow|QWidget *

/*
static void setColorSpec ( int spec )
*/
$staticMethod=|void|setColorSpec|int

/*
static void setCursorFlashTime ( int )
*/
$staticMethod=|void|setCursorFlashTime|int

/*
static void setDesktopSettingsAware ( bool on )
*/
$staticMethod=|void|setDesktopSettingsAware|bool

/*
static void setDoubleClickInterval ( int )
*/
$staticMethod=|void|setDoubleClickInterval|int

/*
static void setEffectEnabled ( Qt::UIEffect effect, bool enable = true )
*/
HB_FUNC_STATIC( QAPPLICATION_SETEFFECTENABLED )
{
  QApplication::setEffectEnabled ( (Qt::UIEffect) hb_parni(1), OPBOOL(2,true) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setFont ( const QFont & font, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETFONT )
{
  QApplication::setFont ( *PQFONT(1), OPCONSTCHAR(2,0) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setGlobalStrut ( const QSize & )
*/
HB_FUNC_STATIC( QAPPLICATION_SETGLOBALSTRUT )
{
  QApplication::setGlobalStrut ( *PQSIZE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setKeyboardInputInterval ( int )
*/
$staticMethod=|void|setKeyboardInputInterval|int

/*
static void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QAPPLICATION_SETLAYOUTDIRECTION )
{
  QApplication::setLayoutDirection ( (Qt::LayoutDirection) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setOverrideCursor ( const QCursor & cursor )
*/
$staticMethod=|void|setOverrideCursor|const QCursor &

/*
static void setPalette ( const QPalette & palette, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETPALETTE )
{
  QApplication::setPalette ( *PQPALETTE(1), OPCONSTCHAR(2,0) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setQuitOnLastWindowClosed ( bool quit )
*/
$staticMethod=|void|setQuitOnLastWindowClosed|bool

/*
static void setStartDragDistance ( int l )
*/
$staticMethod=|void|setStartDragDistance|int

/*
static void setStartDragTime ( int ms )
*/
$staticMethod=|void|setStartDragTime|int

/*
static void setStyle ( QStyle * style )
*/
void QApplication_setStyle1 ()
{
  QApplication::setStyle ( PQSTYLE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QStyle * setStyle ( const QString & style )
*/
void QApplication_setStyle2 ()
{
  QStyle * ptr = QApplication::setStyle ( PQSTRING(1) );
  _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
}

//[1]void setStyle ( QStyle * style )
//[2]QStyle * setStyle ( const QString & style )

HB_FUNC_STATIC( QAPPLICATION_SETSTYLE )
{
  if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QApplication_setStyle1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_setStyle2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setWheelScrollLines ( int )
*/
$staticMethod=|void|setWheelScrollLines|int

/*
static void setWindowIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QAPPLICATION_SETWINDOWICON )
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QApplication::setWindowIcon ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static int startDragDistance ()
*/
$staticMethod=|int|startDragDistance|

/*
static int startDragTime ()
*/
$staticMethod=|int|startDragTime|

/*
static QStyle * style ()
*/
HB_FUNC_STATIC( QAPPLICATION_STYLE )
{
  QStyle * ptr = QApplication::style ();
  _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
}

/*
static QWidget * topLevelAt ( const QPoint & point )
*/
void QApplication_topLevelAt1 ()
{
  QWidget * ptr = QApplication::topLevelAt ( *PQPOINT(1) );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * topLevelAt ( int x, int y )
*/
void QApplication_topLevelAt2 ()
{
  QWidget * ptr = QApplication::topLevelAt ( PINT(1), PINT(2) );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

//[1]QWidget * topLevelAt ( const QPoint & point )
//[2]QWidget * topLevelAt ( int x, int y )

HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QApplication_topLevelAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QApplication_topLevelAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QWidgetList topLevelWidgets ()
*/
HB_FUNC_STATIC( QAPPLICATION_TOPLEVELWIDGETS )
{
  QWidgetList list = QApplication::topLevelWidgets ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWIDGET" );
  #else
  pDynSym = hb_dynsymFindName( "QWIDGET" );
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
      hb_itemPutPtr( pItem, (QWidget *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static int wheelScrollLines ()
*/
$staticMethod=|int|wheelScrollLines|

/*
static QWidget * widgetAt ( const QPoint & point )
*/
void QApplication_widgetAt1 ()
{
  QWidget * ptr = QApplication::widgetAt ( *PQPOINT(1) );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * widgetAt ( int x, int y )
*/
void QApplication_widgetAt2 ()
{
  QWidget * ptr = QApplication::widgetAt ( PINT(1), PINT(2) );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

//[1]QWidget * widgetAt ( const QPoint & point )
//[2]QWidget * widgetAt ( int x, int y )

HB_FUNC_STATIC( QAPPLICATION_WIDGETAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QApplication_widgetAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QApplication_widgetAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QIcon windowIcon ()
*/
HB_FUNC_STATIC( QAPPLICATION_WINDOWICON )
{
  QIcon * ptr = new QIcon( QApplication::windowIcon () );
  _qt5xhb_createReturnClass ( ptr, "QICON", true );
}

#pragma ENDDUMP

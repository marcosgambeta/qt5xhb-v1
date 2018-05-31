%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGuiApplication

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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QFont>
#include <QLocale>
#include <QIcon>
#include <QSessionManager>
#include <QFontMetrics>
#include <QPalette>
#include <QClipboard>
#include <QStyle>
#include <QDesktopWidget>

%% TODO: implementar construtores
//QApplication ( int & argc, char ** argv )
//QApplication ( int & argc, char ** argv, bool GUIenabled )
//QApplication ( int & argc, char ** argv, Type type )
//QApplication ( Display * display, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
//QApplication ( Display * display, int & argc, char ** argv, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
//QApplication ( QApplication::QS60MainApplicationFactory factory, int & argc, char ** argv )

$prototype=QApplication ( int & argc, char ** argv )
HB_FUNC_STATIC( QAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QApplication * o = NULL;
  o = new QApplication( argc, argv );
  _qt5xhb_returnNewObject( o, false );
}

$deleteMethod

$prototype=bool isSessionRestored () const
$method=|bool|isSessionRestored|

$prototype=QString sessionId () const
$method=|QString|sessionId|

$prototype=QString sessionKey () const
$method=|QString|sessionKey|

$prototype=QString styleSheet () const
$method=|QString|styleSheet|

$prototype=virtual bool notify ( QObject * receiver, QEvent * e )
$virtualMethod=|bool|notify|QObject *,QEvent *

$prototype=void aboutQt ()
$method=|void|aboutQt|

$prototype=void closeAllWindows ()
$method=|void|closeAllWindows|

$prototype=void setStyleSheet ( const QString & sheet )
$method=|void|setStyleSheet|const QString &

$prototype=static QWidget * activeModalWidget ()
$staticMethod=|QWidget *|activeModalWidget|

$prototype=static QWidget * activePopupWidget ()
$staticMethod=|QWidget *|activePopupWidget|

$prototype=static QWidget * activeWindow ()
$staticMethod=|QWidget *|activeWindow|

$prototype=static void alert ( QWidget * widget, int msec = 0 )
$staticMethod=|void|alert|QWidget *,int=0

$prototype=static QWidgetList allWidgets ()
$staticMethod=|QWidgetList|allWidgets|

$prototype=static void beep ()
$staticMethod=|void|beep|

$prototype=static void changeOverrideCursor ( const QCursor & cursor )
$staticMethod=|void|changeOverrideCursor|const QCursor &

$prototype=static QClipboard * clipboard ()
$staticMethod=|QClipboard *|clipboard|

$prototype=static int colorSpec ()
$staticMethod=|int|colorSpec|

$prototype=static int cursorFlashTime ()
$staticMethod=|int|cursorFlashTime|

$prototype=static QDesktopWidget * desktop ()
$staticMethod=|QDesktopWidget *|desktop|

$prototype=static bool desktopSettingsAware ()
$staticMethod=|bool|desktopSettingsAware|

$prototype=static int doubleClickInterval ()
$staticMethod=|int|doubleClickInterval|

$prototype=static int exec ()
$staticMethod=|int|exec|

$prototype=static QWidget * focusWidget ()
$staticMethod=|QWidget *|focusWidget|

$prototype=static QFont font ()
$internalStaticMethod=|QFont|font,font1|

$prototype=static QFont font ( const QWidget * widget )
$internalStaticMethod=|QFont|font,font2|const QWidget *

$prototype=static QFont font ( const char * className )
$internalStaticMethod=|QFont|font,font3|const char *

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

$prototype=static QFontMetrics fontMetrics ()
$staticMethod=|QFontMetrics|fontMetrics|

$prototype=static QSize globalStrut ()
$staticMethod=|QSize|globalStrut|

$prototype=static bool isEffectEnabled ( Qt::UIEffect effect )
$staticMethod=|bool|isEffectEnabled|Qt::UIEffect

$prototype=static bool isLeftToRight ()
$staticMethod=|bool|isLeftToRight|

$prototype=static bool isRightToLeft ()
$staticMethod=|bool|isRightToLeft|

$prototype=static int keyboardInputInterval ()
$staticMethod=|int|keyboardInputInterval|

$prototype=static Qt::KeyboardModifiers keyboardModifiers ()
$staticMethod=|Qt::KeyboardModifiers|keyboardModifiers|

$prototype=static Qt::LayoutDirection layoutDirection ()
$staticMethod=|Qt::LayoutDirection|layoutDirection|

$prototype=static Qt::MouseButtons mouseButtons ()
$staticMethod=|Qt::MouseButtons|mouseButtons|

$prototype=static QCursor * overrideCursor ()
$staticMethod=|QCursor *|overrideCursor|

$prototype=static QPalette palette ()
$internalStaticMethod=|QPalette|palette,palette1|

$prototype=static QPalette palette ( const QWidget * widget )
$internalStaticMethod=|QPalette|palette,palette2|const QWidget *

$prototype=static QPalette palette ( const char * className )
$internalStaticMethod=|QPalette|palette,palette3|const char *

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

$prototype=static Qt::KeyboardModifiers queryKeyboardModifiers ()
$staticMethod=|Qt::KeyboardModifiers|queryKeyboardModifiers|

$prototype=static bool quitOnLastWindowClosed ()
$staticMethod=|bool|quitOnLastWindowClosed|

$prototype=static void restoreOverrideCursor ()
$staticMethod=|void|restoreOverrideCursor|

$prototype=static void setActiveWindow ( QWidget * active )
$staticMethod=|void|setActiveWindow|QWidget *

$prototype=static void setColorSpec ( int spec )
$staticMethod=|void|setColorSpec|int

$prototype=static void setCursorFlashTime ( int )
$staticMethod=|void|setCursorFlashTime|int

$prototype=static void setDesktopSettingsAware ( bool on )
$staticMethod=|void|setDesktopSettingsAware|bool

$prototype=static void setDoubleClickInterval ( int )
$staticMethod=|void|setDoubleClickInterval|int

$prototype=static void setEffectEnabled ( Qt::UIEffect effect, bool enable = true )
$staticMethod=|void|setEffectEnabled|Qt::UIEffect,bool=true

$prototype=static void setFont ( const QFont & font, const char * className = 0 )
$staticMethod=|void|setFont|const QFont &,const char *=0

$prototype=static void setGlobalStrut ( const QSize & )
$staticMethod=|void|setGlobalStrut|const QSize &

$prototype=static void setKeyboardInputInterval ( int )
$staticMethod=|void|setKeyboardInputInterval|int

$prototype=static void setLayoutDirection ( Qt::LayoutDirection direction )
$staticMethod=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=static void setOverrideCursor ( const QCursor & cursor )
$staticMethod=|void|setOverrideCursor|const QCursor &

$prototype=static void setPalette ( const QPalette & palette, const char * className = 0 )
$staticMethod=|void|setPalette|const QPalette &,const char *=0

$prototype=static void setQuitOnLastWindowClosed ( bool quit )
$staticMethod=|void|setQuitOnLastWindowClosed|bool

$prototype=static void setStartDragDistance ( int l )
$staticMethod=|void|setStartDragDistance|int

$prototype=static void setStartDragTime ( int ms )
$staticMethod=|void|setStartDragTime|int

$prototype=static void setStyle ( QStyle * style )
$internalStaticMethod=|void|setStyle,setStyle1|QStyle *

$prototype=static QStyle * setStyle ( const QString & style )
$internalStaticMethod=|QStyle *|setStyle,setStyle2|const QString &

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

$prototype=static void setWheelScrollLines ( int )
$staticMethod=|void|setWheelScrollLines|int

$prototype=static void setWindowIcon ( const QIcon & icon )
$staticMethod=|void|setWindowIcon|const QIcon &

$prototype=static int startDragDistance ()
$staticMethod=|int|startDragDistance|

$prototype=static int startDragTime ()
$staticMethod=|int|startDragTime|

$prototype=static QStyle * style ()
$staticMethod=|QStyle *|style|

$prototype=static QWidget * topLevelAt ( const QPoint & point )
$internalStaticMethod=|QWidget *|topLevelAt,topLevelAt1|const QPoint &

$prototype=static QWidget * topLevelAt ( int x, int y )
$internalStaticMethod=|QWidget *|topLevelAt,topLevelAt2|int,int

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

$prototype=static QWidgetList topLevelWidgets ()
$staticMethod=|QWidgetList|topLevelWidgets|

$prototype=static int wheelScrollLines ()
$staticMethod=|int|wheelScrollLines|

$prototype=static QWidget * widgetAt ( const QPoint & point )
$internalStaticMethod=|QWidget *|widgetAt,widgetAt1|const QPoint &

$prototype=static QWidget * widgetAt ( int x, int y )
$internalStaticMethod=|QWidget *|widgetAt,widgetAt2|int,int

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

$prototype=static QIcon windowIcon ()
$staticMethod=|QIcon|windowIcon|

$beginSignals
$signal=|aboutToReleaseGpuResources()
$signal=|aboutToUseGpuResources()
$signal=|commitDataRequest(QSessionManager)
$signal=|focusChanged(QWidget*,QWidget*)
$signal=|fontDatabaseChanged()
$signal=|lastWindowClosed()
$signal=|saveStateRequest(QSessioManager)
$endSignals

#pragma ENDDUMP

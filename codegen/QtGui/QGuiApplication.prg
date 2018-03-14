%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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
%% REQUEST QPLATFORMNATIVEINTERFACE
REQUEST QSCREEN
REQUEST QSTYLEHINTS
REQUEST QACCESSIBLEEVENT
REQUEST QACCESSIBLESTATECHANGEEVENT
REQUEST QACCESSIBLETABLEMODELCHANGEEVENT
REQUEST QACCESSIBLETEXTCURSOREVENT
REQUEST QACCESSIBLETEXTINSERTEVENT
REQUEST QACCESSIBLETEXTREMOVEEVENT
REQUEST QACCESSIBLETEXTSELECTIONEVENT
REQUEST QACCESSIBLETEXTUPDATEEVENT
REQUEST QACCESSIBLEVALUECHANGEEVENT
REQUEST QACTIONEVENT
REQUEST QAPPLICATIONSTATECHANGEEVENT
REQUEST QCLOSEEVENT
REQUEST QCONTEXTMENUEVENT
REQUEST QDRAGENTEREVENT
REQUEST QDRAGLEAVEEVENT
REQUEST QDRAGMOVEEVENT
REQUEST QDROPEVENT
REQUEST QENTEREVENT
REQUEST QEXPOSEEVENT
REQUEST QFILEOPENEVENT
REQUEST QFOCUSEVENT
REQUEST QHELPEVENT
REQUEST QHIDEEVENT
REQUEST QHOVEREVENT
REQUEST QICONDRAGEVENT
REQUEST QINPUTEVENT
REQUEST QINPUTMETHODEVENT
REQUEST QINPUTMETHODQUERYEVENT
REQUEST QKEYEVENT
REQUEST QMOUSEEVENT
REQUEST QMOVEEVENT
REQUEST QNATIVEGESTUREEVENT
REQUEST QPAINTEVENT
REQUEST QRESIZEEVENT
REQUEST QSCREENORIENTATIONCHANGEEVENT
REQUEST QSCROLLEVENT
REQUEST QSCROLLPREPAREEVENT
REQUEST QSHORTCUTEVENT
REQUEST QSHOWEVENT
REQUEST QSTATUSTIPEVENT
REQUEST QTABLETEVENT
REQUEST QTOOLBARCHANGEEVENT
REQUEST QTOUCHEVENT
REQUEST QWHATSTHISCLICKEDEVENT
REQUEST QWHEELEVENT
REQUEST QWINDOWSTATECHANGEEVENT
#endif

CLASS QGuiApplication INHERIT QCoreApplication

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
%%   METHOD platformNativeInterface
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
#include <QClipboard>
#include <QWindow>
#include <QScreen>
#include <QStyleHints>

$prototype=QGuiApplication(int & argc, char ** argv)
HB_FUNC_STATIC( QGUIAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QGuiApplication * o = NULL;
  o = new QGuiApplication( argc, argv );
  _qt5xhb_returnNewObject( o, false );
}

$deleteMethod

$prototype=virtual bool notify(QObject * object, QEvent * event)
$virtualMethod=|bool|notify|QObject *,QEvent *

$prototype=static QWindowList allWindows()
$staticMethod=|QWindowList|allWindows|

$prototype=static QString applicationDisplayName()
$staticMethod=|QString|applicationDisplayName|

$prototype=static void changeOverrideCursor(const QCursor & cursor)
$staticMethod=|void|changeOverrideCursor|const QCursor &

$prototype=static QClipboard * clipboard()
$staticMethod=|QClipboard *|clipboard|

$prototype=static bool desktopSettingsAware()
$staticMethod=|bool|desktopSettingsAware|

$prototype=static int exec()
$staticMethod=|int|exec|

$prototype=static QObject * focusObject()
$staticMethod=|QObject *|focusObject|

$prototype=static QWindow * focusWindow()
$staticMethod=|QWindow *|focusWindow|

$prototype=static QFont font()
$staticMethod=|QFont|font|

$prototype=static QInputMethod * inputMethod()
$staticMethod=|QInputMethod *|inputMethod|

$prototype=static bool isLeftToRight()
$staticMethod=|bool|isLeftToRight|

$prototype=static bool isRightToLeft()
$staticMethod=|bool|isRightToLeft|

$prototype=static Qt::KeyboardModifiers keyboardModifiers()
$staticMethod=|Qt::KeyboardModifiers|keyboardModifiers|

$prototype=static Qt::LayoutDirection layoutDirection()
$staticMethod=|Qt::LayoutDirection|layoutDirection|

$prototype=static QWindow * modalWindow()
$staticMethod=|QWindow *|modalWindow|

$prototype=static Qt::MouseButtons mouseButtons()
$staticMethod=|Qt::MouseButtons|mouseButtons|

$prototype=static QCursor * overrideCursor()
$staticMethod=|QCursor *|overrideCursor|

$prototype=static QPalette palette()
$staticMethod=|QPalette|palette|

$prototype=static QString platformName()
$staticMethod=|QString|platformName|

$prototype=static QPlatformNativeInterface * platformNativeInterface()
%% TODO: implementar ?
%% $staticMethod=|QPlatformNativeInterface *|platformNativeInterface|

$prototype=static QScreen * primaryScreen()
$staticMethod=|QScreen *|primaryScreen|

$prototype=static Qt::KeyboardModifiers queryKeyboardModifiers()
$staticMethod=|Qt::KeyboardModifiers|queryKeyboardModifiers|

$prototype=static bool quitOnLastWindowClosed()
$staticMethod=|bool|quitOnLastWindowClosed|

$prototype=static void restoreOverrideCursor()
$staticMethod=|void|restoreOverrideCursor|

$prototype=static QList<QScreen *> screens()
$staticMethod=|QList<QScreen *>|screens|

$prototype=static void setApplicationDisplayName(const QString & name)
$staticMethod=|void|setApplicationDisplayName|const QString &

$prototype=static void setDesktopSettingsAware(bool on)
$staticMethod=|void|setDesktopSettingsAware|bool

$prototype=static void setFont(const QFont & font)
$staticMethod=|void|setFont|const QFont &

$prototype=static void setLayoutDirection(Qt::LayoutDirection direction)
$staticMethod=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=static void setOverrideCursor(const QCursor & cursor)
$staticMethod=|void|setOverrideCursor|const QCursor &

$prototype=static void setPalette(const QPalette & pal)
$staticMethod=|void|setPalette|const QPalette &

$prototype=static void setQuitOnLastWindowClosed(bool quit)
$staticMethod=|void|setQuitOnLastWindowClosed|bool

$prototype=static QStyleHints * styleHints()
$staticMethod=|QStyleHints *|styleHints|

$prototype=static QWindow * topLevelAt(const QPoint & pos)
$staticMethod=|QWindow *|topLevelAt|const QPoint &

$prototype=static QWindowList topLevelWindows()
$staticMethod=|QWindowList|topLevelWindows|

$beginSignals
$signal=|focusObjectChanged(QObject*)
$signal=|focusWindowChanged(QWindow*)
$signal=|fontDatabaseChanged()
$signal=|lastWindowClosed()
$signal=|screenAdded(QScreen*)
$endSignals

#pragma ENDDUMP

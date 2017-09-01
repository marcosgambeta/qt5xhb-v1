$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QTOOLBAR
REQUEST QMAINWINDOW
REQUEST QWIDGET
#endif

CLASS QScriptEngineDebugger INHERIT QObject

   METHOD new
   METHOD delete
   METHOD action
   METHOD attachTo
   METHOD autoShowStandardWindow
   METHOD createStandardMenu
   METHOD createStandardToolBar
   METHOD detach
   METHOD setAutoShowStandardWindow
   METHOD standardWindow
   METHOD state
   METHOD widget

   METHOD onEvaluationResumed
   METHOD onEvaluationSuspended

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QScriptEngineDebugger(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QAction * action(DebuggerAction action) const
*/
$method=|QAction *|action|QScriptEngineDebugger::DebuggerAction

/*
void attachTo(QScriptEngine * engine)
*/
$method=|void|attachTo|QScriptEngine *

/*
bool autoShowStandardWindow() const
*/
$method=|bool|autoShowStandardWindow|

/*
QMenu * createStandardMenu(QWidget * parent = 0)
*/
$method=|QMenu *|createStandardMenu|QWidget *=0

/*
QToolBar * createStandardToolBar(QWidget * parent = 0)
*/
$method=|QToolBar *|createStandardToolBar|QWidget *=0

/*
void detach()
*/
$method=|void|detach|

/*
void setAutoShowStandardWindow(bool autoShow)
*/
$method=|void|setAutoShowStandardWindow|bool

/*
QMainWindow * standardWindow() const
*/
$method=|QMainWindow *|standardWindow|

/*
DebuggerState state() const
*/
$method=|QScriptEngineDebugger::DebuggerState|state|

/*
QWidget * widget(DebuggerWidget widget) const
*/
$method=|QWidget *|widget|QScriptEngineDebugger::DebuggerWidget

#pragma ENDDUMP

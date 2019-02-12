%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScriptTools

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QAction>
#include <QtWidgets/QMenu>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QMainWindow>

$prototype=QScriptEngineDebugger(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QAction * action(DebuggerAction action) const
$method=|QAction *|action|QScriptEngineDebugger::DebuggerAction

$prototype=void attachTo(QScriptEngine * engine)
$method=|void|attachTo|QScriptEngine *

$prototype=bool autoShowStandardWindow() const
$method=|bool|autoShowStandardWindow|

$prototype=QMenu * createStandardMenu(QWidget * parent = 0)
$method=|QMenu *|createStandardMenu|QWidget *=0

$prototype=QToolBar * createStandardToolBar(QWidget * parent = 0)
$method=|QToolBar *|createStandardToolBar|QWidget *=0

$prototype=void detach()
$method=|void|detach|

$prototype=void setAutoShowStandardWindow(bool autoShow)
$method=|void|setAutoShowStandardWindow|bool

$prototype=QMainWindow * standardWindow() const
$method=|QMainWindow *|standardWindow|

$prototype=DebuggerState state() const
$method=|QScriptEngineDebugger::DebuggerState|state|

$prototype=QWidget * widget(DebuggerWidget widget) const
$method=|QWidget *|widget|QScriptEngineDebugger::DebuggerWidget

$beginSignals
$signal=|evaluationResumed()
$signal=|evaluationSuspended()
$endSignals

#pragma ENDDUMP

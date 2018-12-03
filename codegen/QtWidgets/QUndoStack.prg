%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

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

#include <QAction>

$prototype=QUndoStack(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void beginMacro(const QString & text)
$method=|void|beginMacro|const QString &

$prototype=bool canRedo() const
$method=|bool|canRedo|

$prototype=bool canUndo() const
$method=|bool|canUndo|

$prototype=int cleanIndex() const
$method=|int|cleanIndex|

$prototype=void clear()
$method=|void|clear|

$prototype=const QUndoCommand * command(int index) const
$method=|const QUndoCommand *|command|int

$prototype=int count() const
$method=|int|count|

$prototype=QAction * createRedoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

$prototype=QAction * createUndoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

$prototype=void endMacro()
$method=|void|endMacro|

$prototype=int index() const
$method=|int|index|

$prototype=bool isActive() const
$method=|bool|isActive|

$prototype=bool isClean() const
$method=|bool|isClean|

$prototype=void push(QUndoCommand * cmd)
$method=|void|push|QUndoCommand *

$prototype=QString redoText() const
$method=|QString|redoText|

$prototype=void setUndoLimit(int limit)
$method=|void|setUndoLimit|int

$prototype=QString text(int idx) const
$method=|QString|text|int

$prototype=int undoLimit() const
$method=|int|undoLimit|

$prototype=QString undoText() const
$method=|QString|undoText|

$prototype=void redo()
$method=|void|redo|

$prototype=void setActive(bool active = true)
$method=|void|setActive|bool=true

$prototype=void setClean()
$method=|void|setClean|

$prototype=void setIndex(int idx)
$method=|void|setIndex|int

$prototype=void undo()
$method=|void|undo|

$beginSignals
$signal=|canRedoChanged(bool)
$signal=|canUndoChanged(bool)
$signal=|cleanChanged(bool)
$signal=|indexChanged(int)
$signal=|redoTextChanged(QString)
$signal=|undoTextChanged(QString)
$endSignals

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QUNDOSTACK
REQUEST QACTION
#endif

CLASS QUndoGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeStack
   METHOD addStack
   METHOD canRedo
   METHOD canUndo
   METHOD createRedoAction
   METHOD createUndoAction
   METHOD isClean
   METHOD redoText
   METHOD removeStack
   METHOD stacks
   METHOD undoText
   METHOD redo
   METHOD setActiveStack
   METHOD undo

   METHOD onActiveStackChanged
   METHOD onCanRedoChanged
   METHOD onCanUndoChanged
   METHOD onCleanChanged
   METHOD onIndexChanged
   METHOD onRedoTextChanged
   METHOD onUndoTextChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QUndoStack>
#include <QAction>

$prototype=QUndoGroup(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QUndoStack * activeStack() const
$method=|QUndoStack *|activeStack|

$prototype=void addStack(QUndoStack * stack)
$method=|void|addStack|QUndoStack *

$prototype=bool canRedo() const
$method=|bool|canRedo|

$prototype=bool canUndo() const
$method=|bool|canUndo|

$prototype=QAction * createRedoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

$prototype=QAction * createUndoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

$prototype=bool isClean() const
$method=|bool|isClean|

$prototype=QString redoText() const
$method=|QString|redoText|

$prototype=void removeStack(QUndoStack * stack)
$method=|void|removeStack|QUndoStack *

$prototype=QList<QUndoStack *> stacks() const
$method=|QList<QUndoStack *>|stacks|

$prototype=QString undoText() const
$method=|QString|undoText|

$prototype=void redo()
$method=|void|redo|

$prototype=void setActiveStack(QUndoStack * stack)
$method=|void|setActiveStack|QUndoStack *

$prototype=void undo()
$method=|void|undo|

$connectSignalFunction

$signalMethod=|activeStackChanged(QUndoStack*)
$signalMethod=|canRedoChanged(bool)
$signalMethod=|canUndoChanged(bool)
$signalMethod=|cleanChanged(bool)
$signalMethod=|indexChanged(int)
$signalMethod=|redoTextChanged(QString)
$signalMethod=|undoTextChanged(QString)

#pragma ENDDUMP

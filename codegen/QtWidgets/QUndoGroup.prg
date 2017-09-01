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

/*
QUndoGroup(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QUndoStack * activeStack() const
*/
$method=|QUndoStack *|activeStack|

/*
void addStack(QUndoStack * stack)
*/
$method=|void|addStack|QUndoStack *

/*
bool canRedo() const
*/
$method=|bool|canRedo|

/*
bool canUndo() const
*/
$method=|bool|canUndo|

/*
QAction * createRedoAction(QObject * parent, const QString & prefix = QString()) const
*/
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

/*
QAction * createUndoAction(QObject * parent, const QString & prefix = QString()) const
*/
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

/*
bool isClean() const
*/
$method=|bool|isClean|

/*
QString redoText() const
*/
$method=|QString|redoText|

/*
void removeStack(QUndoStack * stack)
*/
$method=|void|removeStack|QUndoStack *

/*
QList<QUndoStack *> stacks() const
*/
$method=|QList<QUndoStack *>|stacks|

/*
QString undoText() const
*/
$method=|QString|undoText|

/*
void redo()
*/
$method=|void|redo|

/*
void setActiveStack(QUndoStack * stack)
*/
$method=|void|setActiveStack|QUndoStack *

/*
void undo()
*/
$method=|void|undo|

#pragma ENDDUMP

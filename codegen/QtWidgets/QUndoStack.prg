$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QUNDOCOMMAND
REQUEST QACTION
#endif

CLASS QUndoStack INHERIT QObject

   METHOD new
   METHOD delete
   METHOD beginMacro
   METHOD canRedo
   METHOD canUndo
   METHOD cleanIndex
   METHOD clear
   METHOD command
   METHOD count
   METHOD createRedoAction
   METHOD createUndoAction
   METHOD endMacro
   METHOD index
   METHOD isActive
   METHOD isClean
   METHOD push
   METHOD redoText
   METHOD setUndoLimit
   METHOD text
   METHOD undoLimit
   METHOD undoText
   METHOD redo
   METHOD setActive
   METHOD setClean
   METHOD setIndex
   METHOD undo

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
QUndoStack(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void beginMacro(const QString & text)
*/
$method=|void|beginMacro|const QString &

/*
bool canRedo() const
*/
$method=|bool|canRedo|

/*
bool canUndo() const
*/
$method=|bool|canUndo|

/*
int cleanIndex() const
*/
$method=|int|cleanIndex|

/*
void clear()
*/
$method=|void|clear|

/*
const QUndoCommand * command(int index) const
*/
$method=|const QUndoCommand *|command|int

/*
int count() const
*/
$method=|int|count|

/*
QAction * createRedoAction(QObject * parent, const QString & prefix = QString()) const
*/
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

/*
QAction * createUndoAction(QObject * parent, const QString & prefix = QString()) const
*/
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

/*
void endMacro()
*/
$method=|void|endMacro|

/*
int index() const
*/
$method=|int|index|

/*
bool isActive() const
*/
$method=|bool|isActive|

/*
bool isClean() const
*/
$method=|bool|isClean|

/*
void push(QUndoCommand * cmd)
*/
$method=|void|push|QUndoCommand *

/*
QString redoText() const
*/
$method=|QString|redoText|

/*
void setUndoLimit(int limit)
*/
$method=|void|setUndoLimit|int

/*
QString text(int idx) const
*/
$method=|QString|text|int

/*
int undoLimit() const
*/
$method=|int|undoLimit|

/*
QString undoText() const
*/
$method=|QString|undoText|

/*
void redo()
*/
$method=|void|redo|

/*
void setActive(bool active = true)
*/
$method=|void|setActive|bool=true

/*
void setClean()
*/
$method=|void|setClean|

/*
void setIndex(int idx)
*/
$method=|void|setIndex|int

/*
void undo()
*/
$method=|void|undo|

#pragma ENDDUMP

$header

#include "hbclass.ch"

CLASS QUndoCommand

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actionText
   METHOD child
   METHOD childCount
   METHOD id
   METHOD mergeWith
   METHOD redo
   METHOD setText
   METHOD text
   METHOD undo

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QUndoCommand(QUndoCommand * parent = 0)
*/
$internalConstructor=|new1|QUndoCommand *=0

/*
QUndoCommand(const QString & text, QUndoCommand * parent = 0)
*/
$internalConstructor=|new2|const QString &,QUndoCommand *=0

//[1]QUndoCommand(QUndoCommand * parent = 0)
//[2]QUndoCommand(const QString & text, QUndoCommand * parent = 0)

HB_FUNC_STATIC( QUNDOCOMMAND_NEW )
{
  if( ISBETWEEN(0,1) && (ISQUNDOCOMMAND(1)||ISNIL(1)) )
  {
    QUndoCommand_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQUNDOCOMMAND(2)||ISNIL(2)) )
  {
    QUndoCommand_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString actionText() const
*/
$method=|QString|actionText|

/*
const QUndoCommand * child(int index) const
*/
$method=|const QUndoCommand *|child|int

/*
int childCount() const
*/
$method=|int|childCount|

/*
virtual int id() const
*/
$method=|int|id|

/*
virtual bool mergeWith(const QUndoCommand * command)
*/
$method=|bool|mergeWith|const QUndoCommand *

/*
virtual void redo()
*/
$method=|void|redo|

/*
void setText(const QString & text)
*/
$method=|void|setText|const QString &

/*
QString text() const
*/
$method=|QString|text|

/*
virtual void undo()
*/
$method=|void|undo|

$extraMethods

#pragma ENDDUMP

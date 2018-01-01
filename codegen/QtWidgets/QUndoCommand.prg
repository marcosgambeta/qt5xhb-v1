%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QUndoCommand(QUndoCommand * parent = 0)
$internalConstructor=|new1|QUndoCommand *=0

$prototype=QUndoCommand(const QString & text, QUndoCommand * parent = 0)
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

$prototype=QString actionText() const
$method=|QString|actionText|

$prototype=const QUndoCommand * child(int index) const
$method=|const QUndoCommand *|child|int

$prototype=int childCount() const
$method=|int|childCount|

$prototype=virtual int id() const
$virtualMethod=|int|id|

$prototype=virtual bool mergeWith(const QUndoCommand * command)
$virtualMethod=|bool|mergeWith|const QUndoCommand *

$prototype=virtual void redo()
$virtualMethod=|void|redo|

$prototype=void setText(const QString & text)
$method=|void|setText|const QString &

$prototype=QString text() const
$method=|QString|text|

$prototype=virtual void undo()
$virtualMethod=|void|undo|

$extraMethods

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QUndoGroup>
#include <QtWidgets/QUndoStack>

$prototype=QUndoView ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
$internalConstructor=|new2|QUndoStack *,QWidget *=0

$prototype=QUndoView ( QUndoGroup * group, QWidget * parent = 0 )
$internalConstructor=|new3|QUndoGroup *,QWidget *=0

/*
[1]QUndoView ( QWidget * parent = 0 )
[2]QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
[3]QUndoView ( QUndoGroup * group, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QUNDOVIEW_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QUndoView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQUNDOSTACK(1) && ISOPTQWIDGET(2) )
  {
    QUndoView_new2();
  }
  else if( ISBETWEEN(1,2) && ISQUNDOGROUP(1) && ISOPTQWIDGET(2) )
  {
    QUndoView_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QIcon cleanIcon () const
$method=|QIcon|cleanIcon|

$prototype=QString emptyLabel () const
$method=|QString|emptyLabel|

$prototype=QUndoGroup * group () const
$method=|QUndoGroup *|group|

$prototype=void setCleanIcon ( const QIcon & icon )
$method=|void|setCleanIcon|const QIcon &

$prototype=void setEmptyLabel ( const QString & label )
$method=|void|setEmptyLabel|const QString &

$prototype=QUndoStack * stack () const
$method=|QUndoStack *|stack|

$prototype=void setGroup ( QUndoGroup * group )
$method=|void|setGroup|QUndoGroup *

$prototype=void setStack ( QUndoStack * stack )
$method=|void|setStack|QUndoStack *

#pragma ENDDUMP

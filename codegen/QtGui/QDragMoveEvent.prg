%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDropEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDragMoveEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = DragMove )
$constructor=|new|const QPoint &,Qt::DropActions,const QMimeData *,Qt::MouseButtons,Qt::KeyboardModifiers,QEvent::Type=QEvent::DragMove

$deleteMethod

$prototype=void accept ( const QRect & rectangle )
$internalMethod=|void|accept,accept1|const QRect &

$prototype=void accept ()
$internalMethod=|void|accept,accept2|

//[1]void accept ( const QRect & rectangle )
//[2]void accept ()

HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QDragMoveEvent_accept1();
  }
  else if( ISNUMPAR(0) )
  {
    QDragMoveEvent_accept2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=accept

$prototype=QRect answerRect () const
$method=|QRect|answerRect|

$prototype=void ignore ( const QRect & rectangle )
$internalMethod=|void|ignore,ignore1|const QRect &

$prototype=void ignore ()
$internalMethod=|void|ignore,ignore2|

//[1]void ignore ( const QRect & rectangle )
//[2]void ignore ()

HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QDragMoveEvent_ignore1();
  }
  else if( ISNUMPAR(0) )
  {
    QDragMoveEvent_ignore2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=ignore

#pragma ENDDUMP

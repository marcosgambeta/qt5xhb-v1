%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

$beginClassFrom=QInputEvent

   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD reason
   METHOD x
   METHOD y

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
$internalConstructor=|new1|QContextMenuEvent::Reason,const QPoint &,const QPoint &,Qt::KeyboardModifiers

$prototype=QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
$internalConstructor=|new2|QContextMenuEvent::Reason,const QPoint &,const QPoint &

$prototype=QContextMenuEvent ( Reason reason, const QPoint & pos )
$internalConstructor=|new3|QContextMenuEvent::Reason,const QPoint &

//[1]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
//[2]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
//[3]QContextMenuEvent ( Reason reason, const QPoint & pos )

HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && ISNUM(4) )
  {
    QContextMenuEvent_new1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) )
  {
    QContextMenuEvent_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    QContextMenuEvent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=const QPoint & globalPos () const
$method=|const QPoint &|globalPos|

$prototype=int globalX () const
$method=|int|globalX|

$prototype=int globalY () const
$method=|int|globalY|

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

$prototype=Reason reason () const
$method=|QContextMenuEvent::Reason|reason|

$prototype=int x () const
$method=|int|x|

$prototype=int y () const
$method=|int|y|

#pragma ENDDUMP

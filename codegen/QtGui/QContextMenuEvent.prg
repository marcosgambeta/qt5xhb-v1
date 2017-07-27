$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QContextMenuEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD reason
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
*/
$internalConstructor=|new1|QContextMenuEvent::Reason,const QPoint &,const QPoint &,Qt::KeyboardModifiers

/*
QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
*/
$internalConstructor=|new2|QContextMenuEvent::Reason,const QPoint &,const QPoint &

/*
QContextMenuEvent ( Reason reason, const QPoint & pos )
*/
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

/*
const QPoint & globalPos () const
*/
$method=|const QPoint &|globalPos|

/*
int globalX () const
*/
$method=|int|globalX|

/*
int globalY () const
*/
$method=|int|globalY|

/*
const QPoint & pos () const
*/
$method=|const QPoint &|pos|

/*
Reason reason () const
*/
$method=|QContextMenuEvent::Reason|reason|

/*
int x () const
*/
$method=|int|x|

/*
int y () const
*/
$method=|int|y|

#pragma ENDDUMP

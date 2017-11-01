$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QMouseEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD button
   METHOD buttons
   METHOD globalX
   METHOD globalY
   METHOD localPos
   METHOD screenPos
   METHOD windowPos
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QMouseEvent(Type type, const QPointF & localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
$internalConstructor=|new1|QEvent::Type,const QPointF &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

/*
QMouseEvent(Type type, const QPointF & localPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
$internalConstructor=|new2|QEvent::Type,const QPointF &,const QPointF &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

/*
QMouseEvent(Type type, const QPointF & localPos, const QPointF & windowPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
$internalConstructor=|new3|QEvent::Type,const QPointF &,const QPointF &,const QPointF &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

//[1]QMouseEvent(Type type, const QPointF & localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
//[2]QMouseEvent(Type type, const QPointF & localPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
//[3]QMouseEvent(Type type, const QPointF & localPos, const QPointF & windowPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)

HB_FUNC_STATIC( QMOUSEEVENT_NEW )
{
  if( ISNUMPAR(5) && ISNUM(1) && ISQPOINTF(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QMouseEvent_new1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QMouseEvent_new2();
  }
  else if( ISNUMPAR(7) && ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) )
  {
    QMouseEvent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::MouseButton button () const
*/
$method=|Qt::MouseButton|button|

/*
Qt::MouseButtons buttons () const
*/
$method=|Qt::MouseButtons|buttons|

/*
int globalX () const
*/
$method=|int|globalX|

/*
int globalY () const
*/
$method=|int|globalY|

/*
const QPointF & localPos() const
*/
$method=|const QPointF &|localPos|

/*
const QPointF & screenPos() const
*/
$method=|const QPointF &|screenPos|

/*
const QPointF & windowPos() const
*/
$method=|const QPointF &|windowPos|

/*
int x () const
*/
$method=|int|x|

/*
int y () const
*/
$method=|int|y|

#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QMouseEvent INHERIT QInputEvent

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
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

PROCEDURE destroyObject () CLASS QMouseEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMouseEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMouseEvent>
#endif

/*
QMouseEvent(Type type, const QPointF & localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QMOUSEEVENT_NEW1 )
{
  int par1 = hb_parni(1);
  QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  QMouseEvent * o = new QMouseEvent (  (QEvent::Type) par1, *par2,  (Qt::MouseButton) par3,  (Qt::MouseButtons) par4,  (Qt::KeyboardModifiers) par5 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMouseEvent(Type type, const QPointF & localPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QMOUSEEVENT_NEW2 )
{
  int par1 = hb_parni(1);
  QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
  QPointF * par3 = (QPointF *) _qt5xhb_itemGetPtr(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = hb_parni(6);
  QMouseEvent * o = new QMouseEvent (  (QEvent::Type) par1, *par2, *par3,  (Qt::MouseButton) par4,  (Qt::MouseButtons) par5,  (Qt::KeyboardModifiers) par6 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMouseEvent(Type type, const QPointF & localPos, const QPointF & windowPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QMOUSEEVENT_NEW3 )
{
  int par1 = hb_parni(1);
  QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
  QPointF * par3 = (QPointF *) _qt5xhb_itemGetPtr(3);
  QPointF * par4 = (QPointF *) _qt5xhb_itemGetPtr(4);
  int par5 = hb_parni(5);
  int par6 = hb_parni(6);
  int par7 = hb_parni(7);
  QMouseEvent * o = new QMouseEvent (  (QEvent::Type) par1, *par2, *par3, *par4,  (Qt::MouseButton) par5,  (Qt::MouseButtons) par6,  (Qt::KeyboardModifiers) par7 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QMouseEvent(Type type, const QPointF & localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
//[2]QMouseEvent(Type type, const QPointF & localPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
//[3]QMouseEvent(Type type, const QPointF & localPos, const QPointF & windowPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)

HB_FUNC_STATIC( QMOUSEEVENT_NEW )
{
  if( ISNUMPAR(5) && ISNUM(1) && ISQPOINTF(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QMOUSEEVENT_NEW1 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QMOUSEEVENT_NEW2 );
  }
  else if( ISNUMPAR(7) && ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) )
  {
    HB_FUNC_EXEC( QMOUSEEVENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMOUSEEVENT_DELETE )
{
  QMouseEvent * obj = (QMouseEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::MouseButton button () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_BUTTON )
{
  QMouseEvent * obj = (QMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->button (  ) );
  }
}


/*
Qt::MouseButtons buttons () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_BUTTONS )
{
  QMouseEvent * obj = (QMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->buttons (  ) );
  }
}



/*
int globalX () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_GLOBALX )
{
  QMouseEvent * obj = (QMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->globalX (  ) );
  }
}


/*
int globalY () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_GLOBALY )
{
  QMouseEvent * obj = (QMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->globalY (  ) );
  }
}


/*
const QPointF & localPos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_LOCALPOS )
{
  QMouseEvent * obj = (QMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->localPos (  );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}



/*
const QPointF & screenPos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_SCREENPOS )
{
  QMouseEvent * obj = (QMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->screenPos (  );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF & windowPos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_WINDOWPOS )
{
  QMouseEvent * obj = (QMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->windowPos (  );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}



/*
int x () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_X )
{
  QMouseEvent * obj = (QMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->x (  ) );
  }
}


/*
int y () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_Y )
{
  QMouseEvent * obj = (QMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->y (  ) );
  }
}



#pragma ENDDUMP

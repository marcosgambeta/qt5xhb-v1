$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD action
   METHOD before

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QActionEvent ( int type, QAction * action, QAction * before = 0 )
*/
HB_FUNC_STATIC( QACTIONEVENT_NEW )
{
  QActionEvent * o = new QActionEvent ( PINT(1), PQACTION(2), OPQACTION(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QAction * action () const
*/
HB_FUNC_STATIC( QACTIONEVENT_ACTION )
{
  QActionEvent * obj = (QActionEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->action ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * before () const
*/
HB_FUNC_STATIC( QACTIONEVENT_BEFORE )
{
  QActionEvent * obj = (QActionEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->before ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}



#pragma ENDDUMP

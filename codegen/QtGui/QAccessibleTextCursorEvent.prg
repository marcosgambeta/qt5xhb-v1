$header

#include "hbclass.ch"

CLASS QAccessibleTextCursorEvent INHERIT QAccessibleEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setCursorPosition
   METHOD cursorPosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleTextCursorEvent(QObject *obj, int cursorPos)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_NEW )
{
  QAccessibleTextCursorEvent * o = new QAccessibleTextCursorEvent ( PQOBJECT(1), PINT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void setCursorPosition(int position)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_SETCURSORPOSITION )
{
  QAccessibleTextCursorEvent * obj = (QAccessibleTextCursorEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCursorPosition ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int cursorPosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_CURSORPOSITION )
{
  QAccessibleTextCursorEvent * obj = (QAccessibleTextCursorEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->cursorPosition () );
  }
}



#pragma ENDDUMP

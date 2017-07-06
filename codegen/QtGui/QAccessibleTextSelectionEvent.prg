$header

#include "hbclass.ch"

CLASS QAccessibleTextSelectionEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setSelection
   METHOD selectionStart
   METHOD selectionEnd

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleTextSelectionEvent(QObject *obj, int start, int end)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_NEW )
{
  QAccessibleTextSelectionEvent * o = new QAccessibleTextSelectionEvent ( PQOBJECT(1), PINT(2), PINT(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void setSelection(int start, int end)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_SETSELECTION )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSelection ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int selectionStart() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_SELECTIONSTART )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->selectionStart () );
  }
}


/*
int selectionEnd() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_SELECTIONEND )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->selectionEnd () );
  }
}



#pragma ENDDUMP

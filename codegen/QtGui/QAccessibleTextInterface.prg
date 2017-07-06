$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QAccessibleTextInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD selection
   METHOD selectionCount
   METHOD addSelection
   METHOD removeSelection
   METHOD setSelection
   METHOD cursorPosition
   METHOD setCursorPosition
   METHOD text
   METHOD characterCount
   METHOD characterRect
   METHOD offsetAtPoint
   METHOD scrollToSubstring
   METHOD attributes

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

$deleteMethod

/*
virtual void selection(int selectionIndex, int *startOffset, int *endOffset) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SELECTION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2;
    int par3;
    obj->selection ( PINT(1), &par2, &par3 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int selectionCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SELECTIONCOUNT )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->selectionCount () );
  }
}


/*
virtual void addSelection(int startOffset, int endOffset) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_ADDSELECTION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addSelection ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void removeSelection(int selectionIndex) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_REMOVESELECTION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeSelection ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSelection(int selectionIndex, int startOffset, int endOffset) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SETSELECTION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSelection ( PINT(1), PINT(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int cursorPosition() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_CURSORPOSITION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->cursorPosition () );
  }
}


/*
virtual void setCursorPosition(int position) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SETCURSORPOSITION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCursorPosition ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QString text(int startOffset, int endOffset) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_TEXT )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text ( PINT(1), PINT(2) ) );
  }
}





/*
virtual int characterCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_CHARACTERCOUNT )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->characterCount () );
  }
}


/*
virtual QRect characterRect(int offset) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_CHARACTERRECT )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->characterRect ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual int offsetAtPoint(const QPoint &point) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_OFFSETATPOINT )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->offsetAtPoint ( *PQPOINT(1) ) );
  }
}


/*
virtual void scrollToSubstring(int startIndex, int endIndex) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SCROLLTOSUBSTRING )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->scrollToSubstring ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QString attributes(int offset, int *startOffset, int *endOffset) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_ATTRIBUTES )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2;
    int par3;
    RQSTRING( obj->attributes ( PINT(1), &par2, &par3 ) );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }
}

$extraMethods

#pragma ENDDUMP

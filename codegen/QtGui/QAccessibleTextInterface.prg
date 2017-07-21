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
$method=|int|selectionCount|

/*
virtual void addSelection(int startOffset, int endOffset) = 0
*/
$method=|void|addSelection|int,int

/*
virtual void removeSelection(int selectionIndex) = 0
*/
$method=|void|removeSelection|int

/*
virtual void setSelection(int selectionIndex, int startOffset, int endOffset) = 0
*/
$method=|void|setSelection|int,int,int

/*
virtual int cursorPosition() const = 0
*/
$method=|int|cursorPosition|

/*
virtual void setCursorPosition(int position) = 0
*/
$method=|void|setCursorPosition|int

/*
virtual QString text(int startOffset, int endOffset) const = 0
*/
$method=|QString|text|int,int

/*
virtual int characterCount() const = 0
*/
$method=|int|characterCount|

/*
virtual QRect characterRect(int offset) const = 0
*/
$method=|QRect|characterRect|int

/*
virtual int offsetAtPoint(const QPoint &point) const = 0
*/
$method=|int|offsetAtPoint|const QPoint &

/*
virtual void scrollToSubstring(int startIndex, int endIndex) = 0
*/
$method=|void|scrollToSubstring|int,int

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

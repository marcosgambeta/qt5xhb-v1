$header

#include "hbclass.ch"

CLASS QAccessibleEditableTextInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD deleteText
   METHOD insertText
   METHOD replaceText

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
virtual void deleteText(int startOffset, int endOffset) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_DELETETEXT )
{
  QAccessibleEditableTextInterface * obj = (QAccessibleEditableTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deleteText ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void insertText(int offset, const QString &text) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_INSERTTEXT )
{
  QAccessibleEditableTextInterface * obj = (QAccessibleEditableTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertText ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void replaceText(int startOffset, int endOffset, const QString &text) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_REPLACETEXT )
{
  QAccessibleEditableTextInterface * obj = (QAccessibleEditableTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->replaceText ( PINT(1), PINT(2), PQSTRING(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

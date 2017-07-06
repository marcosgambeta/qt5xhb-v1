$header

#include "hbclass.ch"

CLASS QAbstractUndoItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD undo
   METHOD redo

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
virtual void undo() = 0
*/
HB_FUNC_STATIC( QABSTRACTUNDOITEM_UNDO )
{
  QAbstractUndoItem * obj = (QAbstractUndoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->undo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void redo() = 0
*/
HB_FUNC_STATIC( QABSTRACTUNDOITEM_REDO )
{
  QAbstractUndoItem * obj = (QAbstractUndoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->redo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleTableCellInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD columnExtent
   METHOD columnHeaderCells
   METHOD columnIndex
   METHOD rowExtent
   METHOD rowHeaderCells
   METHOD rowIndex
   METHOD isSelected
   METHOD table

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
virtual int columnExtent() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_COLUMNEXTENT )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->columnExtent () );
  }
}


/*
virtual QList<QAccessibleInterface*> columnHeaderCells() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_COLUMNHEADERCELLS )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
virtual int columnIndex() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_COLUMNINDEX )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->columnIndex () );
  }
}


/*
virtual int rowExtent() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_ROWEXTENT )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rowExtent () );
  }
}


/*
virtual QList<QAccessibleInterface*> rowHeaderCells() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_ROWHEADERCELLS )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
virtual int rowIndex() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_ROWINDEX )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rowIndex () );
  }
}


/*
virtual bool isSelected() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_ISSELECTED )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSelected () );
  }
}



/*
virtual QAccessibleInterface* table() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_TABLE )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->table ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleTableInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD cellAt
   METHOD caption
   METHOD columnDescription
   METHOD columnCount
   METHOD rowCount
   METHOD selectedCellCount
   METHOD selectedColumnCount
   METHOD selectedRowCount
   METHOD rowDescription
   METHOD selectedCells
   METHOD selectedColumns
   METHOD selectedRows
   METHOD summary
   METHOD isColumnSelected
   METHOD isRowSelected
   METHOD selectRow
   METHOD selectColumn
   METHOD unselectRow
   METHOD unselectColumn

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
virtual QAccessibleInterface *cellAt (int row, int column) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_CELLAT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->cellAt ( PINT(1), PINT(2) );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual QAccessibleInterface *caption() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_CAPTION )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->caption ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual QString columnDescription(int column) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_COLUMNDESCRIPTION )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->columnDescription ( PINT(1) ) );
  }
}


/*
virtual int columnCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_COLUMNCOUNT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->columnCount () );
  }
}


/*
virtual int rowCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_ROWCOUNT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rowCount () );
  }
}


/*
virtual int selectedCellCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDCELLCOUNT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->selectedCellCount () );
  }
}


/*
virtual int selectedColumnCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDCOLUMNCOUNT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->selectedColumnCount () );
  }
}


/*
virtual int selectedRowCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDROWCOUNT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->selectedRowCount () );
  }
}


/*
virtual QString rowDescription(int row) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_ROWDESCRIPTION )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->rowDescription ( PINT(1) ) );
  }
}


/*
virtual QList<QAccessibleInterface*> selectedCells() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDCELLS ) // TODO: implementar
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
virtual QList<int> selectedColumns() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDCOLUMNS )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->selectedColumns ();
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
virtual QList<int> selectedRows() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDROWS )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->selectedRows ();
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
virtual QAccessibleInterface *summary() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SUMMARY )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->summary ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual bool isColumnSelected(int column) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_ISCOLUMNSELECTED )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isColumnSelected ( PINT(1) ) );
  }
}


/*
virtual bool isRowSelected(int row) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_ISROWSELECTED )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isRowSelected ( PINT(1) ) );
  }
}


/*
virtual bool selectRow(int row) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTROW )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->selectRow ( PINT(1) ) );
  }
}


/*
virtual bool selectColumn(int column) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTCOLUMN )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->selectColumn ( PINT(1) ) );
  }
}


/*
virtual bool unselectRow(int row) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_UNSELECTROW )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->unselectRow ( PINT(1) ) );
  }
}


/*
virtual bool unselectColumn(int column) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_UNSELECTCOLUMN )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->unselectColumn ( PINT(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP

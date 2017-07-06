$header

#include "hbclass.ch"

CLASS QTableWidgetSelectionRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bottomRow
   METHOD columnCount
   METHOD leftColumn
   METHOD rightColumn
   METHOD rowCount
   METHOD topRow

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

/*
QTableWidgetSelectionRange()
*/
void QTableWidgetSelectionRange_new1 ()
{
  QTableWidgetSelectionRange * o = new QTableWidgetSelectionRange ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTableWidgetSelectionRange(int top, int left, int bottom, int right)
*/
void QTableWidgetSelectionRange_new2 ()
{
  QTableWidgetSelectionRange * o = new QTableWidgetSelectionRange ( PINT(1), PINT(2), PINT(3), PINT(4) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTableWidgetSelectionRange(const QTableWidgetSelectionRange & other)
*/
void QTableWidgetSelectionRange_new3 ()
{
  QTableWidgetSelectionRange * o = new QTableWidgetSelectionRange ( *PQTABLEWIDGETSELECTIONRANGE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTableWidgetSelectionRange()
//[2]QTableWidgetSelectionRange(int top, int left, int bottom, int right)
//[3]QTableWidgetSelectionRange(const QTableWidgetSelectionRange & other)

HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTableWidgetSelectionRange_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QTableWidgetSelectionRange_new2();
  }
  else if( ISNUMPAR(1) && ISQTABLEWIDGETSELECTIONRANGE(1) )
  {
    QTableWidgetSelectionRange_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int bottomRow() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_BOTTOMROW )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->bottomRow () );
  }
}

/*
int columnCount() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_COLUMNCOUNT )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->columnCount () );
  }
}

/*
int leftColumn() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_LEFTCOLUMN )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->leftColumn () );
  }
}

/*
int rightColumn() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_RIGHTCOLUMN )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->rightColumn () );
  }
}

/*
int rowCount() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_ROWCOUNT )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->rowCount () );
  }
}

/*
int topRow() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_TOPROW )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->topRow () );
  }
}

$extraMethods

#pragma ENDDUMP

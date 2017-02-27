/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QHEADERVIEW
REQUEST QMODELINDEX
#endif

CLASS QTableView INHERIT QAbstractItemView

   DATA class_id INIT Class_Id_QTableView
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD clearSpans
   METHOD columnAt
   METHOD columnSpan
   METHOD columnViewportPosition
   METHOD columnWidth
   METHOD gridStyle
   METHOD horizontalHeader
   METHOD isColumnHidden
   METHOD isCornerButtonEnabled
   METHOD isRowHidden
   METHOD isSortingEnabled
   METHOD rowAt
   METHOD rowHeight
   METHOD rowSpan
   METHOD rowViewportPosition
   METHOD setColumnHidden
   METHOD setColumnWidth
   METHOD setCornerButtonEnabled
   METHOD setGridStyle
   METHOD setHorizontalHeader
   METHOD setRowHeight
   METHOD setRowHidden
   METHOD setSortingEnabled
   METHOD setSpan
   METHOD setVerticalHeader
   METHOD setWordWrap
   METHOD showGrid
   METHOD sortByColumn
   METHOD verticalHeader
   METHOD wordWrap
   METHOD indexAt
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD hideColumn
   METHOD hideRow
   METHOD resizeColumnToContents
   METHOD resizeColumnsToContents
   METHOD resizeRowToContents
   METHOD resizeRowsToContents
   METHOD selectColumn
   METHOD selectRow
   METHOD setShowGrid
   METHOD showColumn
   METHOD showRow
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTableView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTableView>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTableView>
#endif
#endif

/*
QTableView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABLEVIEW_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QTableView * o = new QTableView ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QTABLEVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void clearSpans ()
*/
HB_FUNC_STATIC( QTABLEVIEW_CLEARSPANS )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearSpans (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int columnAt ( int x ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNAT )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnAt ( (int) hb_parni(1) ) );
  }
}


/*
int columnSpan ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNSPAN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnSpan ( (int) hb_parni(1), (int) hb_parni(2) ) );
  }
}


/*
int columnViewportPosition ( int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNVIEWPORTPOSITION )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnViewportPosition ( (int) hb_parni(1) ) );
  }
}


/*
int columnWidth ( int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNWIDTH )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnWidth ( (int) hb_parni(1) ) );
  }
}


/*
Qt::PenStyle gridStyle () const
*/
HB_FUNC_STATIC( QTABLEVIEW_GRIDSTYLE )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->gridStyle (  ) );
  }
}


/*
QHeaderView * horizontalHeader () const
*/
HB_FUNC_STATIC( QTABLEVIEW_HORIZONTALHEADER )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHeaderView * ptr = obj->horizontalHeader (  );
    _qt5xhb_createReturnClass ( ptr, "QHEADERVIEW" );
  }
}


/*
bool isColumnHidden ( int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISCOLUMNHIDDEN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isColumnHidden ( (int) hb_parni(1) ) );
  }
}


/*
bool isCornerButtonEnabled () const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISCORNERBUTTONENABLED )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCornerButtonEnabled (  ) );
  }
}


/*
bool isRowHidden ( int row ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISROWHIDDEN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRowHidden ( (int) hb_parni(1) ) );
  }
}


/*
bool isSortingEnabled () const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISSORTINGENABLED )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSortingEnabled (  ) );
  }
}


/*
int rowAt ( int y ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWAT )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowAt ( (int) hb_parni(1) ) );
  }
}


/*
int rowHeight ( int row ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWHEIGHT )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowHeight ( (int) hb_parni(1) ) );
  }
}


/*
int rowSpan ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWSPAN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowSpan ( (int) hb_parni(1), (int) hb_parni(2) ) );
  }
}


/*
int rowViewportPosition ( int row ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWVIEWPORTPOSITION )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowViewportPosition ( (int) hb_parni(1) ) );
  }
}


/*
void setColumnHidden ( int column, bool hide )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETCOLUMNHIDDEN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnHidden ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnWidth ( int column, int width )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETCOLUMNWIDTH )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnWidth ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCornerButtonEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETCORNERBUTTONENABLED )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCornerButtonEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGridStyle ( Qt::PenStyle style )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETGRIDSTYLE )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setGridStyle (  (Qt::PenStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalHeader ( QHeaderView * header )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETHORIZONTALHEADER )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHeaderView * par1 = (QHeaderView *) _qt5xhb_itemGetPtr(1);
    obj->setHorizontalHeader ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowHeight ( int row, int height )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETROWHEIGHT )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowHeight ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowHidden ( int row, bool hide )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETROWHIDDEN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowHidden ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSORTINGENABLED )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSortingEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpan ( int row, int column, int rowSpanCount, int columnSpanCount )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSPAN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSpan ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalHeader ( QHeaderView * header )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETVERTICALHEADER )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHeaderView * par1 = (QHeaderView *) _qt5xhb_itemGetPtr(1);
    obj->setVerticalHeader ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWordWrap ( bool on )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETWORDWRAP )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWordWrap ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool showGrid () const
*/
HB_FUNC_STATIC( QTABLEVIEW_SHOWGRID )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->showGrid (  ) );
  }
}


/*
void sortByColumn ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QTABLEVIEW_SORTBYCOLUMN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->sortByColumn ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QHeaderView * verticalHeader () const
*/
HB_FUNC_STATIC( QTABLEVIEW_VERTICALHEADER )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHeaderView * ptr = obj->verticalHeader (  );
    _qt5xhb_createReturnClass ( ptr, "QHEADERVIEW" );
  }
}


/*
bool wordWrap () const
*/
HB_FUNC_STATIC( QTABLEVIEW_WORDWRAP )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->wordWrap (  ) );
  }
}


/*
virtual QModelIndex indexAt ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_INDEXAT )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETMODEL )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(1);
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETROOTINDEX )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->setRootIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSELECTIONMODEL )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelectionModel * par1 = (QItemSelectionModel *) _qt5xhb_itemGetPtr(1);
    obj->setSelectionModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void hideColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_HIDECOLUMN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hideColumn ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void hideRow ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_HIDEROW )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hideRow ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeColumnToContents ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZECOLUMNTOCONTENTS )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resizeColumnToContents ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeColumnsToContents ()
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZECOLUMNSTOCONTENTS )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resizeColumnsToContents (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeRowToContents ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZEROWTOCONTENTS )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resizeRowToContents ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeRowsToContents ()
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZEROWSTOCONTENTS )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resizeRowsToContents (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void selectColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_SELECTCOLUMN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->selectColumn ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void selectRow ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_SELECTROW )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->selectRow ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShowGrid ( bool show )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSHOWGRID )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setShowGrid ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_SHOWCOLUMN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showColumn ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showRow ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_SHOWROW )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showRow ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP

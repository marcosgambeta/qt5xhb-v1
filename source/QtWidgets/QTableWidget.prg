/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QTABLEWIDGETITEM
REQUEST QRECT
#endif

CLASS QTableWidget INHERIT QTableView

   DATA class_id INIT Class_Id_QTableWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cellWidget
   METHOD closePersistentEditor
   METHOD column
   METHOD columnCount
   METHOD currentColumn
   METHOD currentItem
   METHOD currentRow
   METHOD editItem
   METHOD horizontalHeaderItem
   METHOD item
   METHOD itemAt
   METHOD openPersistentEditor
   METHOD removeCellWidget
   METHOD row
   METHOD rowCount
   METHOD setCellWidget
   METHOD setColumnCount
   METHOD setCurrentCell
   METHOD setCurrentItem
   METHOD setHorizontalHeaderItem
   METHOD setHorizontalHeaderLabels
   METHOD setItem
   METHOD setItemPrototype
   METHOD setRangeSelected
   METHOD setRowCount
   METHOD setVerticalHeaderItem
   METHOD setVerticalHeaderLabels
   METHOD sortItems
   METHOD takeHorizontalHeaderItem
   METHOD takeItem
   METHOD takeVerticalHeaderItem
   METHOD verticalHeaderItem
   METHOD visualColumn
   METHOD visualItemRect
   METHOD visualRow
   METHOD clear
   METHOD clearContents
   METHOD insertColumn
   METHOD insertRow
   METHOD removeColumn
   METHOD removeRow
   METHOD scrollToItem

   METHOD onCellActivated
   METHOD onCellChanged
   METHOD onCellClicked
   METHOD onCellDoubleClicked
   METHOD onCellEntered
   METHOD onCellPressed
   METHOD onCurrentCellChanged
   METHOD onCurrentItemChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemPressed
   METHOD onItemSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTableWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTableWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTableWidget>
#endif

/*
QTableWidget ( QWidget * parent = 0 )
*/
void QTableWidget_new1 ()
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QTableWidget * o = new QTableWidget ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTableWidget ( int rows, int columns, QWidget * parent = 0 )
*/
void QTableWidget_new2 ()
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qt5xhb_itemGetPtr(3);
  QTableWidget * o = new QTableWidget ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTableWidget ( QWidget * parent = 0 )
//[2]QTableWidget ( int rows, int columns, QWidget * parent = 0 )

HB_FUNC_STATIC( QTABLEWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QTableWidget_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QTableWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTABLEWIDGET_DELETE )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
}

/*
QWidget * cellWidget ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CELLWIDGET )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QWidget * ptr = obj->cellWidget ( (int) hb_parni(1), (int) hb_parni(2) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void closePersistentEditor ( QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_CLOSEPERSISTENTEDITOR )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTABLEWIDGETITEM(1) )
    {
      QTableWidgetItem * par1 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
      obj->closePersistentEditor ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int column ( const QTableWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_COLUMN )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTABLEWIDGETITEM(1) )
    {
      QTableWidgetItem * par1 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->column ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int columnCount () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_COLUMNCOUNT )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->columnCount (  ) );
  }
}

/*
int currentColumn () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CURRENTCOLUMN )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->currentColumn (  ) );
  }
}

/*
QTableWidgetItem * currentItem () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CURRENTITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTableWidgetItem * ptr = obj->currentItem (  );
    _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}

/*
int currentRow () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CURRENTROW )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->currentRow (  ) );
  }
}

/*
void editItem ( QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_EDITITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTABLEWIDGETITEM(1) )
    {
      QTableWidgetItem * par1 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
      obj->editItem ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTableWidgetItem * horizontalHeaderItem ( int column ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_HORIZONTALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QTableWidgetItem * ptr = obj->horizontalHeaderItem ( (int) hb_parni(1) );
      _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTableWidgetItem * item ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QTableWidgetItem * ptr = obj->item ( (int) hb_parni(1), (int) hb_parni(2) );
      _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTableWidgetItem * itemAt ( const QPoint & point ) const
*/
void QTableWidget_itemAt1 ()
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QTableWidgetItem * ptr = obj->itemAt ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}

/*
QTableWidgetItem * itemAt ( int ax, int ay ) const
*/
void QTableWidget_itemAt2 ()
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTableWidgetItem * ptr = obj->itemAt ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}

//[1]QTableWidgetItem * itemAt ( const QPoint & point ) const
//[2]QTableWidgetItem * itemAt ( int ax, int ay ) const

HB_FUNC_STATIC( QTABLEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTableWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTableWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void openPersistentEditor ( QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_OPENPERSISTENTEDITOR )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTABLEWIDGETITEM(1) )
    {
      QTableWidgetItem * par1 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
      obj->openPersistentEditor ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeCellWidget ( int row, int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_REMOVECELLWIDGET )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->removeCellWidget ( (int) hb_parni(1), (int) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int row ( const QTableWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ROW )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTABLEWIDGETITEM(1) )
    {
      QTableWidgetItem * par1 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->row ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int rowCount () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ROWCOUNT )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->rowCount (  ) );
  }
}

/*
void setCellWidget ( int row, int column, QWidget * widget )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETCELLWIDGET )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISQWIDGET(3) )
    {
      QWidget * par3 = (QWidget *) _qt5xhb_itemGetPtr(3);
      obj->setCellWidget ( (int) hb_parni(1), (int) hb_parni(2), par3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnCount ( int columns )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETCOLUMNCOUNT )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setColumnCount ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentCell ( int row, int column )
*/
void QTableWidget_setCurrentCell1 ()
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCurrentCell ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )
*/
void QTableWidget_setCurrentCell2 ()
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = hb_parni(3);
    obj->setCurrentCell ( (int) hb_parni(1), (int) hb_parni(2),  (QItemSelectionModel::SelectionFlags) par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setCurrentCell ( int row, int column )
//[2]void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTCELL )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTableWidget_setCurrentCell1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QTableWidget_setCurrentCell2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCurrentItem ( QTableWidgetItem * item )
*/
void QTableWidget_setCurrentItem1 ()
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTableWidgetItem * par1 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->setCurrentItem ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )
*/
void QTableWidget_setCurrentItem2 ()
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTableWidgetItem * par1 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->setCurrentItem ( par1,  (QItemSelectionModel::SelectionFlags) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setCurrentItem ( QTableWidgetItem * item )
//[2]void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    QTableWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQTABLEWIDGETITEM(1) && ISNUM(2) )
  {
    QTableWidget_setCurrentItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setHorizontalHeaderItem ( int column, QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETHORIZONTALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQTABLEWIDGETITEM(2) )
    {
      QTableWidgetItem * par2 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(2);
      obj->setHorizontalHeaderItem ( (int) hb_parni(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalHeaderLabels ( const QStringList & labels )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETHORIZONTALHEADERLABELS )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
      //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
      //int i1;
      //int nLen1 = hb_arrayLen(aStrings1);
      //for (i1=0;i1<nLen1;i1++)
      //{
      //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
      //  par1 << temp;
      //}
      obj->setHorizontalHeaderLabels ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItem ( int row, int column, QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISQTABLEWIDGETITEM(3) )
    {
      QTableWidgetItem * par3 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(3);
      obj->setItem ( (int) hb_parni(1), (int) hb_parni(2), par3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemPrototype ( const QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETITEMPROTOTYPE )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTABLEWIDGETITEM(1) )
    {
      QTableWidgetItem * par1 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
      obj->setItemPrototype ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRangeSelected ( const QTableWidgetSelectionRange & range, bool select )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETRANGESELECTED )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTABLEWIDGETSELECTIONRANGE(1) && ISLOG(2) )
    {
      QTableWidgetSelectionRange  * par1 = (QTableWidgetSelectionRange  *) _qt5xhb_itemGetPtr(1);
      obj->setRangeSelected ( *par1, (bool) hb_parl(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowCount ( int rows )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETROWCOUNT )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setRowCount ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalHeaderItem ( int row, QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETVERTICALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQTABLEWIDGETITEM(2) )
    {
      QTableWidgetItem * par2 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(2);
      obj->setVerticalHeaderItem ( (int) hb_parni(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalHeaderLabels ( const QStringList & labels )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETVERTICALHEADERLABELS )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
      //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
      //int i1;
      //int nLen1 = hb_arrayLen(aStrings1);
      //for (i1=0;i1<nLen1;i1++)
      //{
      //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
      //  par1 << temp;
      //}
      obj->setVerticalHeaderLabels ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void sortItems ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SORTITEMS )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
    {
      int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
      obj->sortItems ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTableWidgetItem * takeHorizontalHeaderItem ( int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_TAKEHORIZONTALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QTableWidgetItem * ptr = obj->takeHorizontalHeaderItem ( (int) hb_parni(1) );
      _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTableWidgetItem * takeItem ( int row, int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_TAKEITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QTableWidgetItem * ptr = obj->takeItem ( (int) hb_parni(1), (int) hb_parni(2) );
      _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTableWidgetItem * takeVerticalHeaderItem ( int row )
*/
HB_FUNC_STATIC( QTABLEWIDGET_TAKEVERTICALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QTableWidgetItem * ptr = obj->takeVerticalHeaderItem ( (int) hb_parni(1) );
      _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTableWidgetItem * verticalHeaderItem ( int row ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VERTICALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QTableWidgetItem * ptr = obj->verticalHeaderItem ( (int) hb_parni(1) );
      _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int visualColumn ( int logicalColumn ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VISUALCOLUMN )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->visualColumn ( (int) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect visualItemRect ( const QTableWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VISUALITEMRECT )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTABLEWIDGETITEM(1) )
    {
      const QTableWidgetItem * par1 = (const QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
      QRect * ptr = new QRect( obj->visualItemRect ( par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int visualRow ( int logicalRow ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VISUALROW )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->visualRow ( (int) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QTABLEWIDGET_CLEAR )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearContents ()
*/
HB_FUNC_STATIC( QTABLEWIDGET_CLEARCONTENTS )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearContents (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_INSERTCOLUMN )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->insertColumn ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row )
*/
HB_FUNC_STATIC( QTABLEWIDGET_INSERTROW )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->insertRow ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_REMOVECOLUMN )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->removeColumn ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeRow ( int row )
*/
HB_FUNC_STATIC( QTABLEWIDGET_REMOVEROW )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->removeRow ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollToItem ( const QTableWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SCROLLTOITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTABLEWIDGETITEM(1) && (ISNUM(2)||ISNIL(2)) )
    {
      const QTableWidgetItem * par1 = (const QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
      int par2 = ISNIL(2)? (int) QAbstractItemView::EnsureVisible : hb_parni(2);
      obj->scrollToItem ( par1,  (QAbstractItemView::ScrollHint) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

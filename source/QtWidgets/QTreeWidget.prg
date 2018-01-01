/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTREEWIDGETITEM
REQUEST QWIDGET
REQUEST QRECT
#endif

CLASS QTreeWidget INHERIT QTreeView

   METHOD new
   METHOD delete
   METHOD addTopLevelItem
   METHOD closePersistentEditor
   METHOD columnCount
   METHOD currentColumn
   METHOD currentItem
   METHOD editItem
   METHOD headerItem
   METHOD indexOfTopLevelItem
   METHOD insertTopLevelItem
   METHOD invisibleRootItem
   METHOD isFirstItemColumnSpanned
   METHOD itemAbove
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD itemBelow
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
   METHOD setColumnCount
   METHOD setCurrentItem1
   METHOD setCurrentItem2
   METHOD setCurrentItem3
   METHOD setCurrentItem
   METHOD setFirstItemColumnSpanned
   METHOD setHeaderItem
   METHOD setHeaderLabel
   METHOD setHeaderLabels
   METHOD setItemWidget
   METHOD sortColumn
   METHOD sortItems
   METHOD takeTopLevelItem
   METHOD topLevelItem
   METHOD topLevelItemCount
   METHOD visualItemRect
   METHOD setSelectionModel
   METHOD clear
   METHOD collapseItem
   METHOD expandItem
   METHOD scrollToItem

   METHOD onCurrentItemChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemCollapsed
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemExpanded
   METHOD onItemPressed
   METHOD onItemSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTreeWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTreeWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTreeWidget>
#endif

/*
QTreeWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTREEWIDGET_NEW )
{
  QTreeWidget * o = new QTreeWidget ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTREEWIDGET_DELETE )
{
  QTreeWidget * obj = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addTopLevelItem ( QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_ADDTOPLEVELITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addTopLevelItem ( PQTREEWIDGETITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void closePersistentEditor ( QTreeWidgetItem * item, int column = 0 )
*/
HB_FUNC_STATIC( QTREEWIDGET_CLOSEPERSISTENTEDITOR )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->closePersistentEditor ( PQTREEWIDGETITEM(1), OPINT(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int columnCount () const
*/
HB_FUNC_STATIC( QTREEWIDGET_COLUMNCOUNT )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->columnCount () );
  }
}


/*
int currentColumn () const
*/
HB_FUNC_STATIC( QTREEWIDGET_CURRENTCOLUMN )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->currentColumn () );
  }
}


/*
QTreeWidgetItem * currentItem () const
*/
HB_FUNC_STATIC( QTREEWIDGET_CURRENTITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTreeWidgetItem * ptr = obj->currentItem ();
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}


/*
void editItem ( QTreeWidgetItem * item, int column = 0 )
*/
HB_FUNC_STATIC( QTREEWIDGET_EDITITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->editItem ( PQTREEWIDGETITEM(1), OPINT(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QTreeWidgetItem *  headerItem () const
*/
HB_FUNC_STATIC( QTREEWIDGET_HEADERITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTreeWidgetItem * ptr = obj->headerItem ();
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}


/*
int indexOfTopLevelItem ( QTreeWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_INDEXOFTOPLEVELITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->indexOfTopLevelItem ( PQTREEWIDGETITEM(1) ) );
  }
}


/*
void insertTopLevelItem ( int index, QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_INSERTTOPLEVELITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertTopLevelItem ( PINT(1), PQTREEWIDGETITEM(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QTreeWidgetItem * invisibleRootItem () const
*/
HB_FUNC_STATIC( QTREEWIDGET_INVISIBLEROOTITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTreeWidgetItem * ptr = obj->invisibleRootItem ();
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}


/*
bool isFirstItemColumnSpanned ( const QTreeWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_ISFIRSTITEMCOLUMNSPANNED )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTreeWidgetItem * par1 = (const QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->isFirstItemColumnSpanned ( par1 ) );
  }
}


/*
QTreeWidgetItem * itemAbove ( const QTreeWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_ITEMABOVE )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTreeWidgetItem * par1 = (const QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    QTreeWidgetItem * ptr = obj->itemAbove ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}


/*
QTreeWidgetItem * itemAt ( const QPoint & p ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_ITEMAT1 )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTreeWidgetItem * ptr = obj->itemAt ( *PQPOINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}

/*
QTreeWidgetItem * itemAt ( int x, int y ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_ITEMAT2 )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QTreeWidgetItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


//[1]QTreeWidgetItem * itemAt ( const QPoint & p ) const
//[2]QTreeWidgetItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QTREEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QTREEWIDGET_ITEMAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTREEWIDGET_ITEMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTreeWidgetItem *  itemBelow ( const QTreeWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_ITEMBELOW )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTreeWidgetItem * par1 = (const QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    QTreeWidgetItem * ptr = obj->itemBelow ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}


/*
QWidget * itemWidget ( QTreeWidgetItem * item, int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_ITEMWIDGET )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->itemWidget ( PQTREEWIDGETITEM(1), PINT(2) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
void openPersistentEditor ( QTreeWidgetItem * item, int column = 0 )
*/
HB_FUNC_STATIC( QTREEWIDGET_OPENPERSISTENTEDITOR )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->openPersistentEditor ( PQTREEWIDGETITEM(1), OPINT(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeItemWidget ( QTreeWidgetItem * item, int column )
*/
HB_FUNC_STATIC( QTREEWIDGET_REMOVEITEMWIDGET )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeItemWidget ( PQTREEWIDGETITEM(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setColumnCount ( int columns )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETCOLUMNCOUNT )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setColumnCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentItem ( QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETCURRENTITEM1 )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentItem ( PQTREEWIDGETITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentItem ( QTreeWidgetItem * item, int column )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETCURRENTITEM2 )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentItem ( PQTREEWIDGETITEM(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentItem ( QTreeWidgetItem * item, int column, QItemSelectionModel::SelectionFlags command )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETCURRENTITEM3 )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = hb_parni(3);
    obj->setCurrentItem ( PQTREEWIDGETITEM(1), PINT(2), (QItemSelectionModel::SelectionFlags) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setCurrentItem ( QTreeWidgetItem * item )
//[2]void setCurrentItem ( QTreeWidgetItem * item, int column )
//[3]void setCurrentItem ( QTreeWidgetItem * item, int column, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTREEWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
  {
    HB_FUNC_EXEC( QTREEWIDGET_SETCURRENTITEM1 );
  }
  else if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTREEWIDGET_SETCURRENTITEM2 );
  }
  else if( ISNUMPAR(3) && ISQTREEWIDGETITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QTREEWIDGET_SETCURRENTITEM3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFirstItemColumnSpanned ( const QTreeWidgetItem * item, bool span )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETFIRSTITEMCOLUMNSPANNED )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->setFirstItemColumnSpanned ( par1, PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeaderItem ( QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETHEADERITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeaderItem ( PQTREEWIDGETITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeaderLabel ( const QString & label )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETHEADERLABEL )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeaderLabel ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeaderLabels ( const QStringList & labels )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETHEADERLABELS )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeaderLabels ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemWidget ( QTreeWidgetItem * item, int column, QWidget * widget )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETITEMWIDGET )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setItemWidget ( PQTREEWIDGETITEM(1), PINT(2), PQWIDGET(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int sortColumn () const
*/
HB_FUNC_STATIC( QTREEWIDGET_SORTCOLUMN )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->sortColumn () );
  }
}


/*
void sortItems ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QTREEWIDGET_SORTITEMS )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->sortItems ( PINT(1), (Qt::SortOrder) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTreeWidgetItem *  takeTopLevelItem ( int index )
*/
HB_FUNC_STATIC( QTREEWIDGET_TAKETOPLEVELITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QTreeWidgetItem * ptr = obj->takeTopLevelItem ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
QTreeWidgetItem *  topLevelItem ( int index ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_TOPLEVELITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QTreeWidgetItem * ptr = obj->topLevelItem ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
int topLevelItemCount () const
*/
HB_FUNC_STATIC( QTREEWIDGET_TOPLEVELITEMCOUNT )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->topLevelItemCount () );
  }
}


/*
QRect visualItemRect ( const QTreeWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_VISUALITEMRECT )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->visualItemRect ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETSELECTIONMODEL )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSelectionModel ( PQITEMSELECTIONMODEL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QTREEWIDGET_CLEAR )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void collapseItem ( const QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_COLLAPSEITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->collapseItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void expandItem ( const QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_EXPANDITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->expandItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scrollToItem ( const QTreeWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QTREEWIDGET_SCROLLTOITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QAbstractItemView::EnsureVisible : hb_parni(2);
    obj->scrollToItem ( par1, (QAbstractItemView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

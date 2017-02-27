/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QTREEWIDGETITEM
REQUEST QWIDGET
REQUEST QRECT
#endif

CLASS QTreeWidget INHERIT QTreeView

   DATA class_id INIT Class_Id_QTreeWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTreeWidget>
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
#include <QTreeWidget>
#endif
#endif

/*
QTreeWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTREEWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QTreeWidget * o = new QTreeWidget ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTREEWIDGET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void addTopLevelItem ( QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_ADDTOPLEVELITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->addTopLevelItem ( par1 );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->closePersistentEditor ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
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
    hb_retni( obj->columnCount (  ) );
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
    hb_retni( obj->currentColumn (  ) );
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
    QTreeWidgetItem * ptr = obj->currentItem (  );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->editItem ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
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
    QTreeWidgetItem * ptr = obj->headerItem (  );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->indexOfTopLevelItem ( par1 ) );
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
    QTreeWidgetItem * par2 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(2);
    obj->insertTopLevelItem ( (int) hb_parni(1), par2 );
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
    QTreeWidgetItem * ptr = obj->invisibleRootItem (  );
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
    hb_retl( obj->isFirstItemColumnSpanned ( par1 ) );
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
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QTreeWidgetItem * ptr = obj->itemAt ( *par1 );
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
    QTreeWidgetItem * ptr = obj->itemAt ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    QWidget * ptr = obj->itemWidget ( par1, (int) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->openPersistentEditor ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->removeItemWidget ( par1, (int) hb_parni(2) );
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
    obj->setColumnCount ( (int) hb_parni(1) );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->setCurrentItem ( par1 );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->setCurrentItem ( par1, (int) hb_parni(2) );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    int par3 = hb_parni(3);
    obj->setCurrentItem ( par1, (int) hb_parni(2),  (QItemSelectionModel::SelectionFlags) par3 );
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
    obj->setFirstItemColumnSpanned ( par1, (bool) hb_parl(2) );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->setHeaderItem ( par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setHeaderLabel ( par1 );
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
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setHeaderLabels ( par1 );
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
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
    QWidget * par3 = (QWidget *) _qt5xhb_itemGetPtr(3);
    obj->setItemWidget ( par1, (int) hb_parni(2), par3 );
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
    hb_retni( obj->sortColumn (  ) );
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
    int par2 = hb_parni(2);
    obj->sortItems ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
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
    QTreeWidgetItem * ptr = obj->takeTopLevelItem ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
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
    QTreeWidgetItem * ptr = obj->topLevelItem ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
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
    hb_retni( obj->topLevelItemCount (  ) );
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
    QItemSelectionModel * par1 = (QItemSelectionModel *) _qt5xhb_itemGetPtr(1);
    obj->setSelectionModel ( par1 );
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
    obj->clear (  );
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
    obj->scrollToItem ( par1,  (QAbstractItemView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

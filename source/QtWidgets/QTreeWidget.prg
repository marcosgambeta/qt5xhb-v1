/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QTREEWIDGETITEM
REQUEST QWIDGET
#endif

CLASS QTreeWidget INHERIT QTreeView

   METHOD new
   METHOD delete
   METHOD columnCount
   METHOD setColumnCount
   METHOD topLevelItemCount
   METHOD addTopLevelItem
   METHOD closePersistentEditor
   METHOD currentColumn
   METHOD currentItem
   METHOD editItem
   METHOD headerItem
   METHOD indexOfTopLevelItem
   METHOD insertTopLevelItem
   METHOD invisibleRootItem
   METHOD isFirstItemColumnSpanned
   METHOD itemAbove
   METHOD itemAt
   METHOD itemBelow
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
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

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QTreeWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QTreeWidget>
#endif

/*
explicit QTreeWidget(QWidget *parent = nullptr)
*/
HB_FUNC_STATIC( QTREEWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QTreeWidget * o = new QTreeWidget ( OPQWIDGET(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QTreeWidget()
*/
HB_FUNC_STATIC( QTREEWIDGET_DELETE )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();

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
int columnCount () const
*/
HB_FUNC_STATIC( QTREEWIDGET_COLUMNCOUNT )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnCount () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setColumnCount ( int columns )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETCOLUMNCOUNT )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setColumnCount ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int topLevelItemCount () const
*/
HB_FUNC_STATIC( QTREEWIDGET_TOPLEVELITEMCOUNT )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->topLevelItemCount () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void addTopLevelItem ( QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_ADDTOPLEVELITEM )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      obj->addTopLevelItem ( PQTREEWIDGETITEM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && ISOPTNUM(2) )
    {
#endif
      obj->closePersistentEditor ( PQTREEWIDGETITEM(1), OPINT(2,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int currentColumn () const
*/
HB_FUNC_STATIC( QTREEWIDGET_CURRENTCOLUMN )
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentColumn () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTreeWidgetItem * ptr = obj->currentItem ();
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && ISOPTNUM(2) )
    {
#endif
      obj->editItem ( PQTREEWIDGETITEM(1), OPINT(2,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTreeWidgetItem * ptr = obj->headerItem ();
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      RINT( obj->indexOfTopLevelItem ( PQTREEWIDGETITEM(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQTREEWIDGETITEM(2) )
    {
#endif
      obj->insertTopLevelItem ( PINT(1), PQTREEWIDGETITEM(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTreeWidgetItem * ptr = obj->invisibleRootItem ();
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      RBOOL( obj->isFirstItemColumnSpanned ( PQTREEWIDGETITEM(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      QTreeWidgetItem * ptr = obj->itemAbove ( PQTREEWIDGETITEM(1) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QTreeWidgetItem * itemAt ( const QPoint & p ) const
*/
void QTreeWidget_itemAt1 ()
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QTreeWidgetItem * ptr = obj->itemAt ( *PQPOINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM", false );
  }
}

/*
QTreeWidgetItem * itemAt ( int x, int y ) const
*/
void QTreeWidget_itemAt2 ()
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QTreeWidgetItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM", false );
  }
}

//[1]QTreeWidgetItem * itemAt ( const QPoint & p ) const
//[2]QTreeWidgetItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QTREEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTreeWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTreeWidget_itemAt2();
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      QTreeWidgetItem * ptr = obj->itemBelow ( PQTREEWIDGETITEM(1) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && ISNUM(2) )
    {
#endif
      QWidget * ptr = obj->itemWidget ( PQTREEWIDGETITEM(1), PINT(2) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && ISOPTNUM(2) )
    {
#endif
      obj->openPersistentEditor ( PQTREEWIDGETITEM(1), OPINT(2,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && ISNUM(2) )
    {
#endif
      obj->removeItemWidget ( PQTREEWIDGETITEM(1), PINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentItem ( QTreeWidgetItem * item )
*/
void QTreeWidget_setCurrentItem1 ()
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
void QTreeWidget_setCurrentItem2 ()
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
void QTreeWidget_setCurrentItem3 ()
{
  QTreeWidget * obj = (QTreeWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setCurrentItem ( PQTREEWIDGETITEM(1), PINT(2), (QItemSelectionModel::SelectionFlags) hb_parni(3) );
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
    QTreeWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && ISNUM(2) )
  {
    QTreeWidget_setCurrentItem2();
  }
  else if( ISNUMPAR(3) && ISQTREEWIDGETITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    QTreeWidget_setCurrentItem3();
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && ISLOG(2) )
    {
#endif
      obj->setFirstItemColumnSpanned ( PQTREEWIDGETITEM(1), PBOOL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      obj->setHeaderItem ( PQTREEWIDGETITEM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setHeaderLabel ( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setHeaderLabels ( PQSTRINGLIST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQTREEWIDGETITEM(1) && ISNUM(2) && ISQWIDGET(3) )
    {
#endif
      obj->setItemWidget ( PQTREEWIDGETITEM(1), PINT(2), PQWIDGET(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->sortColumn () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->sortItems ( PINT(1), (Qt::SortOrder) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QTreeWidgetItem * ptr = obj->takeTopLevelItem ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QTreeWidgetItem * ptr = obj->topLevelItem ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      QRect * ptr = new QRect( obj->visualItemRect ( PQTREEWIDGETITEM(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQITEMSELECTIONMODEL(1) )
    {
#endif
      obj->setSelectionModel ( PQITEMSELECTIONMODEL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      obj->collapseItem ( PQTREEWIDGETITEM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      obj->expandItem ( PQTREEWIDGETITEM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && ISOPTNUM(2) )
    {
#endif
      obj->scrollToItem ( PQTREEWIDGETITEM(1), ISNIL(2)? (QAbstractItemView::ScrollHint) QAbstractItemView::EnsureVisible : (QAbstractItemView::ScrollHint) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QTreeWidgetSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QTREEWIDGET_ONCURRENTITEMCHANGED )
{
  QTreeWidgetSlots_connect_signal( "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)", "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)" );
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMACTIVATED )
{
  QTreeWidgetSlots_connect_signal( "itemActivated(QTreeWidgetItem*,int)", "itemActivated(QTreeWidgetItem*,int)" );
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMCHANGED )
{
  QTreeWidgetSlots_connect_signal( "itemChanged(QTreeWidgetItem*,int)", "itemChanged(QTreeWidgetItem*,int)" );
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMCLICKED )
{
  QTreeWidgetSlots_connect_signal( "itemClicked(QTreeWidgetItem*,int)", "itemClicked(QTreeWidgetItem*,int)" );
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMCOLLAPSED )
{
  QTreeWidgetSlots_connect_signal( "itemCollapsed(QTreeWidgetItem*)", "itemCollapsed(QTreeWidgetItem*)" );
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMDOUBLECLICKED )
{
  QTreeWidgetSlots_connect_signal( "itemDoubleClicked(QTreeWidgetItem*,int)", "itemDoubleClicked(QTreeWidgetItem*,int)" );
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMENTERED )
{
  QTreeWidgetSlots_connect_signal( "itemEntered(QTreeWidgetItem*,int)", "itemEntered(QTreeWidgetItem*,int)" );
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMEXPANDED )
{
  QTreeWidgetSlots_connect_signal( "itemExpanded(QTreeWidgetItem*)", "itemExpanded(QTreeWidgetItem*)" );
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMPRESSED )
{
  QTreeWidgetSlots_connect_signal( "itemPressed(QTreeWidgetItem*,int)", "itemPressed(QTreeWidgetItem*,int)" );
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMSELECTIONCHANGED )
{
  QTreeWidgetSlots_connect_signal( "itemSelectionChanged()", "itemSelectionChanged()" );
}

#pragma ENDDUMP

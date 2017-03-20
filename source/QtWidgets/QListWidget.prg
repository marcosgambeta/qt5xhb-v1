/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLISTWIDGETITEM
REQUEST QWIDGET
REQUEST QRECT
#endif

CLASS QListWidget INHERIT QListView

   DATA class_id INIT Class_Id_QListWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addItem1
   METHOD addItem2
   METHOD addItem
   METHOD addItems
   METHOD closePersistentEditor
   METHOD count
   METHOD currentItem
   METHOD currentRow
   METHOD editItem
   METHOD insertItem1
   METHOD insertItem2
   METHOD insertItem
   METHOD insertItems
   METHOD isSortingEnabled
   METHOD item
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
   METHOD row
   METHOD setCurrentItem1
   METHOD setCurrentItem2
   METHOD setCurrentItem
   METHOD setCurrentRow1
   METHOD setCurrentRow2
   METHOD setCurrentRow
   METHOD setItemWidget
   METHOD setSortingEnabled
   METHOD sortItems
   METHOD takeItem
   METHOD visualItemRect
   METHOD dropEvent
   METHOD clear
   METHOD scrollToItem
   METHOD onCurrentItemChanged
   METHOD onCurrentRowChanged
   METHOD onCurrentTextChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemPressed
   METHOD onItemSelectionChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QListWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QListWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QListWidget>
#endif

/*
QListWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLISTWIDGET_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QListWidget * o = new QListWidget ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QLISTWIDGET_DELETE )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addItem ( const QString & label )
*/
HB_FUNC_STATIC( QLISTWIDGET_ADDITEM1 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addItem ( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_ADDITEM2 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addItem ( const QString & label )
//[2]void addItem ( QListWidgetItem * item )

HB_FUNC_STATIC( QLISTWIDGET_ADDITEM )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QLISTWIDGET_ADDITEM1 );
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    HB_FUNC_EXEC( QLISTWIDGET_ADDITEM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addItems ( const QStringList & labels )
*/
HB_FUNC_STATIC( QLISTWIDGET_ADDITEMS )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
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
    obj->addItems ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void closePersistentEditor ( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_CLOSEPERSISTENTEDITOR )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->closePersistentEditor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QLISTWIDGET_COUNT )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
QListWidgetItem * currentItem () const
*/
HB_FUNC_STATIC( QLISTWIDGET_CURRENTITEM )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * ptr = obj->currentItem (  );
    _qt5xhb_createReturnClass ( ptr, "QLISTWIDGETITEM" );
  }
}


/*
int currentRow () const
*/
HB_FUNC_STATIC( QLISTWIDGET_CURRENTROW )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentRow (  ) );
  }
}


/*
void editItem ( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_EDITITEM )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->editItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void insertItem ( int row, QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_INSERTITEM1 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par2 = (QListWidgetItem *) _qt5xhb_itemGetPtr(2);
    obj->insertItem ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertItem ( int row, const QString & label )
*/
HB_FUNC_STATIC( QLISTWIDGET_INSERTITEM2 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->insertItem ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insertItem ( int row, QListWidgetItem * item )
//[2]void insertItem ( int row, const QString & label )

HB_FUNC_STATIC( QLISTWIDGET_INSERTITEM )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQLISTWIDGETITEM(2) )
  {
    HB_FUNC_EXEC( QLISTWIDGET_INSERTITEM1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLISTWIDGET_INSERTITEM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insertItems ( int row, const QStringList & labels )
*/
HB_FUNC_STATIC( QLISTWIDGET_INSERTITEMS )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
par2 << temp;
}
    obj->insertItems ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isSortingEnabled () const
*/
HB_FUNC_STATIC( QLISTWIDGET_ISSORTINGENABLED )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSortingEnabled (  ) );
  }
}


/*
QListWidgetItem * item ( int row ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ITEM )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QListWidgetItem * ptr = obj->item ( (int) hb_parni(1) );
      _qt5xhb_createReturnClass ( ptr, "QLISTWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
QListWidgetItem * itemAt ( const QPoint & p ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ITEMAT1 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QListWidgetItem * ptr = obj->itemAt ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QLISTWIDGETITEM" );
  }
}

/*
QListWidgetItem * itemAt ( int x, int y ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ITEMAT2 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QListWidgetItem * ptr = obj->itemAt ( (int) hb_parni(1), (int) hb_parni(2) );
      _qt5xhb_createReturnClass ( ptr, "QLISTWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


//[1]QListWidgetItem * itemAt ( const QPoint & p ) const
//[2]QListWidgetItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QLISTWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QLISTWIDGET_ITEMAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLISTWIDGET_ITEMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWidget * itemWidget ( QListWidgetItem * item ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ITEMWIDGET )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    QWidget * ptr = obj->itemWidget ( par1 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
void openPersistentEditor ( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_OPENPERSISTENTEDITOR )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->openPersistentEditor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeItemWidget ( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_REMOVEITEMWIDGET )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->removeItemWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int row ( const QListWidgetItem * item ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ROW )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->row ( par1 ) );
  }
}



/*
void setCurrentItem ( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTITEM1 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    obj->setCurrentItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )
*/
HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTITEM2 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->setCurrentItem ( par1,  (QItemSelectionModel::SelectionFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setCurrentItem ( QListWidgetItem * item )
//[2]void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    HB_FUNC_EXEC( QLISTWIDGET_SETCURRENTITEM1 );
  }
  else if( ISNUMPAR(2) && ISQLISTWIDGETITEM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLISTWIDGET_SETCURRENTITEM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCurrentRow ( int row )
*/
HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTROW1 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentRow ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )
*/
HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTROW2 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      int par2 = hb_parni(2);
      obj->setCurrentRow ( (int) hb_parni(1),  (QItemSelectionModel::SelectionFlags) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setCurrentRow ( int row )
//[2]void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTROW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLISTWIDGET_SETCURRENTROW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLISTWIDGET_SETCURRENTROW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setItemWidget ( QListWidgetItem * item, QWidget * widget )
*/
HB_FUNC_STATIC( QLISTWIDGET_SETITEMWIDGET )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    obj->setItemWidget ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QLISTWIDGET_SETSORTINGENABLED )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSortingEnabled ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void sortItems ( Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QLISTWIDGET_SORTITEMS )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::AscendingOrder : hb_parni(1);
    obj->sortItems (  (Qt::SortOrder) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QListWidgetItem * takeItem ( int row )
*/
HB_FUNC_STATIC( QLISTWIDGET_TAKEITEM )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QListWidgetItem * ptr = obj->takeItem ( (int) hb_parni(1) );
      _qt5xhb_createReturnClass ( ptr, "QLISTWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
QRect visualItemRect ( const QListWidgetItem * item ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_VISUALITEMRECT )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QListWidgetItem * par1 = (const QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->visualItemRect ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual void dropEvent ( QDropEvent * event )
*/
HB_FUNC_STATIC( QLISTWIDGET_DROPEVENT )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDropEvent * par1 = (QDropEvent *) _qt5xhb_itemGetPtr(1);
    obj->dropEvent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QLISTWIDGET_CLEAR )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scrollToItem ( const QListWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QLISTWIDGET_SCROLLTOITEM )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QListWidgetItem * par1 = (const QListWidgetItem *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QAbstractItemView::EnsureVisible : hb_parni(2);
    obj->scrollToItem ( par1,  (QAbstractItemView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

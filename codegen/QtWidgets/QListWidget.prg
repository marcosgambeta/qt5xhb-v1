$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLISTWIDGETITEM
REQUEST QWIDGET
REQUEST QRECT
#endif

CLASS QListWidget INHERIT QListView

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

$destructor

#pragma BEGINDUMP

$includes

/*
QListWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLISTWIDGET_NEW )
{
  QListWidget * o = new QListWidget ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void addItem ( const QString & label )
*/
HB_FUNC_STATIC( QLISTWIDGET_ADDITEM1 )
{
  QListWidget * obj = (QListWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addItem ( PQSTRING(1) );
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
    obj->addItem ( PQLISTWIDGETITEM(1) );
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
    obj->addItems ( PQSTRINGLIST(1) );
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
    obj->closePersistentEditor ( PQLISTWIDGETITEM(1) );
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
    RINT( obj->count () );
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
    QListWidgetItem * ptr = obj->currentItem ();
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
    RINT( obj->currentRow () );
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
    obj->editItem ( PQLISTWIDGETITEM(1) );
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
    obj->insertItem ( PINT(1), PQLISTWIDGETITEM(2) );
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
    obj->insertItem ( PINT(1), PQSTRING(2) );
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
    obj->insertItems ( PINT(1), PQSTRINGLIST(2) );
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
    RBOOL( obj->isSortingEnabled () );
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
      QListWidgetItem * ptr = obj->item ( PINT(1) );
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
    QListWidgetItem * ptr = obj->itemAt ( *PQPOINT(1) );
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
      QListWidgetItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
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
    QWidget * ptr = obj->itemWidget ( PQLISTWIDGETITEM(1) );
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
    obj->openPersistentEditor ( PQLISTWIDGETITEM(1) );
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
    obj->removeItemWidget ( PQLISTWIDGETITEM(1) );
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
    RINT( obj->row ( par1 ) );
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
    obj->setCurrentItem ( PQLISTWIDGETITEM(1) );
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
    int par2 = hb_parni(2);
    obj->setCurrentItem ( PQLISTWIDGETITEM(1), (QItemSelectionModel::SelectionFlags) par2 );
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
      obj->setCurrentRow ( PINT(1) );
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
      obj->setCurrentRow ( PINT(1), (QItemSelectionModel::SelectionFlags) par2 );
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
    obj->setItemWidget ( PQLISTWIDGETITEM(1), PQWIDGET(2) );
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
      obj->setSortingEnabled ( PBOOL(1) );
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
    obj->sortItems ( (Qt::SortOrder) par1 );
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
      QListWidgetItem * ptr = obj->takeItem ( PINT(1) );
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
    obj->dropEvent ( PQDROPEVENT(1) );
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
    obj->clear ();
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
    obj->scrollToItem ( par1, (QAbstractItemView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

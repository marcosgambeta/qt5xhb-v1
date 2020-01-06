%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QListView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QListWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void addItem ( const QString & label )
$internalMethod=|void|addItem,addItem1|const QString &

$prototype=void addItem ( QListWidgetItem * item )
$internalMethod=|void|addItem,addItem2|QListWidgetItem *

//[1]void addItem ( const QString & label )
//[2]void addItem ( QListWidgetItem * item )

HB_FUNC_STATIC( QLISTWIDGET_ADDITEM )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QListWidget_addItem1();
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidget_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addItem

$prototype=void addItems ( const QStringList & labels )
$method=|void|addItems|const QStringList &

$prototype=void closePersistentEditor ( QListWidgetItem * item )
$method=|void|closePersistentEditor|QListWidgetItem *

$prototype=int count () const
$method=|int|count|

$prototype=QListWidgetItem * currentItem () const
$method=|QListWidgetItem *|currentItem|

$prototype=int currentRow () const
$method=|int|currentRow|

$prototype=void editItem ( QListWidgetItem * item )
$method=|void|editItem|QListWidgetItem *

$prototype=void insertItem ( int row, QListWidgetItem * item )
$internalMethod=|void|insertItem,insertItem1|int,QListWidgetItem *

$prototype=void insertItem ( int row, const QString & label )
$internalMethod=|void|insertItem,insertItem2|int,const QString &

//[1]void insertItem ( int row, QListWidgetItem * item )
//[2]void insertItem ( int row, const QString & label )

HB_FUNC_STATIC( QLISTWIDGET_INSERTITEM )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQLISTWIDGETITEM(2) )
  {
    QListWidget_insertItem1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QListWidget_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertItem

$prototype=void insertItems ( int row, const QStringList & labels )
$method=|void|insertItems|int,const QStringList &

$prototype=bool isSortingEnabled () const
$method=|bool|isSortingEnabled|

$prototype=QListWidgetItem * item ( int row ) const
$method=|QListWidgetItem *|item|int

$prototype=QListWidgetItem * itemAt ( const QPoint & p ) const
$internalMethod=|QListWidgetItem *|itemAt,itemAt1|const QPoint &

$prototype=QListWidgetItem * itemAt ( int x, int y ) const
$internalMethod=|QListWidgetItem *|itemAt,itemAt2|int,int

//[1]QListWidgetItem * itemAt ( const QPoint & p ) const
//[2]QListWidgetItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QLISTWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QListWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QListWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototype=QWidget * itemWidget ( QListWidgetItem * item ) const
$method=|QWidget *|itemWidget|QListWidgetItem *

$prototype=void openPersistentEditor ( QListWidgetItem * item )
$method=|void|openPersistentEditor|QListWidgetItem *

$prototype=void removeItemWidget ( QListWidgetItem * item )
$method=|void|removeItemWidget|QListWidgetItem *

$prototype=int row ( const QListWidgetItem * item ) const
$method=|int|row|const QListWidgetItem *

$prototype=void setCurrentItem ( QListWidgetItem * item )
$internalMethod=|void|setCurrentItem,setCurrentItem1|QListWidgetItem *

$prototype=void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentItem,setCurrentItem2|QListWidgetItem *,QItemSelectionModel::SelectionFlags

//[1]void setCurrentItem ( QListWidgetItem * item )
//[2]void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQLISTWIDGETITEM(1) && ISNUM(2) )
  {
    QListWidget_setCurrentItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCurrentItem

$prototype=void setCurrentRow ( int row )
$internalMethod=|void|setCurrentRow,setCurrentRow1|int

$prototype=void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentRow,setCurrentRow2|int,QItemSelectionModel::SelectionFlags

//[1]void setCurrentRow ( int row )
//[2]void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTROW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QListWidget_setCurrentRow1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QListWidget_setCurrentRow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCurrentRow

$prototype=void setItemWidget ( QListWidgetItem * item, QWidget * widget )
$method=|void|setItemWidget|QListWidgetItem *,QWidget *

$prototype=void setSortingEnabled ( bool enable )
$method=|void|setSortingEnabled|bool

$prototype=void sortItems ( Qt::SortOrder order = Qt::AscendingOrder )
$method=|void|sortItems|Qt::SortOrder=Qt::AscendingOrder

$prototype=QListWidgetItem * takeItem ( int row )
$method=|QListWidgetItem *|takeItem|int

$prototype=QRect visualItemRect ( const QListWidgetItem * item ) const
$method=|QRect|visualItemRect|const QListWidgetItem *

$prototype=virtual void dropEvent ( QDropEvent * event )
$virtualMethod=|void|dropEvent|QDropEvent *

$prototype=void clear ()
$method=|void|clear|

$prototype=void scrollToItem ( const QListWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
$method=|void|scrollToItem|const QListWidgetItem *,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

$beginSignals
$signal=|currentItemChanged(QListWidgetItem*,QListWidgetItem*)
$signal=|currentRowChanged(int)
$signal=|currentTextChanged(QString)
$signal=|itemActivated(QListWidgetItem*)
$signal=|itemChanged(QListWidgetItem*)
$signal=|itemClicked(QListWidgetItem*)
$signal=|itemDoubleClicked(QListWidgetItem*)
$signal=|itemEntered(QListWidgetItem*)
$signal=|itemPressed(QListWidgetItem*)
$signal=|itemSelectionChanged()
$endSignals

#pragma ENDDUMP

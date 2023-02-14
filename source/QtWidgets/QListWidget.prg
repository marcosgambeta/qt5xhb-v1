/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLISTWIDGETITEM
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QListWidget INHERIT QListView

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addItems
   METHOD closePersistentEditor
   METHOD count
   METHOD currentItem
   METHOD currentRow
   METHOD editItem
   METHOD insertItem
   METHOD insertItems
   METHOD isSortingEnabled
   METHOD item
   METHOD itemAt
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
   METHOD row
   METHOD setCurrentItem
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

PROCEDURE destroyObject() CLASS QListWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QListWidget>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QListWidget>
#endif

/*
QListWidget( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLISTWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||HB_ISNIL(1)) )
  {
    QListWidget * obj = new QListWidget( OPQWIDGET(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QLISTWIDGET_DELETE )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QLISTWIDGET_ADDITEM )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    void addItem( const QString & label )
    */
    QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addItem( PQSTRING(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    /*
    void addItem( QListWidgetItem * item )
    */
    QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addItem( PQLISTWIDGETITEM(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void addItems( const QStringList & labels )
*/
HB_FUNC_STATIC( QLISTWIDGET_ADDITEMS )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->addItems( PQSTRINGLIST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void closePersistentEditor( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_CLOSEPERSISTENTEDITOR )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
#endif
      obj->closePersistentEditor( PQLISTWIDGETITEM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int count() const
*/
HB_FUNC_STATIC( QLISTWIDGET_COUNT )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QListWidgetItem * currentItem() const
*/
HB_FUNC_STATIC( QLISTWIDGET_CURRENTITEM )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QListWidgetItem * ptr = obj->currentItem();
      Qt5xHb::createReturnClass(ptr, "QLISTWIDGETITEM", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int currentRow() const
*/
HB_FUNC_STATIC( QLISTWIDGET_CURRENTROW )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentRow() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void editItem( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_EDITITEM )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
#endif
      obj->editItem( PQLISTWIDGETITEM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QLISTWIDGET_INSERTITEM )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && ISQLISTWIDGETITEM(2) )
  {
    /*
    void insertItem( int row, QListWidgetItem * item )
    */
    QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->insertItem( PINT(1), PQLISTWIDGETITEM(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
  {
    /*
    void insertItem( int row, const QString & label )
    */
    QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->insertItem( PINT(1), PQSTRING(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void insertItems( int row, const QStringList & labels )
*/
HB_FUNC_STATIC( QLISTWIDGET_INSERTITEMS )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISARRAY(2) )
    {
#endif
      obj->insertItems( PINT(1), PQSTRINGLIST(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isSortingEnabled() const
*/
HB_FUNC_STATIC( QLISTWIDGET_ISSORTINGENABLED )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSortingEnabled() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QListWidgetItem * item( int row ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ITEM )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QListWidgetItem * ptr = obj->item( PINT(1) );
      Qt5xHb::createReturnClass(ptr, "QLISTWIDGETITEM", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QLISTWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    QListWidgetItem * itemAt( const QPoint & p ) const
    */
    QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QListWidgetItem * ptr = obj->itemAt( *PQPOINT(1) );
      Qt5xHb::createReturnClass(ptr, "QLISTWIDGETITEM", false);
    }
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QListWidgetItem * itemAt( int x, int y ) const
    */
    QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QListWidgetItem * ptr = obj->itemAt( PINT(1), PINT(2) );
      Qt5xHb::createReturnClass(ptr, "QLISTWIDGETITEM", false);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QWidget * itemWidget( QListWidgetItem * item ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ITEMWIDGET )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
#endif
      QWidget * ptr = obj->itemWidget( PQLISTWIDGETITEM(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void openPersistentEditor( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_OPENPERSISTENTEDITOR )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
#endif
      obj->openPersistentEditor( PQLISTWIDGETITEM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void removeItemWidget( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_REMOVEITEMWIDGET )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
#endif
      obj->removeItemWidget( PQLISTWIDGETITEM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int row( const QListWidgetItem * item ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ROW )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
#endif
      RINT( obj->row( PQLISTWIDGETITEM(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    /*
    void setCurrentItem( QListWidgetItem * item )
    */
    QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->setCurrentItem( PQLISTWIDGETITEM(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && ISQLISTWIDGETITEM(1) && HB_ISNUM(2) )
  {
    /*
    void setCurrentItem( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )
    */
    QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->setCurrentItem( PQLISTWIDGETITEM(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTROW )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void setCurrentRow( int row )
    */
    QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->setCurrentRow( PINT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void setCurrentRow( int row, QItemSelectionModel::SelectionFlags command )
    */
    QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->setCurrentRow( PINT(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setItemWidget( QListWidgetItem * item, QWidget * widget )
*/
HB_FUNC_STATIC( QLISTWIDGET_SETITEMWIDGET )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQLISTWIDGETITEM(1) && ISQWIDGET(2) )
    {
#endif
      obj->setItemWidget( PQLISTWIDGETITEM(1), PQWIDGET(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setSortingEnabled( bool enable )
*/
HB_FUNC_STATIC( QLISTWIDGET_SETSORTINGENABLED )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setSortingEnabled( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void sortItems( Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QLISTWIDGET_SORTITEMS )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      obj->sortItems( HB_ISNIL(1)? (Qt::SortOrder) Qt::AscendingOrder : (Qt::SortOrder) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QListWidgetItem * takeItem( int row )
*/
HB_FUNC_STATIC( QLISTWIDGET_TAKEITEM )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QListWidgetItem * ptr = obj->takeItem( PINT(1) );
      Qt5xHb::createReturnClass(ptr, "QLISTWIDGETITEM", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QRect visualItemRect( const QListWidgetItem * item ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_VISUALITEMRECT )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
#endif
      QRect * ptr = new QRect( obj->visualItemRect( PQLISTWIDGETITEM(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void dropEvent( QDropEvent * event )
*/
HB_FUNC_STATIC( QLISTWIDGET_DROPEVENT )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDROPEVENT(1) )
    {
#endif
      obj->dropEvent( PQDROPEVENT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void clear()
*/
HB_FUNC_STATIC( QLISTWIDGET_CLEAR )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void scrollToItem( const QListWidgetItem * item, QAbstractItemView::ScrollHint hint = QAbstractItemView::EnsureVisible )
*/
HB_FUNC_STATIC( QLISTWIDGET_SCROLLTOITEM )
{
  QListWidget * obj = (QListWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQLISTWIDGETITEM(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      obj->scrollToItem( PQLISTWIDGETITEM(1), HB_ISNIL(2)? (QAbstractItemView::ScrollHint) QAbstractItemView::EnsureVisible : (QAbstractItemView::ScrollHint) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QListWidgetSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QLISTWIDGET_ONCURRENTITEMCHANGED )
{
  QListWidgetSlots_connect_signal("currentItemChanged(QListWidgetItem*,QListWidgetItem*)", "currentItemChanged(QListWidgetItem*,QListWidgetItem*)");
}

HB_FUNC_STATIC( QLISTWIDGET_ONCURRENTROWCHANGED )
{
  QListWidgetSlots_connect_signal("currentRowChanged(int)", "currentRowChanged(int)");
}

HB_FUNC_STATIC( QLISTWIDGET_ONCURRENTTEXTCHANGED )
{
  QListWidgetSlots_connect_signal("currentTextChanged(QString)", "currentTextChanged(QString)");
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMACTIVATED )
{
  QListWidgetSlots_connect_signal("itemActivated(QListWidgetItem*)", "itemActivated(QListWidgetItem*)");
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMCHANGED )
{
  QListWidgetSlots_connect_signal("itemChanged(QListWidgetItem*)", "itemChanged(QListWidgetItem*)");
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMCLICKED )
{
  QListWidgetSlots_connect_signal("itemClicked(QListWidgetItem*)", "itemClicked(QListWidgetItem*)");
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMDOUBLECLICKED )
{
  QListWidgetSlots_connect_signal("itemDoubleClicked(QListWidgetItem*)", "itemDoubleClicked(QListWidgetItem*)");
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMENTERED )
{
  QListWidgetSlots_connect_signal("itemEntered(QListWidgetItem*)", "itemEntered(QListWidgetItem*)");
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMPRESSED )
{
  QListWidgetSlots_connect_signal("itemPressed(QListWidgetItem*)", "itemPressed(QListWidgetItem*)");
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMSELECTIONCHANGED )
{
  QListWidgetSlots_connect_signal("itemSelectionChanged()", "itemSelectionChanged()");
}

#pragma ENDDUMP

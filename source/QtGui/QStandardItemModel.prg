/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QMODELINDEX
REQUEST QOBJECT
REQUEST QSTANDARDITEM
REQUEST QVARIANT
#endif

CLASS QStandardItemModel INHERIT QAbstractItemModel

   METHOD new
   METHOD delete
   METHOD appendColumn
   METHOD appendRow
   METHOD clear
   METHOD findItems
   METHOD horizontalHeaderItem
   METHOD indexFromItem
   METHOD insertColumn
   METHOD insertRow
   METHOD invisibleRootItem
   METHOD item
   METHOD itemFromIndex
   METHOD itemPrototype
   METHOD index
   METHOD parent
   METHOD rowCount
   METHOD columnCount
   METHOD hasChildren
   METHOD sibling
   METHOD data
   METHOD setData
   METHOD headerData
   METHOD setHeaderData
   METHOD insertRows
   METHOD insertColumns
   METHOD removeRows
   METHOD removeColumns
   METHOD flags
   METHOD supportedDropActions
   METHOD sort
   METHOD setItem
   METHOD setHorizontalHeaderItem
   METHOD verticalHeaderItem
   METHOD setVerticalHeaderItem
   METHOD setHorizontalHeaderLabels
   METHOD setVerticalHeaderLabels
   METHOD setRowCount
   METHOD setColumnCount
   METHOD takeItem
   METHOD takeRow
   METHOD takeColumn
   METHOD takeHorizontalHeaderItem
   METHOD takeVerticalHeaderItem
   METHOD setItemPrototype
   METHOD sortRole
   METHOD setSortRole
   METHOD mimeTypes
   METHOD mimeData
   METHOD dropMimeData
   METHOD clearItemData

   METHOD onItemChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStandardItemModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QStandardItemModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtGui/QStandardItemModel>
#endif

#include <QtCore/QMimeData>

HB_FUNC_STATIC( QSTANDARDITEMMODEL_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    /*
    QStandardItemModel( QObject * parent = 0 )
    */
    QStandardItemModel * obj = new QStandardItemModel( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQOBJECT(3)||HB_ISNIL(3)) )
  {
    /*
    QStandardItemModel( int rows, int columns, QObject * parent = 0 )
    */
    QStandardItemModel * obj = new QStandardItemModel( PINT(1), PINT(2), OPQOBJECT(3,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSTANDARDITEMMODEL_DELETE )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void appendColumn( const QList<QStandardItem *> & items )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDCOLUMN )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QList<QStandardItem *> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->appendColumn( par1 );
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

HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDROW )
{
  if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    /*
    void appendRow( const QList<QStandardItem *> & items )
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QList<QStandardItem *> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->appendRow( par1 );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
  {
    /*
    void appendRow( QStandardItem * item )
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->appendRow( PQSTANDARDITEM(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_CLEAR )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
QList<QStandardItem *> findItems( const QString & text, Qt::MatchFlags flags = Qt::MatchExactly, int column = 0 ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_FINDITEMS )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && HB_ISCHAR(1) && (HB_ISNUM(2)||HB_ISNIL(2)) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      QList<QStandardItem *> list = obj->findItems( PQSTRING(1), HB_ISNIL(2)? (Qt::MatchFlags) Qt::MatchExactly : (Qt::MatchFlags) hb_parni(2), OPINT(3,0) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSTANDARDITEM", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QStandardItem * horizontalHeaderItem( int column ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_HORIZONTALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QStandardItem * ptr = obj->horizontalHeaderItem( PINT(1) );
      Qt5xHb::createReturnClass(ptr, "QSTANDARDITEM", false);
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
QModelIndex indexFromItem( const QStandardItem * item ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INDEXFROMITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->indexFromItem( PQSTANDARDITEM(1) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMN )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISARRAY(2) )
  {
    /*
    void insertColumn( int column, const QList<QStandardItem *> & items )
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj )
    {
      QList<QStandardItem *> par2;
      PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
      int i2;
      int nLen2 = hb_arrayLen(aList2);
      for (i2=0;i2<nLen2;i2++)
      {
        par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
      }
      obj->insertColumn( PINT(1), par2 );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISBETWEEN(1,2) && HB_ISNUM(1) && (ISQMODELINDEX(2)||HB_ISNIL(2)) )
  {
    /*
    bool insertColumn( int column, const QModelIndex & parent = QModelIndex() )
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj )
    {
      RBOOL( obj->insertColumn( PINT(1), HB_ISNIL(2)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(2) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISARRAY(2) )
  {
    /*
    void insertRow( int row, const QList<QStandardItem *> & items )
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj )
    {
      QList<QStandardItem *> par2;
      PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
      int i2;
      int nLen2 = hb_arrayLen(aList2);
      for (i2=0;i2<nLen2;i2++)
      {
        par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
      }
      obj->insertRow( PINT(1), par2 );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    /*
    void insertRow( int row, QStandardItem * item )
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj )
    {
      obj->insertRow( PINT(1), PQSTANDARDITEM(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISBETWEEN(1,2) && HB_ISNUM(1) && (ISQMODELINDEX(2)||HB_ISNIL(2)) )
  {
    /*
    bool insertRow( int row, const QModelIndex & parent = QModelIndex() )
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      RBOOL( obj->insertRow( PINT(1), HB_ISNIL(2)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(2) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QStandardItem * invisibleRootItem() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INVISIBLEROOTITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QStandardItem * ptr = obj->invisibleRootItem();
      Qt5xHb::createReturnClass(ptr, "QSTANDARDITEM", false);
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
QStandardItem * item( int row, int column = 0 ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      QStandardItem * ptr = obj->item( PINT(1), OPINT(2,0) );
      Qt5xHb::createReturnClass(ptr, "QSTANDARDITEM", false);
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
QStandardItem * itemFromIndex( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ITEMFROMINDEX )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QStandardItem * ptr = obj->itemFromIndex( *PQMODELINDEX(1) );
      Qt5xHb::createReturnClass(ptr, "QSTANDARDITEM", false);
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
const QStandardItem * itemPrototype() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ITEMPROTOTYPE )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QStandardItem * ptr = obj->itemPrototype();
      Qt5xHb::createReturnClass(ptr, "QSTANDARDITEM", false);
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
QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INDEX )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3)||HB_ISNIL(3)) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->index( PINT(1), PINT(2), HB_ISNIL(3)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(3) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSTANDARDITEMMODEL_PARENT )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    /*
    QModelIndex parent( const QModelIndex & child ) const
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QModelIndex * ptr = new QModelIndex( obj->parent( *PQMODELINDEX(1) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
    }
  }
  else if( ISNUMPAR(0) )
  {
    /*
    QObject * parent() const
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QObject * ptr = obj->parent();
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ROWCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||HB_ISNIL(1)) )
    {
#endif
      RINT( obj->rowCount( HB_ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(1) ) );
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
int columnCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_COLUMNCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||HB_ISNIL(1)) )
    {
#endif
      RINT( obj->columnCount( HB_ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(1) ) );
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
bool hasChildren( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_HASCHILDREN )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||HB_ISNIL(1)) )
    {
#endif
      RBOOL( obj->hasChildren( HB_ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(1) ) );
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
QModelIndex sibling( int row, int column, const QModelIndex & idx ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SIBLING )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQMODELINDEX(3) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->sibling( PINT(1), PINT(2), *PQMODELINDEX(3) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_DATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQMODELINDEX(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->data( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQMODELINDEX(1) && ISQVARIANT(2) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->setData( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
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
QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_HEADERDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->headerData( PINT(1), (Qt::Orientation) hb_parni(2), OPINT(3,Qt::DisplayRole) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
bool setHeaderData( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETHEADERDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && HB_ISNUM(1) && HB_ISNUM(2) && ISQVARIANT(3) && (HB_ISNUM(4)||HB_ISNIL(4)) )
    {
#endif
      RBOOL( obj->setHeaderData( PINT(1), (Qt::Orientation) hb_parni(2), *PQVARIANT(3), OPINT(4,Qt::EditRole) ) );
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
bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROWS )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3)||HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->insertRows( PINT(1), PINT(2), HB_ISNIL(3)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(3) ) );
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
bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMNS )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3)||HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->insertColumns( PINT(1), PINT(2), HB_ISNIL(3)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(3) ) );
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
bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_REMOVEROWS )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3)||HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->removeRows( PINT(1), PINT(2), HB_ISNIL(3)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(3) ) );
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
bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_REMOVECOLUMNS )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3)||HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->removeColumns( PINT(1), PINT(2), HB_ISNIL(3)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(3) ) );
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
Qt::ItemFlags flags( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_FLAGS )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RENUM( obj->flags( *PQMODELINDEX(1) ) );
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
Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SUPPORTEDDROPACTIONS )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedDropActions() );
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
void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SORT )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      obj->sort( PINT(1), HB_ISNIL(2)? (Qt::SortOrder) Qt::AscendingOrder : (Qt::SortOrder) hb_parni(2) );
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

HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEM )
{
  if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQSTANDARDITEM(3) )
  {
    /*
    void setItem( int row, int column, QStandardItem * item )
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->setItem( PINT(1), PINT(2), PQSTANDARDITEM(3) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    /*
    void setItem( int row, QStandardItem * item )
    */
    QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->setItem( PINT(1), PQSTANDARDITEM(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setHorizontalHeaderItem( int column, QStandardItem * item )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETHORIZONTALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQSTANDARDITEM(2) )
    {
#endif
      obj->setHorizontalHeaderItem( PINT(1), PQSTANDARDITEM(2) );
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
QStandardItem * verticalHeaderItem( int row ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_VERTICALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QStandardItem * ptr = obj->verticalHeaderItem( PINT(1) );
      Qt5xHb::createReturnClass(ptr, "QSTANDARDITEM", false);
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
void setVerticalHeaderItem( int row, QStandardItem * item )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETVERTICALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQSTANDARDITEM(2) )
    {
#endif
      obj->setVerticalHeaderItem( PINT(1), PQSTANDARDITEM(2) );
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
void setHorizontalHeaderLabels( const QStringList & labels )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETHORIZONTALHEADERLABELS )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setHorizontalHeaderLabels( PQSTRINGLIST(1) );
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
void setVerticalHeaderLabels( const QStringList & labels )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETVERTICALHEADERLABELS )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setVerticalHeaderLabels( PQSTRINGLIST(1) );
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
void setRowCount( int rows )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETROWCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setRowCount( PINT(1) );
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
void setColumnCount( int columns )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETCOLUMNCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setColumnCount( PINT(1) );
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
QStandardItem * takeItem( int row, int column = 0 )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      QStandardItem * ptr = obj->takeItem( PINT(1), OPINT(2,0) );
      Qt5xHb::createReturnClass(ptr, "QSTANDARDITEM", false);
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
QList<QStandardItem *> takeRow( int row )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEROW )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QList<QStandardItem *> list = obj->takeRow( PINT(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSTANDARDITEM", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QList<QStandardItem *> takeColumn( int column )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKECOLUMN )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QList<QStandardItem *> list = obj->takeColumn( PINT(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSTANDARDITEM", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QStandardItem * takeHorizontalHeaderItem( int column )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEHORIZONTALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QStandardItem * ptr = obj->takeHorizontalHeaderItem( PINT(1) );
      Qt5xHb::createReturnClass(ptr, "QSTANDARDITEM", false);
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
QStandardItem * takeVerticalHeaderItem( int row )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEVERTICALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QStandardItem * ptr = obj->takeVerticalHeaderItem( PINT(1) );
      Qt5xHb::createReturnClass(ptr, "QSTANDARDITEM", false);
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
void setItemPrototype( const QStandardItem * item )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEMPROTOTYPE )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
    {
#endif
      obj->setItemPrototype( PQSTANDARDITEM(1) );
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
int sortRole() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SORTROLE )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->sortRole() );
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
void setSortRole( int role )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETSORTROLE )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSortRole( PINT(1) );
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
QStringList mimeTypes() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_MIMETYPES )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->mimeTypes() );
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
QMimeData * mimeData( const QModelIndexList & indexes ) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_MIMEDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QModelIndexList par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      QMimeData * ptr = obj->mimeData( par1 );
      Qt5xHb::createReturnQObjectClass( ptr, "QMIMEDATA" );
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
bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_DROPMIMEDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && ISQMIMEDATA(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ISQMODELINDEX(5) )
    {
#endif
      RBOOL( obj->dropMimeData( PQMIMEDATA(1), (Qt::DropAction) hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5) ) );
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
bool clearItemData( const QModelIndex & index )
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_CLEARITEMDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
  QStandardItemModel * obj = (QStandardItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->clearItemData( *PQMODELINDEX(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

void QStandardItemModelSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSTANDARDITEMMODEL_ONITEMCHANGED )
{
  QStandardItemModelSlots_connect_signal( "itemChanged(QStandardItem*)", "itemChanged(QStandardItem*)" );
}

#pragma ENDDUMP

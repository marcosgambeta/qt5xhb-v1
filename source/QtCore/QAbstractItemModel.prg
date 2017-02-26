/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QAbstractItemModel INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractItemModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD buddy
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD hasIndex
   METHOD headerData
   METHOD index
   METHOD insertColumn
   METHOD insertColumns
   METHOD insertRow
   METHOD insertRows
   METHOD match
   METHOD mimeTypes
   METHOD parent
   METHOD removeColumn
   METHOD removeColumns
   METHOD removeRow
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD setHeaderData
   METHOD sibling
   METHOD sort
   METHOD span
   METHOD supportedDragActions
   METHOD supportedDropActions
   METHOD revert
   METHOD submit
   METHOD onColumnsAboutToBeInserted
   METHOD onColumnsAboutToBeMoved
   METHOD onColumnsAboutToBeRemoved
   METHOD onColumnsInserted
   METHOD onColumnsMoved
   METHOD onColumnsRemoved
   METHOD onDataChanged
   METHOD onHeaderDataChanged
   METHOD onLayoutAboutToBeChanged
   METHOD onLayoutChanged
   METHOD onModelAboutToBeReset
   METHOD onModelReset
   METHOD onRowsAboutToBeInserted
   METHOD onRowsAboutToBeMoved
   METHOD onRowsAboutToBeRemoved
   METHOD onRowsInserted
   METHOD onRowsMoved
   METHOD onRowsRemoved
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractItemModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractItemModel>
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
#include <QAbstractItemModel>
#endif
#endif

#include <QStringList>
#include <QSize>


HB_FUNC_STATIC( QABSTRACTITEMMODEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QModelIndex buddy ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_BUDDY )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->buddy ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual bool canFetchMore ( const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_CANFETCHMORE )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->canFetchMore ( *par1 ) );
  }
}


/*
virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_COLUMNCOUNT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->columnCount ( par1 ) );
  }
}


/*
virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_DATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QVariant * ptr = new QVariant( obj->data ( *par1, (int) ISNIL(2)? Qt::DisplayRole : hb_parni(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_DROPMIMEDATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMimeData * par1 = (const QMimeData *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    QModelIndex * par5 = (QModelIndex *) _qtxhb_itemGetPtr(5);
    hb_retl( obj->dropMimeData ( par1,  (Qt::DropAction) par2, (int) hb_parni(3), (int) hb_parni(4), *par5 ) );
  }
}


/*
virtual void fetchMore ( const QModelIndex & parent )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_FETCHMORE )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    obj->fetchMore ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_FLAGS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->flags ( *par1 ) );
  }
}


/*
virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_HASCHILDREN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->hasChildren ( par1 ) );
  }
}


/*
bool hasIndex ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_HASINDEX )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->hasIndex ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_HEADERDATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QVariant * ptr = new QVariant( obj->headerData ( (int) hb_parni(1),  (Qt::Orientation) par2, (int) ISNIL(3)? Qt::DisplayRole : hb_parni(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INDEX )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->index ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
bool insertColumn ( int column, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTCOLUMN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->insertColumn ( (int) hb_parni(1), par2 ) );
  }
}


/*
virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTCOLUMNS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->insertColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool insertRow ( int row, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTROW )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->insertRow ( (int) hb_parni(1), par2 ) );
  }
}


/*
virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTROWS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->insertRows ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}



/*
virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_MATCH )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QVariant * par3 = (QVariant *) _qtxhb_itemGetPtr(3);
    int par5 = ISNIL(5)? (int) Qt::MatchStartsWith | Qt::MatchWrap : hb_parni(5);
    QModelIndexList list = obj->match ( *par1, (int) hb_parni(2), *par3, (int) ISNIL(4)? 1 : hb_parni(4),  (Qt::MatchFlags) par5 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMODELINDEX" );
    #else
    pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



/*
virtual QStringList mimeTypes () const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_MIMETYPES )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->mimeTypes (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual QModelIndex parent ( const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_PARENT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->parent ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
bool removeColumn ( int column, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVECOLUMN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->removeColumn ( (int) hb_parni(1), par2 ) );
  }
}


/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVECOLUMNS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->removeColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool removeRow ( int row, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVEROW )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->removeRow ( (int) hb_parni(1), par2 ) );
  }
}


/*
virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVEROWS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->removeRows ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}



/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_ROWCOUNT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->rowCount ( par1 ) );
  }
}


/*
virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SETDATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->setData ( *par1, *par2, (int) ISNIL(3)? Qt::EditRole : hb_parni(3) ) );
  }
}


/*
virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SETHEADERDATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QVariant * par3 = (QVariant *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->setHeaderData ( (int) hb_parni(1),  (Qt::Orientation) par2, *par3, (int) ISNIL(4)? Qt::EditRole : hb_parni(4) ) );
  }
}




/*
QModelIndex sibling ( int row, int column, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SIBLING )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par3 = (QModelIndex *) _qtxhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->sibling ( (int) hb_parni(1), (int) hb_parni(2), *par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SORT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sort ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize span ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SPAN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QSize * ptr = new QSize( obj->span ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
Qt::DropActions supportedDragActions () const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SUPPORTEDDRAGACTIONS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedDragActions (  ) );
  }
}


/*
virtual Qt::DropActions supportedDropActions () const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SUPPORTEDDROPACTIONS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedDropActions (  ) );
  }
}


/*
virtual void revert ()
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REVERT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->revert (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool submit ()
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SUBMIT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->submit (  ) );
  }
}




#pragma ENDDUMP

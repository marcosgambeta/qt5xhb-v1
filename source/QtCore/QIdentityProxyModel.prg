/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QITEMSELECTION
#endif

CLASS QIdentityProxyModel INHERIT QAbstractProxyModel

   DATA class_id INIT Class_Id_QIdentityProxyModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD columnCount
   METHOD index
   METHOD mapFromSource
   METHOD mapToSource
   METHOD parent
   METHOD rowCount
   METHOD headerData
   METHOD dropMimeData
   METHOD sibling
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD match
   METHOD setSourceModel
   METHOD insertColumns
   METHOD insertRows
   METHOD removeColumns
   METHOD removeRows
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIdentityProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QIdentityProxyModel>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QIdentityProxyModel>
#endif
#endif

#include <QItemSelection>

/*
QIdentityProxyModel(QObject* parent = 0)
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QIdentityProxyModel * o = new QIdentityProxyModel ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIdentityProxyModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QIDENTITYPROXYMODEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIdentityProxyModel * obj = (QIdentityProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int columnCount(const QModelIndex& parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_COLUMNCOUNT )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->columnCount ( par1 ) );
  }
}


/*
QModelIndex index(int row, int column, const QModelIndex& parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INDEX )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->index ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QModelIndex mapFromSource(const QModelIndex& sourceIndex) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPFROMSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->mapFromSource ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QModelIndex mapToSource(const QModelIndex& proxyIndex) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPTOSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->mapToSource ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QModelIndex parent(const QModelIndex& child) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_PARENT )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->parent ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
int rowCount(const QModelIndex& parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_ROWCOUNT )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->rowCount ( par1 ) );
  }
}


/*
QVariant headerData(int section, Qt::Orientation orientation, int role) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_HEADERDATA )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QVariant * ptr = new QVariant( obj->headerData ( (int) hb_parni(1),  (Qt::Orientation) par2, (int) hb_parni(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent)
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_DROPMIMEDATA )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMimeData * par1 = (const QMimeData *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    QModelIndex * par5 = (QModelIndex *) _qtxhb_itemGetPtr(5);
    hb_retl( obj->dropMimeData ( par1,  (Qt::DropAction) par2, (int) hb_parni(3), (int) hb_parni(4), *par5 ) );
  }
}


/*
QModelIndex sibling(int row, int column, const QModelIndex &idx) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_SIBLING )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par3 = (QModelIndex *) _qtxhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->sibling ( (int) hb_parni(1), (int) hb_parni(2), *par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QItemSelection mapSelectionFromSource(const QItemSelection& selection) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPSELECTIONFROMSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelection * par1 = (QItemSelection *) _qtxhb_itemGetPtr(1);
    QItemSelection * ptr = new QItemSelection( obj->mapSelectionFromSource ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QITEMSELECTION" );
  }
}


/*
QItemSelection mapSelectionToSource(const QItemSelection& selection) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPSELECTIONTOSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelection * par1 = (QItemSelection *) _qtxhb_itemGetPtr(1);
    QItemSelection * ptr = new QItemSelection( obj->mapSelectionToSource ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QITEMSELECTION" );
  }
}


/*
QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags(Qt::MatchStartsWith|Qt::MatchWrap)) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MATCH )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QVariant * par3 = (QVariant *) _qtxhb_itemGetPtr(3);
    int par5 = ISNIL(5)? (int) Qt::MatchFlags(Qt::MatchStartsWith | Qt::MatchWrap) : hb_parni(5);
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
void setSourceModel(QAbstractItemModel* sourceModel)
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_SETSOURCEMODEL )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) _qtxhb_itemGetPtr(1);
    obj->setSourceModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool insertColumns(int column, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INSERTCOLUMNS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->insertColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool insertRows(int row, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INSERTROWS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->insertRows ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool removeColumns(int column, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_REMOVECOLUMNS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->removeColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool removeRows(int row, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_REMOVEROWS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->removeRows ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}



#pragma ENDDUMP

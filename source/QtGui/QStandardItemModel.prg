/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTANDARDITEM
REQUEST QMODELINDEX
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QMIMEDATA
#endif

CLASS QStandardItemModel INHERIT QAbstractItemModel

   //DATA class_id INIT Class_Id_QStandardItemModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD appendColumn
   METHOD appendRow1
   METHOD appendRow2
   METHOD appendRow
   METHOD clear
   METHOD findItems
   METHOD horizontalHeaderItem
   METHOD indexFromItem
   METHOD insertColumn1
   METHOD insertColumn2
   METHOD insertColumn
   METHOD insertRow1
   METHOD insertRow2
   METHOD insertRow3
   METHOD insertRow
   METHOD invisibleRootItem
   METHOD item
   METHOD itemFromIndex
   METHOD itemPrototype
   METHOD index
   METHOD parent1
   METHOD parent2
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
   METHOD setItem1
   METHOD setItem2
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

   METHOD onItemChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStandardItemModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStandardItemModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStandardItemModel>
#endif

/*
QStandardItemModel(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_NEW1 )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QStandardItemModel * o = new QStandardItemModel ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStandardItemModel(int rows, int columns, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_NEW2 )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qt5xhb_itemGetPtr(3);
  QStandardItemModel * o = new QStandardItemModel ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QStandardItemModel(QObject *parent = 0)
//[2]QStandardItemModel(int rows, int columns, QObject *parent = 0)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTANDARDITEMMODEL_DELETE )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void appendColumn(const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDCOLUMN )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
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
    obj->appendColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendRow(const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDROW1 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
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
    obj->appendRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendRow(QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDROW2 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * par1 = (QStandardItem *) _qt5xhb_itemGetPtr(1);
    obj->appendRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void appendRow(const QList<QStandardItem*> &items)
//[2]void appendRow(QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDROW )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_APPENDROW1 );
  }
  else if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_APPENDROW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_CLEAR )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QStandardItem*> findItems(const QString &text,Qt::MatchFlags flags = Qt::MatchExactly,int column = 0) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_FINDITEMS )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) Qt::MatchExactly : hb_parni(2);
    QList<QStandardItem *> list = obj->findItems ( par1,  (Qt::MatchFlags) par2, (int) ISNIL(3)? 0 : hb_parni(3) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSTANDARDITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
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
QStandardItem *horizontalHeaderItem(int column) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_HORIZONTALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->horizontalHeaderItem ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
QModelIndex indexFromItem(const QStandardItem *item) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INDEXFROMITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * par1 = (QStandardItem *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->indexFromItem ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
void insertColumn(int column, const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMN1 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
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
    obj->insertColumn ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool insertColumn(int column, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMN2 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->insertColumn ( (int) hb_parni(1), par2 ) );
  }
}


//[1]void insertColumn(int column, const QList<QStandardItem*> &items)
//[2]bool insertColumn(int column, const QModelIndex &parent = QModelIndex())

HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMN )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_INSERTCOLUMN1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_INSERTCOLUMN2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insertRow(int row, const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW1 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
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
    obj->insertRow ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRow(int row, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW2 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * par2 = (QStandardItem *) _qt5xhb_itemGetPtr(2);
    obj->insertRow ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool insertRow(int row, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW3 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->insertRow ( (int) hb_parni(1), par2 ) );
  }
}


//[1]void insertRow(int row, const QList<QStandardItem*> &items)
//[2]void insertRow(int row, QStandardItem *item)
//[3]bool insertRow(int row, const QModelIndex &parent = QModelIndex())

HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_INSERTROW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_INSERTROW2 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_INSERTROW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStandardItem *invisibleRootItem() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INVISIBLEROOTITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->invisibleRootItem (  );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
QStandardItem *item(int row, int column = 0) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->item ( (int) hb_parni(1), (int) ISNIL(2)? 0 : hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
QStandardItem *itemFromIndex(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ITEMFROMINDEX )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QStandardItem * ptr = obj->itemFromIndex ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
const QStandardItem *itemPrototype() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ITEMPROTOTYPE )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStandardItem * ptr = obj->itemPrototype (  );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}



/*
QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INDEX )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->index ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QModelIndex parent(const QModelIndex &child) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_PARENT1 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->parent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QObject *parent() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_PARENT2 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->parent (  );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


//[1]QModelIndex parent(const QModelIndex &child) const
//[2]QObject *parent() const

HB_FUNC_STATIC( QSTANDARDITEMMODEL_PARENT )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_PARENT1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_PARENT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ROWCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->rowCount ( par1 ) );
  }
}


/*
int columnCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_COLUMNCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->columnCount ( par1 ) );
  }
}


/*
bool hasChildren(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_HASCHILDREN )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->hasChildren ( par1 ) );
  }
}


/*
QModelIndex sibling(int row, int column, const QModelIndex &idx) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SIBLING )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par3 = (QModelIndex *) _qt5xhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->sibling ( (int) hb_parni(1), (int) hb_parni(2), *par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_DATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QVariant * ptr = new QVariant( obj->data ( *par1, (int) ISNIL(2)? Qt::DisplayRole : hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->setData ( *par1, *par2, (int) ISNIL(3)? Qt::EditRole : hb_parni(3) ) );
  }
}


/*
QVariant headerData(int section, Qt::Orientation orientation,int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_HEADERDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QVariant * ptr = new QVariant( obj->headerData ( (int) hb_parni(1),  (Qt::Orientation) par2, (int) ISNIL(3)? Qt::DisplayRole : hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value,int role = Qt::EditRole)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETHEADERDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QVariant * par3 = (QVariant *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->setHeaderData ( (int) hb_parni(1),  (Qt::Orientation) par2, *par3, (int) ISNIL(4)? Qt::EditRole : hb_parni(4) ) );
  }
}


/*
bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROWS )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->insertRows ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMNS )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->insertColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_REMOVEROWS )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->removeRows ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool removeColumns(int column, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_REMOVECOLUMNS )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->removeColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
Qt::ItemFlags flags(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_FLAGS )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->flags ( *par1 ) );
  }
}


/*
Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SUPPORTEDDROPACTIONS )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedDropActions (  ) );
  }
}




/*
void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SORT )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sort ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItem(int row, int column, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEM1 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * par3 = (QStandardItem *) _qt5xhb_itemGetPtr(3);
    obj->setItem ( (int) hb_parni(1), (int) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItem(int row, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEM2 )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * par2 = (QStandardItem *) _qt5xhb_itemGetPtr(2);
    obj->setItem ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setItem(int row, int column, QStandardItem *item)
//[2]void setItem(int row, QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTANDARDITEM(3) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_SETITEM1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_SETITEM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setHorizontalHeaderItem(int column, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETHORIZONTALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * par2 = (QStandardItem *) _qt5xhb_itemGetPtr(2);
    obj->setHorizontalHeaderItem ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStandardItem *verticalHeaderItem(int row) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_VERTICALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->verticalHeaderItem ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
void setVerticalHeaderItem(int row, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETVERTICALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * par2 = (QStandardItem *) _qt5xhb_itemGetPtr(2);
    obj->setVerticalHeaderItem ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalHeaderLabels(const QStringList &labels)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETHORIZONTALHEADERLABELS )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
    //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
    //int i1;
    //int nLen1 = hb_arrayLen(aStrings1);
    //for (i1=0;i1<nLen1;i1++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
    //  par1 << temp;
    //}
    obj->setHorizontalHeaderLabels ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalHeaderLabels(const QStringList &labels)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETVERTICALHEADERLABELS )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
    //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
    //int i1;
    //int nLen1 = hb_arrayLen(aStrings1);
    //for (i1=0;i1<nLen1;i1++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
    //  par1 << temp;
    //}
    obj->setVerticalHeaderLabels ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowCount(int rows)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETROWCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnCount(int columns)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETCOLUMNCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStandardItem *takeItem(int row, int column = 0)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->takeItem ( (int) hb_parni(1), (int) ISNIL(2)? 0 : hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
QList<QStandardItem*> takeRow(int row)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEROW )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QStandardItem *> list = obj->takeRow ( (int) hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSTANDARDITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
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
QList<QStandardItem*> takeColumn(int column)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKECOLUMN )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QStandardItem *> list = obj->takeColumn ( (int) hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSTANDARDITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
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
QStandardItem *takeHorizontalHeaderItem(int column)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEHORIZONTALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->takeHorizontalHeaderItem ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
QStandardItem *takeVerticalHeaderItem(int row)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEVERTICALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->takeVerticalHeaderItem ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
void setItemPrototype(const QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEMPROTOTYPE )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStandardItem * par1 = (const QStandardItem *) _qt5xhb_itemGetPtr(1);
    obj->setItemPrototype ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int sortRole() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SORTROLE )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sortRole (  ) );
  }
}


/*
void setSortRole(int role)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETSORTROLE )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSortRole ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList mimeTypes() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_MIMETYPES )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->mimeTypes (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QMimeData *mimeData(const QModelIndexList &indexes) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_MIMEDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QModelIndexList par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    QMimeData * ptr = obj->mimeData ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}


/*
bool dropMimeData (const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex &parent)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_DROPMIMEDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMimeData * par1 = (const QMimeData *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    QModelIndex * par5 = (QModelIndex *) _qt5xhb_itemGetPtr(5);
    hb_retl( obj->dropMimeData ( par1,  (Qt::DropAction) par2, (int) hb_parni(3), (int) hb_parni(4), *par5 ) );
  }
}




#pragma ENDDUMP

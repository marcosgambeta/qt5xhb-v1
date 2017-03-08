/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QITEMSELECTION
REQUEST QREGEXP
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QMIMEDATA
REQUEST QSIZE
#endif

CLASS QSortFilterProxyModel INHERIT QAbstractProxyModel

   DATA class_id INIT Class_Id_QSortFilterProxyModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD setSourceModel
   METHOD mapToSource
   METHOD mapFromSource
   METHOD mapSelectionToSource
   METHOD mapSelectionFromSource
   METHOD filterRegExp
   METHOD setFilterRegExp1
   METHOD setFilterRegExp2
   METHOD setFilterRegExp
   METHOD filterKeyColumn
   METHOD setFilterKeyColumn
   METHOD filterCaseSensitivity
   METHOD setFilterCaseSensitivity
   METHOD sortCaseSensitivity
   METHOD setSortCaseSensitivity
   METHOD isSortLocaleAware
   METHOD setSortLocaleAware
   METHOD sortColumn
   METHOD sortOrder
   METHOD dynamicSortFilter
   METHOD setDynamicSortFilter
   METHOD sortRole
   METHOD setSortRole
   METHOD filterRole
   METHOD setFilterRole
   METHOD setFilterWildcard
   METHOD setFilterFixedString
   METHOD clear
   METHOD invalidate
   METHOD parent1
   METHOD parent2
   METHOD parent
   METHOD index
   METHOD sibling
   METHOD rowCount
   METHOD columnCount
   METHOD hasChildren
   METHOD data
   METHOD setData
   METHOD headerData
   METHOD setHeaderData
   METHOD mimeData
   METHOD dropMimeData
   METHOD insertRows
   METHOD insertColumns
   METHOD removeRows
   METHOD removeColumns
   METHOD fetchMore
   METHOD canFetchMore
   METHOD flags
   METHOD buddy
   METHOD match
   METHOD span
   METHOD sort
   METHOD mimeTypes
   METHOD supportedDropActions
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSortFilterProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSortFilterProxyModel>
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
#include <QSortFilterProxyModel>
#endif

#include <QItemSelection>
#include <QSize>

/*
QSortFilterProxyModel(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_NEW )
{
  QSortFilterProxyModel * o = new QSortFilterProxyModel (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSortFilterProxyModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_DELETE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setSourceModel(QAbstractItemModel *sourceModel)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETSOURCEMODEL )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(1);
    obj->setSourceModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex mapToSource(const QModelIndex &proxyIndex) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_MAPTOSOURCE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->mapToSource ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QModelIndex mapFromSource(const QModelIndex &sourceIndex) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_MAPFROMSOURCE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->mapFromSource ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QItemSelection mapSelectionToSource(const QItemSelection &proxySelection) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_MAPSELECTIONTOSOURCE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelection * par1 = (QItemSelection *) _qt5xhb_itemGetPtr(1);
    QItemSelection * ptr = new QItemSelection( obj->mapSelectionToSource ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QITEMSELECTION" );
  }
}


/*
QItemSelection mapSelectionFromSource(const QItemSelection &sourceSelection) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_MAPSELECTIONFROMSOURCE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelection * par1 = (QItemSelection *) _qt5xhb_itemGetPtr(1);
    QItemSelection * ptr = new QItemSelection( obj->mapSelectionFromSource ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QITEMSELECTION" );
  }
}


/*
QRegExp filterRegExp() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_FILTERREGEXP )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegExp * ptr = new QRegExp( obj->filterRegExp (  ) );
    _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
  }
}


/*
void setFilterRegExp(const QRegExp &regExp)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP1 )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegExp * par1 = (QRegExp *) _qt5xhb_itemGetPtr(1);
    obj->setFilterRegExp ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterRegExp(const QString &pattern)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP2 )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFilterRegExp ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setFilterRegExp(const QRegExp &regExp)
//[2]void setFilterRegExp(const QString &pattern)

HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    HB_FUNC_EXEC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int filterKeyColumn() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_FILTERKEYCOLUMN )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->filterKeyColumn (  ) );
  }
}


/*
void setFilterKeyColumn(int column)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERKEYCOLUMN )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFilterKeyColumn ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::CaseSensitivity filterCaseSensitivity() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_FILTERCASESENSITIVITY )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->filterCaseSensitivity (  ) );
  }
}


/*
void setFilterCaseSensitivity(Qt::CaseSensitivity cs)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERCASESENSITIVITY )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFilterCaseSensitivity (  (Qt::CaseSensitivity) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::CaseSensitivity sortCaseSensitivity() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SORTCASESENSITIVITY )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sortCaseSensitivity (  ) );
  }
}


/*
void setSortCaseSensitivity(Qt::CaseSensitivity cs)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETSORTCASESENSITIVITY )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSortCaseSensitivity (  (Qt::CaseSensitivity) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isSortLocaleAware() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_ISSORTLOCALEAWARE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSortLocaleAware (  ) );
  }
}


/*
void setSortLocaleAware(bool on)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETSORTLOCALEAWARE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSortLocaleAware ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int sortColumn() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SORTCOLUMN )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sortColumn (  ) );
  }
}


/*
Qt::SortOrder sortOrder() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SORTORDER )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sortOrder (  ) );
  }
}


/*
bool dynamicSortFilter() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_DYNAMICSORTFILTER )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->dynamicSortFilter (  ) );
  }
}


/*
void setDynamicSortFilter(bool enable)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETDYNAMICSORTFILTER )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDynamicSortFilter ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int sortRole() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SORTROLE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sortRole (  ) );
  }
}


/*
void setSortRole(int role)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETSORTROLE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSortRole ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int filterRole() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_FILTERROLE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->filterRole (  ) );
  }
}


/*
void setFilterRole(int role)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERROLE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFilterRole ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterWildcard(const QString &pattern)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERWILDCARD )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFilterWildcard ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterFixedString(const QString &pattern)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERFIXEDSTRING )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFilterFixedString ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear()
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_CLEAR )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void invalidate()
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_INVALIDATE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QObject *parent() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_PARENT1 )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->parent (  );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QModelIndex parent(const QModelIndex &child) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_PARENT2 )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->parent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


//[1]QObject *parent() const
//[2]QModelIndex parent(const QModelIndex &child) const

HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_PARENT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSORTFILTERPROXYMODEL_PARENT1 );
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QSORTFILTERPROXYMODEL_PARENT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_INDEX )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->index ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QModelIndex sibling(int row, int column, const QModelIndex &idx) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SIBLING )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par3 = (QModelIndex *) _qt5xhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->sibling ( (int) hb_parni(1), (int) hb_parni(2), *par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_ROWCOUNT )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->rowCount ( par1 ) );
  }
}


/*
int columnCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_COLUMNCOUNT )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->columnCount ( par1 ) );
  }
}


/*
bool hasChildren(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_HASCHILDREN )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->hasChildren ( par1 ) );
  }
}


/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_DATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETDATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->setData ( *par1, *par2, (int) ISNIL(3)? Qt::EditRole : hb_parni(3) ) );
  }
}


/*
QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_HEADERDATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QVariant * ptr = new QVariant( obj->headerData ( (int) hb_parni(1),  (Qt::Orientation) par2, (int) ISNIL(3)? Qt::DisplayRole : hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool setHeaderData(int section, Qt::Orientation orientation,const QVariant &value, int role = Qt::EditRole)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETHEADERDATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QVariant * par3 = (QVariant *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->setHeaderData ( (int) hb_parni(1),  (Qt::Orientation) par2, *par3, (int) ISNIL(4)? Qt::EditRole : hb_parni(4) ) );
  }
}


/*
QMimeData *mimeData(const QModelIndexList &indexes) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_MIMEDATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
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
bool dropMimeData(const QMimeData *data, Qt::DropAction action,int row, int column, const QModelIndex &parent)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_DROPMIMEDATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMimeData * par1 = (const QMimeData *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    QModelIndex * par5 = (QModelIndex *) _qt5xhb_itemGetPtr(5);
    hb_retl( obj->dropMimeData ( par1,  (Qt::DropAction) par2, (int) hb_parni(3), (int) hb_parni(4), *par5 ) );
  }
}


/*
bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_INSERTROWS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->insertRows ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_INSERTCOLUMNS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->insertColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_REMOVEROWS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->removeRows ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool removeColumns(int column, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_REMOVECOLUMNS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->removeColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
void fetchMore(const QModelIndex &parent)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_FETCHMORE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->fetchMore ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool canFetchMore(const QModelIndex &parent) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_CANFETCHMORE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->canFetchMore ( *par1 ) );
  }
}


/*
Qt::ItemFlags flags(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_FLAGS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->flags ( *par1 ) );
  }
}


/*
QModelIndex buddy(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_BUDDY )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->buddy ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QModelIndexList match(const QModelIndex &start, int role,const QVariant &value, int hits = 1,Qt::MatchFlags flags =Qt::MatchFlags(Qt::MatchStartsWith|Qt::MatchWrap)) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_MATCH )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QVariant * par3 = (QVariant *) _qt5xhb_itemGetPtr(3);
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
QSize span(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SPAN )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QSize * ptr = new QSize( obj->span ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SORT )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sort ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList mimeTypes() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_MIMETYPES )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->mimeTypes (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SUPPORTEDDROPACTIONS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedDropActions (  ) );
  }
}



#pragma ENDDUMP

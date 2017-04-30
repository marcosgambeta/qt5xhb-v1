/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

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

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setSourceModel
   METHOD mapToSource
   METHOD mapFromSource
   METHOD mapSelectionToSource
   METHOD mapSelectionFromSource
   METHOD filterRegExp
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

#include "qt5xhb_common.h"
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
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSortFilterProxyModel * o = new QSortFilterProxyModel (  );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
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
    if( ISQABSTRACTITEMMODEL(1) )
    {
      QAbstractItemModel * par1 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(1);
      obj->setSourceModel ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QModelIndex * ptr = new QModelIndex( obj->mapToSource ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QModelIndex * ptr = new QModelIndex( obj->mapFromSource ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQITEMSELECTION(1) )
    {
      QItemSelection * par1 = (QItemSelection *) _qt5xhb_itemGetPtr(1);
      QItemSelection * ptr = new QItemSelection( obj->mapSelectionToSource ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QITEMSELECTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQITEMSELECTION(1) )
    {
      QItemSelection * par1 = (QItemSelection *) _qt5xhb_itemGetPtr(1);
      QItemSelection * ptr = new QItemSelection( obj->mapSelectionFromSource ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QITEMSELECTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
void QSortFilterProxyModel_setFilterRegExp1 ()
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
void QSortFilterProxyModel_setFilterRegExp2 ()
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFilterRegExp ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setFilterRegExp(const QRegExp &regExp)
//[2]void setFilterRegExp(const QString &pattern)

HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QSortFilterProxyModel_setFilterRegExp1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSortFilterProxyModel_setFilterRegExp2();
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
    if( ISNUM(1) )
    {
      obj->setFilterKeyColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setFilterCaseSensitivity (  (Qt::CaseSensitivity) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setSortCaseSensitivity (  (Qt::CaseSensitivity) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISLOG(1) )
    {
      obj->setSortLocaleAware ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISLOG(1) )
    {
      obj->setDynamicSortFilter ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->setSortRole ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->setFilterRole ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISCHAR(1) )
    {
      obj->setFilterWildcard ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISCHAR(1) )
    {
      obj->setFilterFixedString ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
void QSortFilterProxyModel_parent1 ()
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->parent (  );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QModelIndex parent(const QModelIndex &child) const
*/
void QSortFilterProxyModel_parent2 ()
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
    QSortFilterProxyModel_parent1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QSortFilterProxyModel_parent2();
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
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      QModelIndex * ptr = new QModelIndex( obj->index ( PINT(1), PINT(2), par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && ISQMODELINDEX(3) )
    {
      QModelIndex * par3 = (QModelIndex *) _qt5xhb_itemGetPtr(3);
      QModelIndex * ptr = new QModelIndex( obj->sibling ( PINT(1), PINT(2), *par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->rowCount ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->columnCount ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->hasChildren ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMODELINDEX(1) && ISOPTNUM(2) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QVariant * ptr = new QVariant( obj->data ( *par1, (int) ISNIL(2)? Qt::DisplayRole : hb_parni(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMODELINDEX(1) && ISQVARIANT(2) && ISOPTNUM(3) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
      hb_retl( obj->setData ( *par1, *par2, (int) ISNIL(3)? Qt::EditRole : hb_parni(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
    {
      int par2 = hb_parni(2);
      QVariant * ptr = new QVariant( obj->headerData ( PINT(1),  (Qt::Orientation) par2, (int) ISNIL(3)? Qt::DisplayRole : hb_parni(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && ISQVARIANT(3) && ISOPTNUM(4) )
    {
      int par2 = hb_parni(2);
      QVariant * par3 = (QVariant *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->setHeaderData ( PINT(1),  (Qt::Orientation) par2, *par3, (int) ISNIL(4)? Qt::EditRole : hb_parni(4) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISARRAY(1) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMIMEDATA(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQMODELINDEX(5) )
    {
      const QMimeData * par1 = (const QMimeData *) _qt5xhb_itemGetPtr(1);
      int par2 = hb_parni(2);
      QModelIndex * par5 = (QModelIndex *) _qt5xhb_itemGetPtr(5);
      hb_retl( obj->dropMimeData ( par1,  (Qt::DropAction) par2, PINT(3), PINT(4), *par5 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->insertRows ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->insertColumns ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->removeRows ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->removeColumns ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      obj->fetchMore ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->canFetchMore ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->flags ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QModelIndex * ptr = new QModelIndex( obj->buddy ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMODELINDEX(1) && ISNUM(2) && ISQVARIANT(3) && ISOPTNUM(4) && ISOPTNUM(5) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QVariant * par3 = (QVariant *) _qt5xhb_itemGetPtr(3);
      int par5 = ISNIL(5)? (int) Qt::MatchFlags(Qt::MatchStartsWith | Qt::MatchWrap) : hb_parni(5);
      QModelIndexList list = obj->match ( *par1, PINT(2), *par3, (int) ISNIL(4)? 1 : hb_parni(4),  (Qt::MatchFlags) par5 );
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QSize * ptr = new QSize( obj->span ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
      obj->sort ( PINT(1),  (Qt::SortOrder) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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

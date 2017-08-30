$header

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

$destructor

#pragma BEGINDUMP

$includes

#include <QItemSelection>
#include <QSize>

/*
QSortFilterProxyModel(QObject *parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void setSourceModel(QAbstractItemModel *sourceModel)
*/
$method=|void|setSourceModel|QAbstractItemModel *

/*
QModelIndex mapToSource(const QModelIndex &proxyIndex) const
*/
$method=|QModelIndex|mapToSource|const QModelIndex &

/*
QModelIndex mapFromSource(const QModelIndex &sourceIndex) const
*/
$method=|QModelIndex|mapFromSource|const QModelIndex &

/*
QItemSelection mapSelectionToSource(const QItemSelection &proxySelection) const
*/
$method=|QItemSelection|mapSelectionToSource|const QItemSelection &

/*
QItemSelection mapSelectionFromSource(const QItemSelection &sourceSelection) const
*/
$method=|QItemSelection|mapSelectionFromSource|const QItemSelection &

/*
QRegExp filterRegExp() const
*/
$method=|QRegExp|filterRegExp|

/*
void setFilterRegExp(const QRegExp &regExp)
*/
$internalMethod=|void|setFilterRegExp,setFilterRegExp1|const QRegExp &

/*
void setFilterRegExp(const QString &pattern)
*/
$internalMethod=|void|setFilterRegExp,setFilterRegExp2|const QString &

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
$method=|int|filterKeyColumn|

/*
void setFilterKeyColumn(int column)
*/
$method=|void|setFilterKeyColumn|int

/*
Qt::CaseSensitivity filterCaseSensitivity() const
*/
$method=|Qt::CaseSensitivity|filterCaseSensitivity|

/*
void setFilterCaseSensitivity(Qt::CaseSensitivity cs)
*/
$method=|void|setFilterCaseSensitivity|Qt::CaseSensitivity

/*
Qt::CaseSensitivity sortCaseSensitivity() const
*/
$method=|Qt::CaseSensitivity|sortCaseSensitivity|

/*
void setSortCaseSensitivity(Qt::CaseSensitivity cs)
*/
$method=|void|setSortCaseSensitivity|Qt::CaseSensitivity

/*
bool isSortLocaleAware() const
*/
$method=|bool|isSortLocaleAware|

/*
void setSortLocaleAware(bool on)
*/
$method=|void|setSortLocaleAware|bool

/*
int sortColumn() const
*/
$method=|int|sortColumn|

/*
Qt::SortOrder sortOrder() const
*/
$method=|Qt::SortOrder|sortOrder|

/*
bool dynamicSortFilter() const
*/
$method=|bool|dynamicSortFilter|

/*
void setDynamicSortFilter(bool enable)
*/
$method=|void|setDynamicSortFilter|bool

/*
int sortRole() const
*/
$method=|int|sortRole|

/*
void setSortRole(int role)
*/
$method=|void|setSortRole|int

/*
int filterRole() const
*/
$method=|int|filterRole|

/*
void setFilterRole(int role)
*/
$method=|void|setFilterRole|int

/*
void setFilterWildcard(const QString &pattern)
*/
$method=|void|setFilterWildcard|const QString &

/*
void setFilterFixedString(const QString &pattern)
*/
$method=|void|setFilterFixedString|const QString &

/*
void clear()
*/
$method=|void|clear|

/*
void invalidate()
*/
$method=|void|invalidate|

/*
QObject *parent() const
*/
$internalMethod=|QObject *|parent,parent1|

/*
QModelIndex parent(const QModelIndex &child) const
*/
$internalMethod=|QModelIndex|parent,parent2|const QModelIndex &

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
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

/*
QModelIndex sibling(int row, int column, const QModelIndex &idx) const
*/
$method=|QModelIndex|sibling|int,int,const QModelIndex &

/*
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/
$method=|int|rowCount|const QModelIndex &=QModelIndex()

/*
int columnCount(const QModelIndex &parent = QModelIndex()) const
*/
$method=|int|columnCount|const QModelIndex &=QModelIndex()

/*
bool hasChildren(const QModelIndex &parent = QModelIndex()) const
*/
$method=|bool|hasChildren|const QModelIndex &=QModelIndex()

/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
*/
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
*/
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
bool setHeaderData(int section, Qt::Orientation orientation,const QVariant &value, int role = Qt::EditRole)
*/
$method=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

/*
QMimeData *mimeData(const QModelIndexList &indexes) const
*/
$method=|QMimeData *|mimeData|const QModelIndexList &

/*
bool dropMimeData(const QMimeData *data, Qt::DropAction action,int row, int column, const QModelIndex &parent)
*/
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

/*
bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex())
*/
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

/*
bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex())
*/
$method=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

/*
bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex())
*/
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

/*
bool removeColumns(int column, int count, const QModelIndex &parent = QModelIndex())
*/
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

/*
void fetchMore(const QModelIndex &parent)
*/
$method=|void|fetchMore|const QModelIndex &

/*
bool canFetchMore(const QModelIndex &parent) const
*/
$method=|bool|canFetchMore|const QModelIndex &

/*
Qt::ItemFlags flags(const QModelIndex &index) const
*/
$method=|Qt::ItemFlags|flags|const QModelIndex &

/*
QModelIndex buddy(const QModelIndex &index) const
*/
$method=|QModelIndex|buddy|const QModelIndex &

/*
QModelIndexList match(const QModelIndex &start, int role,const QVariant &value, int hits = 1,Qt::MatchFlags flags =Qt::MatchFlags(Qt::MatchStartsWith|Qt::MatchWrap)) const
*/
$method=|QModelIndexList|match|const QModelIndex &,int,const QVariant &,int=1,Qt::MatchFlags=Qt::MatchFlags(Qt::MatchStartsWith OR Qt::MatchWrap)

/*
QSize span(const QModelIndex &index) const
*/
$method=|QSize|span|const QModelIndex &

/*
void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

/*
QStringList mimeTypes() const
*/
$method=|QStringList|mimeTypes|

/*
Qt::DropActions supportedDropActions() const
*/
$method=|Qt::DropActions|supportedDropActions|

#pragma ENDDUMP

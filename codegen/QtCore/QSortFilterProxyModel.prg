%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractProxyModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QItemSelection>
#include <QSize>
#include <QMimeData>

$prototype=explicit QSortFilterProxyModel(QObject *parent = nullptr)
$constructor=|new|QObject *=0

$prototype=~QSortFilterProxyModel()
$deleteMethod

%%
%% Q_PROPERTY(QRegExp filterRegExp READ filterRegExp WRITE setFilterRegExp)
%%

$prototype=QRegExp filterRegExp() const
$method=|QRegExp|filterRegExp|

$prototype=void setFilterRegExp(const QRegExp &regExp) [slot]
$internalMethod=|void|setFilterRegExp,setFilterRegExp1|const QRegExp &

$prototype=void setFilterRegExp(const QString &pattern) [slot]
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
$addMethod=setFilterRegExp

%%
%% #if QT_CONFIG(regularexpression)
%% Q_PROPERTY(QRegularExpression filterRegularExpression READ filterRegularExpression WRITE setFilterRegularExpression)
%% #endif

$prototype=QRegularExpression filterRegularExpression() const
$method=5,12,0|QRegularExpression|filterRegularExpression||#if QT_CONFIG(regularexpression)

$prototype=void setFilterRegularExpression(const QString &pattern) [slot]
$internalMethod=5,12,0|void|setFilterRegularExpression,setFilterRegularExpression1|const QString &|#if QT_CONFIG(regularexpression)

$prototype=void setFilterRegularExpression(const QRegularExpression &regularExpression) [slot]
$internalMethod=5,12,0|void|setFilterRegularExpression,setFilterRegularExpression2|const QRegularExpression &|#if QT_CONFIG(regularexpression)

//[1]void setFilterRegularExpression(const QString &pattern);
//[2]void setFilterRegularExpression(const QRegularExpression &regularExpression);

HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERREGULAREXPRESSION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSortFilterProxyModel_setFilterRegularExpression1();
  }
  else if( ISNUMPAR(1) && ISQREGULAREXPRESSION(1) )
  {
    QSortFilterProxyModel_setFilterRegularExpression2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFilterRegularExpression

%%
%% Q_PROPERTY(int filterKeyColumn READ filterKeyColumn WRITE setFilterKeyColumn)
%%

$prototype=int filterKeyColumn() const
$method=|int|filterKeyColumn|

$prototype=void setFilterKeyColumn(int column)
$method=|void|setFilterKeyColumn|int

%%
%% Q_PROPERTY(bool dynamicSortFilter READ dynamicSortFilter WRITE setDynamicSortFilter)
%%

$prototype=bool dynamicSortFilter() const
$method=|bool|dynamicSortFilter|

$prototype=void setDynamicSortFilter(bool enable)
$method=|void|setDynamicSortFilter|bool

%%
%% Q_PROPERTY(Qt::CaseSensitivity filterCaseSensitivity READ filterCaseSensitivity WRITE setFilterCaseSensitivity)
%%

$prototype=Qt::CaseSensitivity filterCaseSensitivity() const
$method=|Qt::CaseSensitivity|filterCaseSensitivity|

$prototype=void setFilterCaseSensitivity(Qt::CaseSensitivity cs)
$method=|void|setFilterCaseSensitivity|Qt::CaseSensitivity

%%
%% Q_PROPERTY(Qt::CaseSensitivity sortCaseSensitivity READ sortCaseSensitivity WRITE setSortCaseSensitivity)
%%

$prototype=Qt::CaseSensitivity sortCaseSensitivity() const
$method=|Qt::CaseSensitivity|sortCaseSensitivity|

$prototype=void setSortCaseSensitivity(Qt::CaseSensitivity cs)
$method=|void|setSortCaseSensitivity|Qt::CaseSensitivity

%%
%% Q_PROPERTY(bool isSortLocaleAware READ isSortLocaleAware WRITE setSortLocaleAware)
%%

$prototype=bool isSortLocaleAware() const
$method=|bool|isSortLocaleAware|

$prototype=void setSortLocaleAware(bool on)
$method=|void|setSortLocaleAware|bool

%%
%% Q_PROPERTY(int sortRole READ sortRole WRITE setSortRole)
%%

$prototype=int sortRole() const
$method=|int|sortRole|

$prototype=void setSortRole(int role)
$method=|void|setSortRole|int

%%
%% Q_PROPERTY(int filterRole READ filterRole WRITE setFilterRole)
%%

$prototype=int filterRole() const
$method=|int|filterRole|

$prototype=void setFilterRole(int role)
$method=|void|setFilterRole|int

%%
%% Q_PROPERTY(bool recursiveFilteringEnabled READ isRecursiveFilteringEnabled WRITE setRecursiveFilteringEnabled)
%%

$prototype=bool isRecursiveFilteringEnabled() const
$method=5,10,0|bool|isRecursiveFilteringEnabled|

$prototype=void setRecursiveFilteringEnabled(bool recursive)
$method=5,10,0|void|setRecursiveFilteringEnabled|bool

%%
%%
%%

$prototype=void setSourceModel(QAbstractItemModel *sourceModel)
$method=|void|setSourceModel|QAbstractItemModel *

$prototype=QModelIndex mapToSource(const QModelIndex &proxyIndex) const
$method=|QModelIndex|mapToSource|const QModelIndex &

$prototype=QModelIndex mapFromSource(const QModelIndex &sourceIndex) const
$method=|QModelIndex|mapFromSource|const QModelIndex &

$prototype=QItemSelection mapSelectionToSource(const QItemSelection &proxySelection) const
$method=|QItemSelection|mapSelectionToSource|const QItemSelection &

$prototype=QItemSelection mapSelectionFromSource(const QItemSelection &sourceSelection) const
$method=|QItemSelection|mapSelectionFromSource|const QItemSelection &

$prototype=int sortColumn() const
$method=|int|sortColumn|

$prototype=Qt::SortOrder sortOrder() const
$method=|Qt::SortOrder|sortOrder|

$prototype=void setFilterWildcard(const QString &pattern) [slot]
$method=|void|setFilterWildcard|const QString &

$prototype=void setFilterFixedString(const QString &pattern) [slot]
$method=|void|setFilterFixedString|const QString &

$prototype=void clear() [slot]
$method=|void|clear|

$prototype=void invalidate() [slot]
$method=|void|invalidate|

$prototype=QObject *parent() const
$internalMethod=|QObject *|parent,parent1|

$prototype=QModelIndex parent(const QModelIndex &child) const
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
$addMethod=parent

$prototype=QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=QModelIndex sibling(int row, int column, const QModelIndex &idx) const
$method=|QModelIndex|sibling|int,int,const QModelIndex &

$prototype=int rowCount(const QModelIndex &parent = QModelIndex()) const
$method=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=int columnCount(const QModelIndex &parent = QModelIndex()) const
$method=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=bool hasChildren(const QModelIndex &parent = QModelIndex()) const
$method=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototype=QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=bool setHeaderData(int section, Qt::Orientation orientation,const QVariant &value, int role = Qt::EditRole)
$method=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

$prototype=QMimeData *mimeData(const QModelIndexList &indexes) const
$method=|QMimeData *|mimeData|const QModelIndexList &

$prototype=bool dropMimeData(const QMimeData *data, Qt::DropAction action,int row, int column, const QModelIndex &parent)
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeColumns(int column, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=void fetchMore(const QModelIndex &parent)
$method=|void|fetchMore|const QModelIndex &

$prototype=bool canFetchMore(const QModelIndex &parent) const
$method=|bool|canFetchMore|const QModelIndex &

$prototype=Qt::ItemFlags flags(const QModelIndex &index) const
$method=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=QModelIndex buddy(const QModelIndex &index) const
$method=|QModelIndex|buddy|const QModelIndex &

$prototype=QModelIndexList match(const QModelIndex &start, int role,const QVariant &value, int hits = 1,Qt::MatchFlags flags =Qt::MatchFlags(Qt::MatchStartsWith|Qt::MatchWrap)) const
$method=|QModelIndexList|match|const QModelIndex &,int,const QVariant &,int=1,Qt::MatchFlags=Qt::MatchFlags(Qt::MatchStartsWith OR Qt::MatchWrap)

$prototype=QSize span(const QModelIndex &index) const
$method=|QSize|span|const QModelIndex &

$prototype=void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=QStringList mimeTypes() const
$method=|QStringList|mimeTypes|

$prototype=Qt::DropActions supportedDropActions() const
$method=|Qt::DropActions|supportedDropActions|

$prototype=virtual bool filterAcceptsRow(int source_row, const QModelIndex &source_parent) const [protected]

$prototype=virtual bool filterAcceptsColumn(int source_column, const QModelIndex &source_parent) const [protected]

$prototype=virtual bool lessThan(const QModelIndex &source_left, const QModelIndex &source_right) const [protected]

%% #if QT_DEPRECATED_SINCE(5, 11)
$prototype=QT_DEPRECATED_X("Use QSortFilterProxyModel::invalidateFilter") void filterChanged() [protected]
%% #endif

$prototype=void invalidateFilter() [protected]

#pragma ENDDUMP

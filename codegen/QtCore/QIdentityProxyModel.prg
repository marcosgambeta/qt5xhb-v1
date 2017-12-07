$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QITEMSELECTION
#endif

CLASS QIdentityProxyModel INHERIT QAbstractProxyModel

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

$destructor

#pragma BEGINDUMP

$includes

#include <QItemSelection>

$prototype=QIdentityProxyModel(QObject* parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=int columnCount(const QModelIndex& parent = QModelIndex()) const
$method=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=QModelIndex index(int row, int column, const QModelIndex& parent = QModelIndex()) const
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=QModelIndex mapFromSource(const QModelIndex& sourceIndex) const
$method=|QModelIndex|mapFromSource|const QModelIndex &

$prototype=QModelIndex mapToSource(const QModelIndex& proxyIndex) const
$method=|QModelIndex|mapToSource|const QModelIndex &

$prototype=QModelIndex parent(const QModelIndex& child) const
$method=|QModelIndex|parent|const QModelIndex &

$prototype=int rowCount(const QModelIndex& parent = QModelIndex()) const
$method=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=QVariant headerData(int section, Qt::Orientation orientation, int role) const
$method=|QVariant|headerData|int,Qt::Orientation,int

$prototype=bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent)
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=QModelIndex sibling(int row, int column, const QModelIndex &idx) const
$method=|QModelIndex|sibling|int,int,const QModelIndex &

$prototype=QItemSelection mapSelectionFromSource(const QItemSelection& selection) const
$method=|QItemSelection|mapSelectionFromSource|const QItemSelection &

$prototype=QItemSelection mapSelectionToSource(const QItemSelection& selection) const
$method=|QItemSelection|mapSelectionToSource|const QItemSelection &

$prototype=QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags(Qt::MatchStartsWith|Qt::MatchWrap)) const
$method=|QModelIndexList|match|const QModelIndex &,int,const QVariant &,int=1,Qt::MatchFlags=Qt::MatchFlags(Qt::MatchStartsWith OR Qt::MatchWrap)

$prototype=void setSourceModel(QAbstractItemModel* sourceModel)
$method=|void|setSourceModel|QAbstractItemModel *

$prototype=bool insertColumns(int column, int count, const QModelIndex& parent = QModelIndex())
$method=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool insertRows(int row, int count, const QModelIndex& parent = QModelIndex())
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeColumns(int column, int count, const QModelIndex& parent = QModelIndex())
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeRows(int row, int count, const QModelIndex& parent = QModelIndex())
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

#pragma ENDDUMP

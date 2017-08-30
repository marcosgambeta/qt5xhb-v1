$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QITEMSELECTION
#endif

CLASS QIdentityProxyModel INHERIT QAbstractProxyModel

   DATA self_destruction INIT .F.

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

/*
QIdentityProxyModel(QObject* parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
int columnCount(const QModelIndex& parent = QModelIndex()) const
*/
$method=|int|columnCount|const QModelIndex &=QModelIndex()

/*
QModelIndex index(int row, int column, const QModelIndex& parent = QModelIndex()) const
*/
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

/*
QModelIndex mapFromSource(const QModelIndex& sourceIndex) const
*/
$method=|QModelIndex|mapFromSource|const QModelIndex &

/*
QModelIndex mapToSource(const QModelIndex& proxyIndex) const
*/
$method=|QModelIndex|mapToSource|const QModelIndex &

/*
QModelIndex parent(const QModelIndex& child) const
*/
$method=|QModelIndex|parent|const QModelIndex &

/*
int rowCount(const QModelIndex& parent = QModelIndex()) const
*/
$method=|int|rowCount|const QModelIndex &=QModelIndex()

/*
QVariant headerData(int section, Qt::Orientation orientation, int role) const
*/
$method=|QVariant|headerData|int,Qt::Orientation,int

/*
bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent)
*/
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

/*
QModelIndex sibling(int row, int column, const QModelIndex &idx) const
*/
$method=|QModelIndex|sibling|int,int,const QModelIndex &

/*
QItemSelection mapSelectionFromSource(const QItemSelection& selection) const
*/
$method=|QItemSelection|mapSelectionFromSource|const QItemSelection &

/*
QItemSelection mapSelectionToSource(const QItemSelection& selection) const
*/
$method=|QItemSelection|mapSelectionToSource|const QItemSelection &

/*
QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags(Qt::MatchStartsWith|Qt::MatchWrap)) const
*/
$method=|QModelIndexList|match|const QModelIndex &,int,const QVariant &,int=1,Qt::MatchFlags=Qt::MatchFlags(Qt::MatchStartsWith OR Qt::MatchWrap)

/*
void setSourceModel(QAbstractItemModel* sourceModel)
*/
$method=|void|setSourceModel|QAbstractItemModel *

/*
bool insertColumns(int column, int count, const QModelIndex& parent = QModelIndex())
*/
$method=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

/*
bool insertRows(int row, int count, const QModelIndex& parent = QModelIndex())
*/
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

/*
bool removeColumns(int column, int count, const QModelIndex& parent = QModelIndex())
*/
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

/*
bool removeRows(int row, int count, const QModelIndex& parent = QModelIndex())
*/
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

#pragma ENDDUMP

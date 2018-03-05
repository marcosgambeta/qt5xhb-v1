%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QAbstractItemModel INHERIT QObject

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

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QSize>

$deleteMethod

$prototype=virtual QModelIndex buddy ( const QModelIndex & index ) const
$virtualMethod=|QModelIndex|buddy|const QModelIndex &

$prototype=virtual bool canFetchMore ( const QModelIndex & parent ) const
$virtualMethod=|bool|canFetchMore|const QModelIndex &

$prototype=virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const = 0
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const = 0
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
$virtualMethod=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=virtual void fetchMore ( const QModelIndex & parent )
$virtualMethod=|void|fetchMore|const QModelIndex &

$prototype=virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
$virtualMethod=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototype=bool hasIndex ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
$method=|bool|hasIndex|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const = 0
$virtualMethod=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=bool insertColumn ( int column, const QModelIndex & parent = QModelIndex() )
$method=|bool|insertColumn|int,const QModelIndex &=QModelIndex()

$prototype=virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool insertRow ( int row, const QModelIndex & parent = QModelIndex() )
$method=|bool|insertRow|int,const QModelIndex &=QModelIndex()

$prototype=virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
$virtualMethod=|QModelIndexList|match|const QModelIndex &,int,const QVariant &,int=1,Qt::MatchFlags=Qt::MatchFlags( Qt::MatchStartsWith OR Qt::MatchWrap )

$prototype=virtual QStringList mimeTypes () const
$virtualMethod=|QStringList|mimeTypes|

$prototype=virtual QModelIndex parent ( const QModelIndex & index ) const = 0
$virtualMethod=|QModelIndex|parent|const QModelIndex &

$prototype=bool removeColumn ( int column, const QModelIndex & parent = QModelIndex() )
$method=|bool|removeColumn|int,const QModelIndex &=QModelIndex()

$prototype=virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeRow ( int row, const QModelIndex & parent = QModelIndex() )
$method=|bool|removeRow|int,const QModelIndex &=QModelIndex()

$prototype=virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const = 0
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

$prototype=QModelIndex sibling ( int row, int column, const QModelIndex & index ) const
$method=|QModelIndex|sibling|int,int,const QModelIndex &

$prototype=virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=virtual QSize span ( const QModelIndex & index ) const
$virtualMethod=|QSize|span|const QModelIndex &

$prototype=Qt::DropActions supportedDragActions () const
$method=|Qt::DropActions|supportedDragActions|

$prototype=virtual Qt::DropActions supportedDropActions () const
$virtualMethod=|Qt::DropActions|supportedDropActions|

$prototype=virtual void revert ()
$virtualMethod=|void|revert|

$prototype=virtual bool submit ()
$virtualMethod=|bool|submit|

$connectSignalFunction

$signalMethod=|columnsAboutToBeInserted(QModelIndex,int,int)
$signalMethod=|columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)
$signalMethod=|columnsAboutToBeRemoved(QModelIndex,int,int)
$signalMethod=|columnsInserted(QModelIndex,int,int)
$signalMethod=|columnsMoved(QModelIndex,int,int,QModelIndex,int)
$signalMethod=|columnsRemoved(QModelIndex,int,int)
$signalMethod=|dataChanged(QModelIndex,QModelIndex)
$signalMethod=|headerDataChanged(Qt::Orientation,int,int)
$signalMethod=|layoutAboutToBeChanged()
$signalMethod=|layoutChanged()
$signalMethod=|modelAboutToBeReset()
$signalMethod=|modelReset()
$signalMethod=|rowsAboutToBeInserted(QModelIndex,int,int)
$signalMethod=|rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)
$signalMethod=|rowsAboutToBeRemoved(QModelIndex,int,int)
$signalMethod=|rowsInserted(QModelIndex,int,int)
$signalMethod=|rowsMoved(QModelIndex,int,int,QModelIndex,int)
$signalMethod=|rowsRemoved(QModelIndex,int,int)

#pragma ENDDUMP

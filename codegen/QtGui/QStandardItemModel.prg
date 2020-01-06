%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QMimeData>

$prototype=QStandardItemModel(QObject *parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QStandardItemModel(int rows, int columns, QObject *parent = 0)
$internalConstructor=|new2|int,int,QObject *=0

//[1]QStandardItemModel(QObject *parent = 0)
//[2]QStandardItemModel(int rows, int columns, QObject *parent = 0)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QStandardItemModel_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    QStandardItemModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void appendColumn(const QList<QStandardItem*> &items)
$method=|void|appendColumn|const QList<QStandardItem *> &

$prototype=void appendRow(const QList<QStandardItem*> &items)
$internalMethod=|void|appendRow,appendRow1|const QList<QStandardItem *> &

$prototype=void appendRow(QStandardItem *item)
$internalMethod=|void|appendRow,appendRow2|QStandardItem *

//[1]void appendRow(const QList<QStandardItem*> &items)
//[2]void appendRow(QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDROW )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QStandardItemModel_appendRow1();
  }
  else if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
  {
    QStandardItemModel_appendRow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=appendRow

$prototype=void clear()
$method=|void|clear|

$prototype=QList<QStandardItem*> findItems(const QString &text,Qt::MatchFlags flags = Qt::MatchExactly,int column = 0) const
$method=|QList<QStandardItem *>|findItems|const QString &,Qt::MatchFlags=Qt::MatchExactly,int=0

$prototype=QStandardItem *horizontalHeaderItem(int column) const
$method=|QStandardItem *|horizontalHeaderItem|int

$prototype=QModelIndex indexFromItem(const QStandardItem *item) const
$method=|QModelIndex|indexFromItem|const QStandardItem *

$prototype=void insertColumn(int column, const QList<QStandardItem*> &items)
$internalMethod=|void|insertColumn,insertColumn1|int,const QList<QStandardItem *> &

$prototype=bool insertColumn(int column, const QModelIndex &parent = QModelIndex())
$internalMethod=|bool|insertColumn,insertColumn2|int,const QModelIndex &=QModelIndex()

//[1]void insertColumn(int column, const QList<QStandardItem*> &items)
//[2]bool insertColumn(int column, const QModelIndex &parent = QModelIndex())

HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMN )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    QStandardItemModel_insertColumn1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
  {
    QStandardItemModel_insertColumn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertColumn

$prototype=void insertRow(int row, const QList<QStandardItem*> &items)
$internalMethod=|void|insertRow,insertRow1|int,const QList<QStandardItem *> &

$prototype=void insertRow(int row, QStandardItem *item)
$internalMethod=|void|insertRow,insertRow2|int,QStandardItem *

$prototype=bool insertRow(int row, const QModelIndex &parent = QModelIndex())
$internalMethod=|bool|insertRow,insertRow3|int,const QModelIndex &=QModelIndex()

//[1]void insertRow(int row, const QList<QStandardItem*> &items)
//[2]void insertRow(int row, QStandardItem *item)
//[3]bool insertRow(int row, const QModelIndex &parent = QModelIndex())

HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    QStandardItemModel_insertRow1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    QStandardItemModel_insertRow2();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
  {
    QStandardItemModel_insertRow3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertRow

$prototype=QStandardItem *invisibleRootItem() const
$method=|QStandardItem *|invisibleRootItem|

$prototype=QStandardItem *item(int row, int column = 0) const
$method=|QStandardItem *|item|int,int=0

$prototype=QStandardItem *itemFromIndex(const QModelIndex &index) const
$method=|QStandardItem *|itemFromIndex|const QModelIndex &

$prototype=const QStandardItem *itemPrototype() const
$method=|const QStandardItem *|itemPrototype|

$prototype=QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=QModelIndex parent(const QModelIndex &child) const
$internalMethod=|QModelIndex|parent,parent1|const QModelIndex &

$prototype=QObject *parent() const
$internalMethod=|QObject *|parent,parent2|

//[1]QModelIndex parent(const QModelIndex &child) const
//[2]QObject *parent() const

HB_FUNC_STATIC( QSTANDARDITEMMODEL_PARENT )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QStandardItemModel_parent1();
  }
  else if( ISNUMPAR(0) )
  {
    QStandardItemModel_parent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=parent

$prototype=int rowCount(const QModelIndex &parent = QModelIndex()) const
$method=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=int columnCount(const QModelIndex &parent = QModelIndex()) const
$method=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=bool hasChildren(const QModelIndex &parent = QModelIndex()) const
$method=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototype=QModelIndex sibling(int row, int column, const QModelIndex &idx) const
$method=|QModelIndex|sibling|int,int,const QModelIndex &

$prototype=QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=QVariant headerData(int section, Qt::Orientation orientation,int role = Qt::DisplayRole) const
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value,int role = Qt::EditRole)
$method=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

$prototype=bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeColumns(int column, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=Qt::ItemFlags flags(const QModelIndex &index) const
$method=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=Qt::DropActions supportedDropActions() const
$method=|Qt::DropActions|supportedDropActions|

$prototype=void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=void setItem(int row, int column, QStandardItem *item)
$internalMethod=|void|setItem,setItem1|int,int,QStandardItem *

$prototype=void setItem(int row, QStandardItem *item)
$internalMethod=|void|setItem,setItem2|int,QStandardItem *

//[1]void setItem(int row, int column, QStandardItem *item)
//[2]void setItem(int row, QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTANDARDITEM(3) )
  {
    QStandardItemModel_setItem1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    QStandardItemModel_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setItem

$prototype=void setHorizontalHeaderItem(int column, QStandardItem *item)
$method=|void|setHorizontalHeaderItem|int,QStandardItem *

$prototype=QStandardItem *verticalHeaderItem(int row) const
$method=|QStandardItem *|verticalHeaderItem|int

$prototype=void setVerticalHeaderItem(int row, QStandardItem *item)
$method=|void|setVerticalHeaderItem|int,QStandardItem *

$prototype=void setHorizontalHeaderLabels(const QStringList &labels)
$method=|void|setHorizontalHeaderLabels|const QStringList &

$prototype=void setVerticalHeaderLabels(const QStringList &labels)
$method=|void|setVerticalHeaderLabels|const QStringList &

$prototype=void setRowCount(int rows)
$method=|void|setRowCount|int

$prototype=void setColumnCount(int columns)
$method=|void|setColumnCount|int

$prototype=QStandardItem *takeItem(int row, int column = 0)
$method=|QStandardItem *|takeItem|int,int=0

$prototype=QList<QStandardItem*> takeRow(int row)
$method=|QList<QStandardItem *>|takeRow|int

$prototype=QList<QStandardItem*> takeColumn(int column)
$method=|QList<QStandardItem *>|takeColumn|int

$prototype=QStandardItem *takeHorizontalHeaderItem(int column)
$method=|QStandardItem *|takeHorizontalHeaderItem|int

$prototype=QStandardItem *takeVerticalHeaderItem(int row)
$method=|QStandardItem *|takeVerticalHeaderItem|int

$prototype=void setItemPrototype(const QStandardItem *item)
$method=|void|setItemPrototype|const QStandardItem *

$prototype=int sortRole() const
$method=|int|sortRole|

$prototype=void setSortRole(int role)
$method=|void|setSortRole|int

$prototype=QStringList mimeTypes() const
$method=|QStringList|mimeTypes|

$prototype=QMimeData *mimeData(const QModelIndexList &indexes) const
$method=|QMimeData *|mimeData|const QModelIndexList &

$prototype=bool dropMimeData (const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex &parent)
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=bool QStandardItemModel::clearItemData(const QModelIndex &index)
$method=5,12,0|bool|clearItemData|const QModelIndex &

$beginSignals
$signal=|itemChanged(QStandardItem*)
$endSignals

#pragma ENDDUMP

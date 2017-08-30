$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTANDARDITEM
REQUEST QMODELINDEX
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QMIMEDATA
#endif

CLASS QStandardItemModel INHERIT QAbstractItemModel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD appendColumn
   METHOD appendRow
   METHOD clear
   METHOD findItems
   METHOD horizontalHeaderItem
   METHOD indexFromItem
   METHOD insertColumn
   METHOD insertRow
   METHOD invisibleRootItem
   METHOD item
   METHOD itemFromIndex
   METHOD itemPrototype
   METHOD index
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

$destructor

#pragma BEGINDUMP

$includes

/*
QStandardItemModel(QObject *parent = 0)
*/
$internalConstructor=|new1|QObject *=0

/*
QStandardItemModel(int rows, int columns, QObject *parent = 0)
*/
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

/*
void appendColumn(const QList<QStandardItem*> &items)
*/
$method=|void|appendColumn|const QList<QStandardItem *> &

/*
void appendRow(const QList<QStandardItem*> &items)
*/
$internalMethod=|void|appendRow,appendRow1|const QList<QStandardItem*> &

/*
void appendRow(QStandardItem *item)
*/
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

/*
void clear()
*/
$method=|void|clear|

/*
QList<QStandardItem*> findItems(const QString &text,Qt::MatchFlags flags = Qt::MatchExactly,int column = 0) const
*/
$method=|QList<QStandardItem *>|findItems|const QString &,Qt::MatchFlags=Qt::MatchExactly,int=0

/*
QStandardItem *horizontalHeaderItem(int column) const
*/
$method=|QStandardItem *|horizontalHeaderItem|int

/*
QModelIndex indexFromItem(const QStandardItem *item) const
*/
$method=|QModelIndex|indexFromItem|const QStandardItem *

/*
void insertColumn(int column, const QList<QStandardItem*> &items)
*/
$internalMethod=|void|insertColumn,insertColumn1|int,const QList<QStandardItem *> &

/*
bool insertColumn(int column, const QModelIndex &parent = QModelIndex())
*/
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

/*
void insertRow(int row, const QList<QStandardItem*> &items)
*/
$internalMethod=|void|insertRow,insertRow1|int,const QList<QStandardItem *> &

/*
void insertRow(int row, QStandardItem *item)
*/
$internalMethod=|void|insertRow,insertRow2|int,QStandardItem *

/*
bool insertRow(int row, const QModelIndex &parent = QModelIndex())
*/
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

/*
QStandardItem *invisibleRootItem() const
*/
$method=|QStandardItem *|invisibleRootItem|

/*
QStandardItem *item(int row, int column = 0) const
*/
$method=|QStandardItem *|item|int,int=0

/*
QStandardItem *itemFromIndex(const QModelIndex &index) const
*/
$method=|QStandardItem *|itemFromIndex|const QModelIndex &

/*
const QStandardItem *itemPrototype() const
*/
$method=|const QStandardItem *|itemPrototype|

/*
QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
*/
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

/*
QModelIndex parent(const QModelIndex &child) const
*/
$internalMethod=|QModelIndex|parent,parent1|const QModelIndex &

/*
QObject *parent() const
*/
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
QModelIndex sibling(int row, int column, const QModelIndex &idx) const
*/
$method=|QModelIndex|sibling|int,int,const QModelIndex &

/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
*/
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
QVariant headerData(int section, Qt::Orientation orientation,int role = Qt::DisplayRole) const
*/
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value,int role = Qt::EditRole)
*/
$method=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

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
Qt::ItemFlags flags(const QModelIndex &index) const
*/
$method=|Qt::ItemFlags|flags|const QModelIndex &

/*
Qt::DropActions supportedDropActions() const
*/
$method=|Qt::DropActions|supportedDropActions|

/*
void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

/*
void setItem(int row, int column, QStandardItem *item)
*/
$internalMethod=|void|setItem,setItem1|int,int,QStandardItem *

/*
void setItem(int row, QStandardItem *item)
*/
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

/*
void setHorizontalHeaderItem(int column, QStandardItem *item)
*/
$method=|void|setHorizontalHeaderItem|int,QStandardItem *

/*
QStandardItem *verticalHeaderItem(int row) const
*/
$method=|QStandardItem *|verticalHeaderItem|int

/*
void setVerticalHeaderItem(int row, QStandardItem *item)
*/
$method=|void|setVerticalHeaderItem|int,QStandardItem *

/*
void setHorizontalHeaderLabels(const QStringList &labels)
*/
$method=|void|setHorizontalHeaderLabels|const QStringList &

/*
void setVerticalHeaderLabels(const QStringList &labels)
*/
$method=|void|setVerticalHeaderLabels|const QStringList &

/*
void setRowCount(int rows)
*/
$method=|void|setRowCount|int

/*
void setColumnCount(int columns)
*/
$method=|void|setColumnCount|int

/*
QStandardItem *takeItem(int row, int column = 0)
*/
$method=|QStandardItem *|takeItem|int,int=0

/*
QList<QStandardItem*> takeRow(int row)
*/
$method=|QList<QStandardItem *>|takeRow|int

/*
QList<QStandardItem*> takeColumn(int column)
*/
$method=|QList<QStandardItem *>|takeColumn|int

/*
QStandardItem *takeHorizontalHeaderItem(int column)
*/
$method=|QStandardItem *|takeHorizontalHeaderItem|int

/*
QStandardItem *takeVerticalHeaderItem(int row)
*/
$method=|QStandardItem *|takeVerticalHeaderItem|int

/*
void setItemPrototype(const QStandardItem *item)
*/
$method=|void|setItemPrototype|const QStandardItem *

/*
int sortRole() const
*/
$method=|int|sortRole|

/*
void setSortRole(int role)
*/
$method=|void|setSortRole|int

/*
QStringList mimeTypes() const
*/
$method=|QStringList|mimeTypes|

/*
QMimeData *mimeData(const QModelIndexList &indexes) const
*/
$method=|QMimeData *|mimeData|const QModelIndexList &

/*
bool dropMimeData (const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex &parent)
*/
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLDATABASE
REQUEST QSQLINDEX
REQUEST QVARIANT
REQUEST QSQLRECORD
#endif

CLASS QSqlTableModel INHERIT QSqlQueryModel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD database
   METHOD editStrategy
   METHOD setEditStrategy
   METHOD fieldIndex
   METHOD filter
   METHOD setFilter
   METHOD insertRecord
   METHOD isDirty
   METHOD primaryKey
   METHOD revertRow
   METHOD select
   METHOD setRecord
   METHOD sort
   METHOD setSort
   METHOD setTable
   METHOD tableName
   METHOD clear
   METHOD data
   METHOD setData
   METHOD flags
   METHOD headerData
   METHOD insertRows
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD revert
   METHOD revertAll
   METHOD submit
   METHOD submitAll
   METHOD record
   METHOD selectRow

   METHOD onBeforeDelete
   METHOD onBeforeInsert
   METHOD onBeforeUpdate
   METHOD onPrimeInsert

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QSqlIndex>

/*
explicit QSqlTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
*/
$constructor=|new|QObject *=0,QSqlDatabase=QSqlDatabase()

$deleteMethod

/*
QSqlDatabase database () const
*/
$method=|QSqlDatabase|database|

/*
EditStrategy editStrategy () const
*/
$method=|QSqlTableModel::EditStrategy|editStrategy|

/*
virtual void setEditStrategy ( EditStrategy strategy )
*/
$method=|void|setEditStrategy|QSqlTableModel::EditStrategy

/*
int fieldIndex ( const QString & fieldName ) const
*/
$method=|int|fieldIndex|const QString &

/*
QString filter () const
*/
$method=|QString|filter|

/*
virtual void setFilter ( const QString & filter )
*/
$method=|void|setFilter|const QString &

/*
bool insertRecord ( int row, const QSqlRecord & record )
*/
$method=|bool|insertRecord|int,const QSqlRecord &

/*
bool isDirty() const
*/
$internalMethod=|bool|isDirty,isDirty1|

/*
bool isDirty ( const QModelIndex & index ) const
*/
$internalMethod=|bool|isDirty,isDirty2|const QModelIndex &

//[1]bool isDirty() const
//[2]bool isDirty ( const QModelIndex & index ) const

HB_FUNC( QSQLTABLEMODEL_ISDIRTY )
{
  if( ISNUMPAR(0) )
  {
    QSqlTableModel_isDirty1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QSqlTableModel_isDirty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSqlIndex primaryKey () const
*/
$method=|QSqlIndex|primaryKey|

/*
virtual void revertRow ( int row )
*/
$method=|void|revertRow|int

/*
virtual bool select ()
*/
$method=|bool|select|

/*
bool setRecord ( int row, const QSqlRecord & record )
*/
$method=|bool|setRecord|int,const QSqlRecord &

/*
void sort ( int column, Qt::SortOrder order )
*/
$method=|void|sort|int,Qt::SortOrder

/*
virtual void setSort ( int column, Qt::SortOrder order )
*/
$method=|void|setSort|int,Qt::SortOrder

/*
virtual void setTable ( const QString & tableName )
*/
$method=|void|setTable|const QString &

/*
QString tableName () const
*/
$method=|QString|tableName|

/*
void clear ()
*/
$method=|void|clear|

/*
QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
$method=|Qt::ItemFlags|flags|const QModelIndex &

/*
QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

/*
bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

/*
bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

/*
int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
$method=|int|rowCount|const QModelIndex &=QModelIndex()

/*
void revert ()
*/
$method=|void|revert|

/*
void revertAll ()
*/
$method=|void|revertAll|

/*
bool submit ()
*/
$method=|bool|submit|

/*
bool submitAll ()
*/
$method=|bool|submitAll|

/*
QSqlRecord record() const
*/
$internalMethod=|QSqlRecord|record,record1|

/*
QSqlRecord record(int row) const
*/
$internalMethod=|QSqlRecord|record,record2|int

//[1]QSqlRecord record() const
//[2]QSqlRecord record(int row) const

HB_FUNC( QSQLTABLEMODEL_RECORD )
{
  if( ISNUMPAR(0) )
  {
    QSqlTableModel_record1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlTableModel_record2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool selectRow(int row)
*/
$method=|bool|selectRow|int

#pragma ENDDUMP

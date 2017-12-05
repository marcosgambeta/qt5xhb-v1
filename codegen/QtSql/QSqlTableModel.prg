$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLDATABASE
REQUEST QSQLINDEX
REQUEST QVARIANT
REQUEST QSQLRECORD
#endif

CLASS QSqlTableModel INHERIT QSqlQueryModel

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

$prototype=explicit QSqlTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
$constructor=|new|QObject *=0,QSqlDatabase=QSqlDatabase()

$deleteMethod

$prototype=QSqlDatabase database () const
$method=|QSqlDatabase|database|

$prototype=EditStrategy editStrategy () const
$method=|QSqlTableModel::EditStrategy|editStrategy|

$prototype=virtual void setEditStrategy ( EditStrategy strategy )
$method=|void|setEditStrategy|QSqlTableModel::EditStrategy

$prototype=int fieldIndex ( const QString & fieldName ) const
$method=|int|fieldIndex|const QString &

$prototype=QString filter () const
$method=|QString|filter|

$prototype=virtual void setFilter ( const QString & filter )
$method=|void|setFilter|const QString &

$prototype=bool insertRecord ( int row, const QSqlRecord & record )
$method=|bool|insertRecord|int,const QSqlRecord &

$prototype=bool isDirty() const
$internalMethod=|bool|isDirty,isDirty1|

$prototype=bool isDirty ( const QModelIndex & index ) const
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

$prototype=QSqlIndex primaryKey () const
$method=|QSqlIndex|primaryKey|

$prototype=virtual void revertRow ( int row )
$method=|void|revertRow|int

$prototype=virtual bool select ()
$method=|bool|select|

$prototype=bool setRecord ( int row, const QSqlRecord & record )
$method=|bool|setRecord|int,const QSqlRecord &

$prototype=void sort ( int column, Qt::SortOrder order )
$method=|void|sort|int,Qt::SortOrder

$prototype=virtual void setSort ( int column, Qt::SortOrder order )
$method=|void|setSort|int,Qt::SortOrder

$prototype=virtual void setTable ( const QString & tableName )
$method=|void|setTable|const QString &

$prototype=QString tableName () const
$method=|QString|tableName|

$prototype=void clear ()
$method=|void|clear|

$prototype=QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=Qt::ItemFlags flags ( const QModelIndex & index ) const
$method=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=int rowCount ( const QModelIndex & parent = QModelIndex() ) const
$method=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=void revert ()
$method=|void|revert|

$prototype=void revertAll ()
$method=|void|revertAll|

$prototype=bool submit ()
$method=|bool|submit|

$prototype=bool submitAll ()
$method=|bool|submitAll|

$prototype=QSqlRecord record() const
$internalMethod=|QSqlRecord|record,record1|

$prototype=QSqlRecord record(int row) const
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

$prototype=virtual bool selectRow(int row)
$method=|bool|selectRow|int

#pragma ENDDUMP

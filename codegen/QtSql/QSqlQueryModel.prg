$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLERROR
REQUEST QSQLQUERY
REQUEST QSQLRECORD
REQUEST QVARIANT
#endif

CLASS QSqlQueryModel INHERIT QAbstractTableModel

   METHOD new
   METHOD delete
   METHOD clear
   METHOD lastError
   METHOD query
   METHOD setQuery
   METHOD record
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD fetchMore
   METHOD headerData
   METHOD setHeaderData
   METHOD insertColumns
   METHOD removeColumns
   METHOD rowCount

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QSqlError>
#include <QSqlQuery>
#include <QSqlRecord>

$prototype=explicit QSqlQueryModel ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

$prototype=QSqlError lastError () const
$method=|QSqlError|lastError|

$prototype=QSqlQuery query () const
$method=|QSqlQuery|query|

$prototype=void setQuery ( const QSqlQuery & query )
$internalMethod=|void|setQuery,setQuery1|const QSqlQuery &

$prototype=void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )
$internalMethod=|void|setQuery,setQuery2|const QString &,const QSqlDatabase &=QSqlDatabase()

//[1]void setQuery ( const QSqlQuery & query )
//[2]void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )

HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY )
{
  if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    QSqlQueryModel_setQuery1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    QSqlQueryModel_setQuery2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSqlRecord record ( int row ) const
$internalMethod=|QSqlRecord|record,record1|int

$prototype=QSqlRecord record () const
$internalMethod=|QSqlRecord|record,record2|

//[1]QSqlRecord record ( int row ) const
//[2]QSqlRecord record () const

HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQueryModel_record1();
  }
  else if( ISNUMPAR(0) )
  {
    QSqlQueryModel_record2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool canFetchMore ( const QModelIndex & parent = QModelIndex() ) const
$method=|bool|canFetchMore|const QModelIndex &=QModelIndex()

$prototype=int columnCount ( const QModelIndex & index = QModelIndex() ) const
$method=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=QVariant data ( const QModelIndex & item, int role = Qt::DisplayRole ) const
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=void fetchMore ( const QModelIndex & parent = QModelIndex() )
$method=|void|fetchMore|const QModelIndex &=QModelIndex()

$prototype=QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
$method=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

$prototype=bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$method=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=int rowCount ( const QModelIndex & parent = QModelIndex() ) const
$method=|int|rowCount|const QModelIndex &=QModelIndex()

#pragma ENDDUMP

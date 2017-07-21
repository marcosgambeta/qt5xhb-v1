$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLRELATION
REQUEST QSQLTABLEMODEL
REQUEST QVARIANT
#endif

CLASS QSqlRelationalTableModel INHERIT QSqlTableModel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD relation
   METHOD relationModel
   METHOD setRelation
   METHOD clear
   METHOD data
   METHOD removeColumns
   METHOD select
   METHOD setData
   METHOD setTable
   METHOD revertRow
   METHOD setJoinMode

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QSqlRelationalTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
*/
$constructor=|new|QObject *=0,QSqlDatabase=QSqlDatabase()

$deleteMethod

/*
QSqlRelation relation ( int column ) const
*/
$method=|QSqlRelation|relation|int

/*
virtual QSqlTableModel * relationModel ( int column ) const
*/
$method=|QSqlTableModel *|relationModel|int

/*
virtual void setRelation ( int column, const QSqlRelation & relation )
*/
$method=|void|setRelation|int,const QSqlRelation &

/*
void clear ()
*/
$method=|void|clear|

/*
QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

/*
bool select ()
*/
$method=|bool|select|

/*
bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
void setTable ( const QString & table )
*/
$method=|void|setTable|const QString &

/*
void revertRow ( int row )
*/
$method=|void|revertRow|int

/*
void setJoinMode( QSqlRelationalTableModel::JoinMode joinMode )
*/
$method=|void|setJoinMode|QSqlRelationalTableModel::JoinMode

#pragma ENDDUMP

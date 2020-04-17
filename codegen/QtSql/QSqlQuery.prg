%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSql

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtSql/QSqlDriver>
#include <QtSql/QSqlError>
#include <QtSql/QSqlRecord>
#include <QtCore/QVariant>

$prototype=explicit QSqlQuery ( QSqlResult * result )
$internalConstructor=|new1|QSqlResult *

$prototype=explicit QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
$internalConstructor=|new2|const QString &=QString(),QSqlDatabase=QSqlDatabase()

$prototype=explicit QSqlQuery ( QSqlDatabase db )
$internalConstructor=|new3|QSqlDatabase

$prototype=QSqlQuery ( const QSqlQuery & other )
$internalConstructor=|new4|const QSqlQuery &

/*
[1]explicit QSqlQuery ( QSqlResult * result )
[2]explicit QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
[3]explicit QSqlQuery ( QSqlDatabase db )
[4]QSqlQuery ( const QSqlQuery & other )
*/

HB_FUNC_STATIC( QSQLQUERY_NEW )
{
  if( ISNUMPAR(1) && ISQSQLRESULT(1) )
  {
    QSqlQuery_new1();
  }
  else if( ISBETWEEN(1,2) && ISOPTCHAR(1) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    QSqlQuery_new2();
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    QSqlQuery_new3();
  }
  else if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    QSqlQuery_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addBindValue ( const QVariant & val, QSql::ParamType paramType = QSql::In )
$method=|void|addBindValue|const QVariant &,QSql::ParamType=QSql::In

$prototype=int at () const
$method=|int|at|

$prototype=void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
$internalMethod=|void|bindValue,bindValue1|const QString &,const QVariant &,QSql::ParamType=QSql::In

$prototype=void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
$internalMethod=|void|bindValue,bindValue2|int,const QVariant &,QSql::ParamType=QSql::In

/*
[1]void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
[2]void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/

HB_FUNC_STATIC( QSQLQUERY_BINDVALUE )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISQVARIANT(2) && ISOPTNUM(3) )
  {
    QSqlQuery_bindValue1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQVARIANT(2) && ISOPTNUM(3) )
  {
    QSqlQuery_bindValue2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bindValue

$prototype=QVariant boundValue ( const QString & placeholder ) const
$internalMethod=|QVariant|boundValue,boundValue1|const QString &

$prototype=QVariant boundValue ( int pos ) const
$internalMethod=|QVariant|boundValue,boundValue2|int

/*
[1]QVariant boundValue ( const QString & placeholder ) const
[2]QVariant boundValue ( int pos ) const
*/

HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_boundValue1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQuery_boundValue2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=boundValue

$prototype=void clear ()
$method=|void|clear|

$prototype=const QSqlDriver * driver () const
$method=|const QSqlDriver *|driver|

$prototype=bool exec ( const QString & query )
$internalMethod=|bool|exec,exec1|const QString &

$prototype=bool exec ()
$internalMethod=|bool|exec,exec2|

/*
[1]bool exec ( const QString & query )
[2]bool exec ()
*/

HB_FUNC_STATIC( QSQLQUERY_EXEC )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_exec1();
  }
  else if( ISNUMPAR(0) )
  {
    QSqlQuery_exec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=exec

$prototype=bool execBatch ( BatchExecutionMode mode = ValuesAsRows )
$method=|bool|execBatch|QSqlQuery::BatchExecutionMode=QSqlQuery::ValuesAsRows

$prototype=QString executedQuery () const
$method=|QString|executedQuery|

$prototype=void finish ()
$method=|void|finish|

$prototype=bool first ()
$method=|bool|first|

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=bool isForwardOnly () const
$method=|bool|isForwardOnly|

$prototype=void setForwardOnly ( bool forward )
$method=|void|setForwardOnly|bool

$prototype=bool isNull ( int field ) const
$internalMethod=|bool|isNull,isNull1|int

$prototype=bool isNull(const QString &name) const
%% TODO: check Qt version
$internalMethod=5,3,0|bool|isNull,isNull2|const QString &

/*
[1]bool isNull ( int field ) const
[2]bool isNull(const QString &name) const
*/

HB_FUNC_STATIC( QSQLQUERY_ISNULL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQuery_isNull1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_isNull2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=isNull

$prototype=bool isSelect () const
$method=|bool|isSelect|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool last ()
$method=|bool|last|

$prototype=QSqlError lastError () const
$method=|QSqlError|lastError|

$prototype=QVariant lastInsertId () const
$method=|QVariant|lastInsertId|

$prototype=QString lastQuery () const
$method=|QString|lastQuery|

$prototype=bool next ()
$method=|bool|next|

$prototype=bool nextResult ()
$method=|bool|nextResult|

$prototype=int numRowsAffected () const
$method=|int|numRowsAffected|

$prototype=QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
$method=|QSql::NumericalPrecisionPolicy|numericalPrecisionPolicy|

$prototype=void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

$prototype=bool prepare ( const QString & query )
$method=|bool|prepare|const QString &

$prototype=bool previous ()
$method=|bool|previous|

$prototype=QSqlRecord record () const
$method=|QSqlRecord|record|

$prototype=const QSqlResult * result () const
$method=|const QSqlResult *|result|

$prototype=bool seek ( int index, bool relative = false )
$method=|bool|seek|int,bool=false

$prototype=int size () const
$method=|int|size|

$prototype=QVariant value ( int index ) const
$internalMethod=|QVariant|value,value1|int

$prototype=QVariant value(const QString& name) const
$internalMethod=|QVariant|value,value2|const QString &

/*
[1]QVariant value ( int index ) const
[2]QVariant value(const QString& name) const
*/

HB_FUNC_STATIC( QSQLQUERY_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQuery_value1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_value2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=value

$extraMethods

#pragma ENDDUMP

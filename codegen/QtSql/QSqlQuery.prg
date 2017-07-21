$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSQLDRIVER
REQUEST QSQLERROR
REQUEST QSQLRECORD
REQUEST QSQLRESULT
#endif

CLASS QSqlQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addBindValue
   METHOD at
   METHOD bindValue
   METHOD boundValue
   METHOD clear
   METHOD driver
   METHOD exec
   METHOD execBatch
   METHOD executedQuery
   METHOD finish
   METHOD first
   METHOD isActive
   METHOD isForwardOnly
   METHOD setForwardOnly
   METHOD isNull
   METHOD isSelect
   METHOD isValid
   METHOD last
   METHOD lastError
   METHOD lastInsertId
   METHOD lastQuery
   METHOD next
   METHOD nextResult
   METHOD numRowsAffected
   METHOD numericalPrecisionPolicy
   METHOD setNumericalPrecisionPolicy
   METHOD prepare
   METHOD previous
   METHOD record
   METHOD result
   METHOD seek
   METHOD size
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QSqlError>
#include <QSqlRecord>

/*
explicit QSqlQuery ( QSqlResult * result )
*/
$internalConstructor=|new1|QSqlResult *

/*
explicit QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
*/
$internalConstructor=|new2|const QString &=QString(),QSqlDatabase=QSqlDatabase()

/*
explicit QSqlQuery ( QSqlDatabase db )
*/
$internalConstructor=|new3|QSqlDatabase

/*
QSqlQuery ( const QSqlQuery & other )
*/
$internalConstructor=|new4|const QSqlQuery &

//[1]explicit QSqlQuery ( QSqlResult * result )
//[2]explicit QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
//[3]explicit QSqlQuery ( QSqlDatabase db )
//[4]QSqlQuery ( const QSqlQuery & other )

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

/*
void addBindValue ( const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
$method=|void|addBindValue|const QVariant &,QSql::ParamType=QSql::In

/*
int at () const
*/
$method=|int|at|

/*
void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
$internalMethod=|void|bindValue,bindValue1|const QString &,const QVariant &,QSql::ParamType=QSql::In

/*
void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
$internalMethod=|void|bindValue,bindValue2|int,const QVariant &,QSql::ParamType=QSql::In

//[1]void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
//[2]void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )

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

/*
QVariant boundValue ( const QString & placeholder ) const
*/
$internalMethod=|QVariant|boundValue,boundValue1|const QString &

/*
QVariant boundValue ( int pos ) const
*/
$internalMethod=|QVariant|boundValue,boundValue2|int

//[1]QVariant boundValue ( const QString & placeholder ) const
//[2]QVariant boundValue ( int pos ) const

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

/*
void clear ()
*/
$method=|void|clear|

/*
const QSqlDriver * driver () const
*/
$method=|const QSqlDriver *|driver|

/*
bool exec ( const QString & query )
*/
$internalMethod=|bool|exec,exec1|const QString &

/*
bool exec ()
*/
$internalMethod=|bool|exec,exec2|

//[1]bool exec ( const QString & query )
//[2]bool exec ()

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

/*
bool execBatch ( BatchExecutionMode mode = ValuesAsRows )
*/
$method=|bool|execBatch|QSqlQuery::BatchExecutionMode=QSqlQuery::ValuesAsRows

/*
QString executedQuery () const
*/
$method=|QString|executedQuery|

/*
void finish ()
*/
$method=|void|finish|

/*
bool first ()
*/
$method=|bool|first|

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
bool isForwardOnly () const
*/
$method=|bool|isForwardOnly|

/*
void setForwardOnly ( bool forward )
*/
$method=|void|setForwardOnly|bool

/*
bool isNull ( int field ) const
*/
$internalMethod=|bool|isNull,isNull1|int

/*
bool isNull(const QString &name) const
*/
$internalMethod=|bool|isNull,isNull2|const QString &

//[1]bool isNull ( int field ) const
//[2]bool isNull(const QString &name) const

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

/*
bool isSelect () const
*/
$method=|bool|isSelect|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool last ()
*/
$method=|bool|last|

/*
QSqlError lastError () const
*/
$method=|QSqlError|lastError|

/*
QVariant lastInsertId () const
*/
$method=|QVariant|lastInsertId|

/*
QString lastQuery () const
*/
$method=|QString|lastQuery|

/*
bool next ()
*/
$method=|bool|next|

/*
bool nextResult ()
*/
$method=|bool|nextResult|

/*
int numRowsAffected () const
*/
$method=|int|numRowsAffected|

/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
$method=|QSql::NumericalPrecisionPolicy|numericalPrecisionPolicy|

/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

/*
bool prepare ( const QString & query )
*/
$method=|bool|prepare|const QString &

/*
bool previous ()
*/
$method=|bool|previous|

/*
QSqlRecord record () const
*/
$method=|QSqlRecord|record|

/*
const QSqlResult * result () const
*/
$method=|const QSqlResult *|result|

/*
bool seek ( int index, bool relative = false )
*/
$method=|bool|seek|int,bool=false

/*
int size () const
*/
$method=|int|size|

/*
QVariant value ( int index ) const
*/
$internalMethod=|QVariant|value,value1|int

/*
QVariant value(const QString& name) const
*/
$internalMethod=|QVariant|value,value2|const QString &

//[1]QVariant value ( int index ) const
//[2]QVariant value(const QString& name) const

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

$extraMethods

#pragma ENDDUMP

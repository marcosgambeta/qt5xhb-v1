/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSQLDRIVER
REQUEST QSQLERROR
REQUEST QSQLRECORD
REQUEST QSQLRESULT
#endif

CLASS QSqlQuery

   DATA pointer
   DATA class_id INIT Class_Id_QSqlQuery
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD addBindValue
   METHOD at
   METHOD bindValue1
   METHOD bindValue2
   METHOD bindValue
   METHOD boundValue1
   METHOD boundValue2
   METHOD boundValue
   METHOD clear
   METHOD driver
   METHOD exec1
   METHOD exec2
   METHOD exec
   METHOD execBatch
   METHOD executedQuery
   METHOD finish
   METHOD first
   METHOD isActive
   METHOD isForwardOnly
   METHOD setForwardOnly
   METHOD isNull1
   METHOD isNull2
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
   METHOD value1
   METHOD value2
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSqlQuery>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSqlQuery>
#endif
#endif

#include <QVariant>
#include <QSqlError>
#include <QSqlRecord>

/*
explicit QSqlQuery ( QSqlResult * result )
*/
HB_FUNC_STATIC( QSQLQUERY_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlResult * par1 = (QSqlResult *) _qtxhb_itemGetPtr(1);
  QSqlQuery * o = new QSqlQuery ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
explicit QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
*/
HB_FUNC_STATIC( QSQLQUERY_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
  QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) _qtxhb_itemGetPtr(2);
  QSqlQuery * o = new QSqlQuery ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
explicit QSqlQuery ( QSqlDatabase db )
*/
HB_FUNC_STATIC( QSQLQUERY_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlDatabase * par1 = (QSqlDatabase *) _qtxhb_itemGetPtr(1);
  QSqlQuery * o = new QSqlQuery ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSqlQuery ( const QSqlQuery & other )
*/
HB_FUNC_STATIC( QSQLQUERY_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlQuery * par1 = (QSqlQuery *) _qtxhb_itemGetPtr(1);
  QSqlQuery * o = new QSqlQuery ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]explicit QSqlQuery ( QSqlResult * result )
//[2]explicit QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
//[3]explicit QSqlQuery ( QSqlDatabase db )
//[4]QSqlQuery ( const QSqlQuery & other )

HB_FUNC_STATIC( QSQLQUERY_NEW )
{
  if( ISNUMPAR(1) && ISQSQLRESULT(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_NEW1 );
  }
  else if( ISBETWEEN(1,2) && (ISCHAR(1)||ISNIL(1)) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSQLQUERY_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLQUERY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void addBindValue ( const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
HB_FUNC_STATIC( QSQLQUERY_ADDBINDVALUE )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QSql::In : hb_parni(2);
    obj->addBindValue ( *par1,  (QSql::ParamType) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int at () const
*/
HB_FUNC_STATIC( QSQLQUERY_AT )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->at (  ) );
  }
}


/*
void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
HB_FUNC_STATIC( QSQLQUERY_BINDVALUE1 )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    int par3 = ISNIL(3)? (int) QSql::In : hb_parni(3);
    obj->bindValue ( par1, *par2,  (QSql::ParamType) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
HB_FUNC_STATIC( QSQLQUERY_BINDVALUE2 )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    int par3 = ISNIL(3)? (int) QSql::In : hb_parni(3);
    obj->bindValue ( (int) hb_parni(1), *par2,  (QSql::ParamType) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
//[2]void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )

HB_FUNC_STATIC( QSQLQUERY_BINDVALUE )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISQVARIANT(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSQLQUERY_BINDVALUE1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQVARIANT(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSQLQUERY_BINDVALUE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant boundValue ( const QString & placeholder ) const
*/
HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE1 )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->boundValue ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant boundValue ( int pos ) const
*/
HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE2 )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->boundValue ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


//[1]QVariant boundValue ( const QString & placeholder ) const
//[2]QVariant boundValue ( int pos ) const

HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_BOUNDVALUE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_BOUNDVALUE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QSQLQUERY_CLEAR )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QSqlDriver * driver () const
*/
HB_FUNC_STATIC( QSQLQUERY_DRIVER )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSqlDriver * ptr = obj->driver (  );
    _qt5xhb_createReturnClass ( ptr, "QSQLDRIVER" );
  }
}


/*
bool exec ( const QString & query )
*/
HB_FUNC_STATIC( QSQLQUERY_EXEC1 )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->exec ( par1 ) );
  }
}

/*
bool exec ()
*/
HB_FUNC_STATIC( QSQLQUERY_EXEC2 )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->exec (  ) );
  }
}


//[1]bool exec ( const QString & query )
//[2]bool exec ()

HB_FUNC_STATIC( QSQLQUERY_EXEC )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_EXEC1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLQUERY_EXEC2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool execBatch ( BatchExecutionMode mode = ValuesAsRows )
*/
HB_FUNC_STATIC( QSQLQUERY_EXECBATCH )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QSqlQuery::ValuesAsRows : hb_parni(1);
    hb_retl( obj->execBatch (  (QSqlQuery::BatchExecutionMode) par1 ) );
  }
}


/*
QString executedQuery () const
*/
HB_FUNC_STATIC( QSQLQUERY_EXECUTEDQUERY )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->executedQuery (  ).toLatin1().data() );
  }
}


/*
void finish ()
*/
HB_FUNC_STATIC( QSQLQUERY_FINISH )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->finish (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool first ()
*/
HB_FUNC_STATIC( QSQLQUERY_FIRST )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->first (  ) );
  }
}


/*
bool isActive () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISACTIVE )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}


/*
bool isForwardOnly () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISFORWARDONLY )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isForwardOnly (  ) );
  }
}

/*
void setForwardOnly ( bool forward )
*/
HB_FUNC_STATIC( QSQLQUERY_SETFORWARDONLY )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setForwardOnly ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isNull ( int field ) const
*/
HB_FUNC_STATIC( QSQLQUERY_ISNULL1 )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull ( (int) hb_parni(1) ) );
  }
}

/*
bool isNull(const QString &name) const
*/
HB_FUNC_STATIC( QSQLQUERY_ISNULL2 )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->isNull ( par1 ) );
  }
}


//[1]bool isNull ( int field ) const
//[2]bool isNull(const QString &name) const

HB_FUNC_STATIC( QSQLQUERY_ISNULL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_ISNULL1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_ISNULL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isSelect () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISSELECT )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSelect (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISVALID )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool last ()
*/
HB_FUNC_STATIC( QSQLQUERY_LAST )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->last (  ) );
  }
}


/*
QSqlError lastError () const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTERROR )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlError * ptr = new QSqlError( obj->lastError (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSQLERROR", true );
  }
}


/*
QVariant lastInsertId () const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTINSERTID )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->lastInsertId (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QString lastQuery () const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTQUERY )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->lastQuery (  ).toLatin1().data() );
  }
}


/*
bool next ()
*/
HB_FUNC_STATIC( QSQLQUERY_NEXT )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->next (  ) );
  }
}


/*
bool nextResult ()
*/
HB_FUNC_STATIC( QSQLQUERY_NEXTRESULT )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->nextResult (  ) );
  }
}


/*
int numRowsAffected () const
*/
HB_FUNC_STATIC( QSQLQUERY_NUMROWSAFFECTED )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->numRowsAffected (  ) );
  }
}


/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
HB_FUNC_STATIC( QSQLQUERY_NUMERICALPRECISIONPOLICY )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->numericalPrecisionPolicy (  ) );
  }
}

/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC_STATIC( QSQLQUERY_SETNUMERICALPRECISIONPOLICY )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNumericalPrecisionPolicy (  (QSql::NumericalPrecisionPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool prepare ( const QString & query )
*/
HB_FUNC_STATIC( QSQLQUERY_PREPARE )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->prepare ( par1 ) );
  }
}


/*
bool previous ()
*/
HB_FUNC_STATIC( QSQLQUERY_PREVIOUS )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->previous (  ) );
  }
}


/*
QSqlRecord record () const
*/
HB_FUNC_STATIC( QSQLQUERY_RECORD )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}


/*
const QSqlResult * result () const
*/
HB_FUNC_STATIC( QSQLQUERY_RESULT )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSqlResult * ptr = obj->result (  );
    _qt5xhb_createReturnClass ( ptr, "QSQLRESULT" );
  }
}


/*
bool seek ( int index, bool relative = false )
*/
HB_FUNC_STATIC( QSQLQUERY_SEEK )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->seek ( (int) hb_parni(1), (bool) ISNIL(2)? false : hb_parl(2) ) );
  }
}


/*
int size () const
*/
HB_FUNC_STATIC( QSQLQUERY_SIZE )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
QVariant value ( int index ) const
*/
HB_FUNC_STATIC( QSQLQUERY_VALUE1 )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant value(const QString& name) const
*/
HB_FUNC_STATIC( QSQLQUERY_VALUE2 )
{
  QSqlQuery * obj = (QSqlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->value ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


//[1]QVariant value ( int index ) const
//[2]QVariant value(const QString& name) const

HB_FUNC_STATIC( QSQLQUERY_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_VALUE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_VALUE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QSQLQUERY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSQLQUERY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QSQLQUERY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QSQLQUERY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLQUERY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP

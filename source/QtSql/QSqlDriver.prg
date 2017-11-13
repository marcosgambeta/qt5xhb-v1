/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLRESULT
REQUEST QVARIANT
REQUEST QSQLERROR
REQUEST QSQLINDEX
REQUEST QSQLRECORD
#endif

CLASS QSqlDriver INHERIT QObject

   METHOD delete
   METHOD beginTransaction
   METHOD close
   METHOD commitTransaction
   METHOD createResult
   METHOD escapeIdentifier
   METHOD formatValue
   METHOD handle
   METHOD hasFeature
   METHOD isIdentifierEscaped
   METHOD isOpen
   METHOD isOpenError
   METHOD lastError
   METHOD numericalPrecisionPolicy
   METHOD open
   METHOD primaryIndex
   METHOD record
   METHOD rollbackTransaction
   METHOD setNumericalPrecisionPolicy
   METHOD sqlStatement
   METHOD stripDelimiters
   METHOD subscribeToNotification
   METHOD subscribedToNotifications
   METHOD tables
   METHOD unsubscribeFromNotification
   METHOD cancelQuery

   METHOD onNotification1
   METHOD onNotification2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlDriver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlDriver>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlDriver>
#endif

#include <QSqlError>
#include <QSqlIndex>
#include <QSqlRecord>
#include <QVariant>

HB_FUNC_STATIC( QSQLDRIVER_DELETE )
{
  QSqlDriver * obj = (QSqlDriver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
}

/*
virtual bool beginTransaction ()
*/
HB_FUNC_STATIC( QSQLDRIVER_BEGINTRANSACTION )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->beginTransaction () );
  }
}

/*
virtual void close () = 0
*/
HB_FUNC_STATIC( QSQLDRIVER_CLOSE )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->close ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool commitTransaction ()
*/
HB_FUNC_STATIC( QSQLDRIVER_COMMITTRANSACTION )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->commitTransaction () );
  }
}

/*
virtual QSqlResult * createResult () const = 0
*/
HB_FUNC_STATIC( QSQLDRIVER_CREATERESULT )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlResult * ptr = obj->createResult ();
    _qt5xhb_createReturnClass ( ptr, "QSQLRESULT" );
  }
}

/*
virtual QString escapeIdentifier ( const QString & identifier, IdentifierType type ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_ESCAPEIDENTIFIER )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      RQSTRING( obj->escapeIdentifier ( PQSTRING(1), (QSqlDriver::IdentifierType) hb_parni(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString formatValue ( const QSqlField & field, bool trimStrings = false ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_FORMATVALUE )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSQLFIELD(1) && ISOPTLOG(2) )
    {
      RQSTRING( obj->formatValue ( *PQSQLFIELD(1), OPBOOL(2,false) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant handle () const
*/
HB_FUNC_STATIC( QSQLDRIVER_HANDLE )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->handle () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
virtual bool hasFeature ( DriverFeature feature ) const = 0
*/
HB_FUNC_STATIC( QSQLDRIVER_HASFEATURE )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->hasFeature ( (QSqlDriver::DriverFeature) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isIdentifierEscaped ( const QString & identifier, IdentifierType type ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_ISIDENTIFIERESCAPED )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      RBOOL( obj->isIdentifierEscaped ( PQSTRING(1), (QSqlDriver::IdentifierType) hb_parni(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isOpen () const
*/
HB_FUNC_STATIC( QSQLDRIVER_ISOPEN )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isOpen () );
  }
}

/*
bool isOpenError () const
*/
HB_FUNC_STATIC( QSQLDRIVER_ISOPENERROR )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isOpenError () );
  }
}

/*
QSqlError lastError () const
*/
HB_FUNC_STATIC( QSQLDRIVER_LASTERROR )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlError * ptr = new QSqlError( obj->lastError () );
    _qt5xhb_createReturnClass ( ptr, "QSQLERROR", true );
  }
}

/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
HB_FUNC_STATIC( QSQLDRIVER_NUMERICALPRECISIONPOLICY )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->numericalPrecisionPolicy () );
  }
}

/*
virtual bool open ( const QString & db, const QString & user = QString(), const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & options = QString() ) = 0
*/
HB_FUNC_STATIC( QSQLDRIVER_OPEN )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTNUM(5) && ISOPTCHAR(6) )
    {
      RBOOL( obj->open ( PQSTRING(1), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), OPINT(5,-1), OPQSTRING(6,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSqlIndex primaryIndex ( const QString & tableName ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_PRIMARYINDEX )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QSqlIndex * ptr = new QSqlIndex( obj->primaryIndex ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSQLINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSqlRecord record ( const QString & tableName ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_RECORD )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QSqlRecord * ptr = new QSqlRecord( obj->record ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool rollbackTransaction ()
*/
HB_FUNC_STATIC( QSQLDRIVER_ROLLBACKTRANSACTION )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->rollbackTransaction () );
  }
}

/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC_STATIC( QSQLDRIVER_SETNUMERICALPRECISIONPOLICY )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setNumericalPrecisionPolicy ( (QSql::NumericalPrecisionPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QString sqlStatement ( StatementType type, const QString & tableName, const QSqlRecord & rec, bool preparedStatement ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_SQLSTATEMENT )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) && ISQSQLRECORD(3) && ISLOG(4) )
    {
      RQSTRING( obj->sqlStatement ( (QSqlDriver::StatementType) hb_parni(1), PQSTRING(2), *PQSQLRECORD(3), PBOOL(4) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString stripDelimiters ( const QString & identifier, IdentifierType type ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_STRIPDELIMITERS )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      RQSTRING( obj->stripDelimiters ( PQSTRING(1), (QSqlDriver::IdentifierType) hb_parni(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool subscribeToNotification ( const QString & name )
*/
HB_FUNC_STATIC( QSQLDRIVER_SUBSCRIBETONOTIFICATION )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->subscribeToNotification ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QStringList subscribedToNotifications () const
*/
HB_FUNC_STATIC( QSQLDRIVER_SUBSCRIBEDTONOTIFICATIONS )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->subscribedToNotifications () );
  }
}

/*
virtual QStringList tables ( QSql::TableType tableType ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_TABLES )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRINGLIST( obj->tables ( (QSql::TableType) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool unsubscribeFromNotification ( const QString & name )
*/
HB_FUNC_STATIC( QSQLDRIVER_UNSUBSCRIBEFROMNOTIFICATION )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->unsubscribeFromNotification ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool cancelQuery()
*/
HB_FUNC_STATIC( QSQLDRIVER_CANCELQUERY )
{
  QSqlDriver * obj = (QSqlDriver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->cancelQuery () );
  }
}

#pragma ENDDUMP

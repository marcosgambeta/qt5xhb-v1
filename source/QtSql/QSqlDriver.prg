/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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
    hb_retl( obj->beginTransaction () );
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
    hb_retl( obj->commitTransaction () );
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
      int par2 = hb_parni(2);
      hb_retc( (const char *) obj->escapeIdentifier ( PQSTRING(1),  (QSqlDriver::IdentifierType) par2 ).toLatin1().data() );
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
      QSqlField * par1 = (QSqlField *) _qt5xhb_itemGetPtr(1);
      hb_retc( (const char *) obj->formatValue ( *par1, (bool) ISNIL(2)? false : hb_parl(2) ).toLatin1().data() );
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
      int par1 = hb_parni(1);
      hb_retl( obj->hasFeature (  (QSqlDriver::DriverFeature) par1 ) );
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
      int par2 = hb_parni(2);
      hb_retl( obj->isIdentifierEscaped ( PQSTRING(1),  (QSqlDriver::IdentifierType) par2 ) );
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
    hb_retl( obj->isOpen () );
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
    hb_retl( obj->isOpenError () );
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
      QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
      QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
      QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
      QString par6 = ISNIL(6)? QString() : QLatin1String( hb_parc(6) );
      hb_retl( obj->open ( PQSTRING(1), par2, par3, par4, (int) ISNIL(5)? -1 : hb_parni(5), par6 ) );
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
    hb_retl( obj->rollbackTransaction () );
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
      int par1 = hb_parni(1);
      obj->setNumericalPrecisionPolicy (  (QSql::NumericalPrecisionPolicy) par1 );
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
      int par1 = hb_parni(1);
      QSqlRecord * par3 = (QSqlRecord *) _qt5xhb_itemGetPtr(3);
      hb_retc( (const char *) obj->sqlStatement (  (QSqlDriver::StatementType) par1, PQSTRING(2), *par3, PBOOL(4) ).toLatin1().data() );
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
      int par2 = hb_parni(2);
      hb_retc( (const char *) obj->stripDelimiters ( PQSTRING(1),  (QSqlDriver::IdentifierType) par2 ).toLatin1().data() );
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
      hb_retl( obj->subscribeToNotification ( PQSTRING(1) ) );
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
    QStringList strl = obj->subscribedToNotifications ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
      int par1 = hb_parni(1);
      QStringList strl = obj->tables (  (QSql::TableType) par1 );
      _qt5xhb_convert_qstringlist_to_array ( strl );
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
      hb_retl( obj->unsubscribeFromNotification ( PQSTRING(1) ) );
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
    hb_retl( obj->cancelQuery () );
  }
}

#pragma ENDDUMP

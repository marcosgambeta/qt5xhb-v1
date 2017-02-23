/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSQLDRIVER
REQUEST QSQLQUERY
REQUEST QSQLERROR
REQUEST QSQLINDEX
REQUEST QSQLRECORD

CLASS QSqlDatabase

   DATA pointer
   DATA class_id INIT Class_Id_QSqlDatabase
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD close
   METHOD commit
   METHOD connectOptions
   METHOD setConnectOptions
   METHOD connectionName
   METHOD databaseName
   METHOD setDatabaseName
   METHOD driver
   METHOD driverName
   METHOD exec
   METHOD hostName
   METHOD setHostName
   METHOD isOpen
   METHOD isOpenError
   METHOD isValid
   METHOD lastError
   METHOD numericalPrecisionPolicy
   METHOD setNumericalPrecisionPolicy
   METHOD open1
   METHOD open2
   METHOD open
   METHOD password
   METHOD setPassword
   METHOD port
   METHOD setPort
   METHOD primaryIndex
   METHOD record
   METHOD rollback
   METHOD tables
   METHOD transaction
   METHOD userName
   METHOD setUserName
   METHOD addDatabase1
   METHOD addDatabase2
   METHOD addDatabase
   METHOD cloneDatabase
   METHOD connectionNames
   METHOD contains
   METHOD database
   METHOD drivers
   METHOD isDriverAvailable
   METHOD registerSqlDriver
   METHOD removeDatabase
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSqlDatabase>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSqlDatabase>
#endif
#endif

#include <QSqlQuery>
#include <QSqlError>
#include <QStringList>
#include <QSqlIndex>
#include <QSqlRecord>

/*
QSqlDatabase ()
*/
HB_FUNC_STATIC( QSQLDATABASE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlDatabase * o = new QSqlDatabase (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlDatabase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSqlDatabase ( const QSqlDatabase & other )
*/
HB_FUNC_STATIC( QSQLDATABASE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlDatabase * par1 = (QSqlDatabase *) _qtxhb_itemGetPtr(1);
  QSqlDatabase * o = new QSqlDatabase ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlDatabase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QSqlDatabase ()
//[2]QSqlDatabase ( const QSqlDatabase & other )

HB_FUNC_STATIC( QSQLDATABASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLDATABASE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void close ()
*/
HB_FUNC_STATIC( QSQLDATABASE_CLOSE )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool commit ()
*/
HB_FUNC_STATIC( QSQLDATABASE_COMMIT )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->commit (  ) );
  }
}


/*
QString connectOptions () const
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTOPTIONS )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->connectOptions (  ).toLatin1().data() );
  }
}

/*
void setConnectOptions ( const QString & options = QString() )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETCONNECTOPTIONS )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
    obj->setConnectOptions ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString connectionName () const
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTIONNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->connectionName (  ).toLatin1().data() );
  }
}


/*
QString databaseName () const
*/
HB_FUNC_STATIC( QSQLDATABASE_DATABASENAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->databaseName (  ).toLatin1().data() );
  }
}

/*
void setDatabaseName ( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETDATABASENAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDatabaseName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSqlDriver * driver () const
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVER )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlDriver * ptr = obj->driver (  );
    _qt4xhb_createReturnClass ( ptr, "QSQLDRIVER" );
  }
}


/*
QString driverName () const
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVERNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->driverName (  ).toLatin1().data() );
  }
}


/*
QSqlQuery exec ( const QString & query = QString() ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_EXEC )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
    QSqlQuery * ptr = new QSqlQuery( obj->exec ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLQUERY", true );
  }
}


/*
QString hostName () const
*/
HB_FUNC_STATIC( QSQLDATABASE_HOSTNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->hostName (  ).toLatin1().data() );
  }
}

/*
void setHostName ( const QString & host )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETHOSTNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setHostName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isOpen () const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISOPEN )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isOpen (  ) );
  }
}


/*
bool isOpenError () const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISOPENERROR )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isOpenError (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISVALID )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QSqlError lastError () const
*/
HB_FUNC_STATIC( QSQLDATABASE_LASTERROR )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlError * ptr = new QSqlError( obj->lastError (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLERROR", true );
  }
}


/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
HB_FUNC_STATIC( QSQLDATABASE_NUMERICALPRECISIONPOLICY )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->numericalPrecisionPolicy (  );
    hb_retni( i );
  }
}

/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETNUMERICALPRECISIONPOLICY )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNumericalPrecisionPolicy (  (QSql::NumericalPrecisionPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool open ()
*/
HB_FUNC_STATIC( QSQLDATABASE_OPEN1 )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->open (  ) );
  }
}

/*
bool open ( const QString & user, const QString & password )
*/
HB_FUNC_STATIC( QSQLDATABASE_OPEN2 )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->open ( par1, par2 ) );
  }
}


//[1]bool open ()
//[2]bool open ( const QString & user, const QString & password )

HB_FUNC_STATIC( QSQLDATABASE_OPEN )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_OPEN1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_OPEN2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString password () const
*/
HB_FUNC_STATIC( QSQLDATABASE_PASSWORD )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->password (  ).toLatin1().data() );
  }
}

/*
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETPASSWORD )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPassword ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int port () const
*/
HB_FUNC_STATIC( QSQLDATABASE_PORT )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->port (  ) );
  }
}

/*
void setPort ( int port )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETPORT )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPort ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSqlIndex primaryIndex ( const QString & tablename ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_PRIMARYINDEX )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSqlIndex * ptr = new QSqlIndex( obj->primaryIndex ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLINDEX", true );
  }
}


/*
QSqlRecord record ( const QString & tablename ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_RECORD )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSqlRecord * ptr = new QSqlRecord( obj->record ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}


/*
bool rollback ()
*/
HB_FUNC_STATIC( QSQLDATABASE_ROLLBACK )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->rollback (  ) );
  }
}


/*
QStringList tables ( QSql::TableType type = QSql::Tables ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_TABLES )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QSql::Tables : hb_parni(1);
    QStringList strl = obj->tables (  (QSql::TableType) par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
bool transaction ()
*/
HB_FUNC_STATIC( QSQLDATABASE_TRANSACTION )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->transaction (  ) );
  }
}


/*
QString userName () const
*/
HB_FUNC_STATIC( QSQLDATABASE_USERNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->userName (  ).toLatin1().data() );
  }
}

/*
void setUserName ( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETUSERNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setUserName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
*/
HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = ISNIL(2)? QLatin1String(QSqlDatabase::defaultConnection) : QLatin1String( hb_parc(2) );
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QSQLDATABASE", true );
}

/*
static QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )
*/
HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE2 )
{
  QSqlDriver * par1 = (QSqlDriver *) _qtxhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QLatin1String(QSqlDatabase::defaultConnection) : QLatin1String( hb_parc(2) );
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QSQLDATABASE", true );
}


//[1]QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
//[2]QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )

HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_ADDDATABASE1 );
  }
  else if( ISBETWEEN(1,2) && ISQSQLDRIVER(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_ADDDATABASE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QSqlDatabase cloneDatabase ( const QSqlDatabase & other, const QString & connectionName )
*/
HB_FUNC_STATIC( QSQLDATABASE_CLONEDATABASE )
{
  QSqlDatabase * par1 = (QSqlDatabase *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::cloneDatabase ( *par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QSQLDATABASE", true );
}


/*
static QStringList connectionNames ()
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTIONNAMES )
{
  QStringList strl = QSqlDatabase::connectionNames (  );
  _qtxhb_convert_qstringlist_to_array ( strl );
}


/*
static bool contains ( const QString & connectionName = QLatin1String( defaultConnection ) )
*/
HB_FUNC_STATIC( QSQLDATABASE_CONTAINS )
{
  QString par1 = ISNIL(1)? QLatin1String(QSqlDatabase::defaultConnection) : QLatin1String( hb_parc(1) );
  hb_retl( QSqlDatabase::contains ( par1 ) );
}


/*
static QSqlDatabase database ( const QString & connectionName = QLatin1String( defaultConnection ), bool open = true )
*/
HB_FUNC_STATIC( QSQLDATABASE_DATABASE )
{
  QString par1 = ISNIL(1)? QLatin1String(QSqlDatabase::defaultConnection) : QLatin1String( hb_parc(1) );
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::database ( par1, (bool) ISNIL(2)? true : hb_parl(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QSQLDATABASE", true );
}


/*
static QStringList drivers ()
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVERS )
{
  QStringList strl = QSqlDatabase::drivers (  );
  _qtxhb_convert_qstringlist_to_array ( strl );
}


/*
static bool isDriverAvailable ( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_ISDRIVERAVAILABLE )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retl( QSqlDatabase::isDriverAvailable ( par1 ) );
}


/*
static void registerSqlDriver ( const QString & name, QSqlDriverCreatorBase * creator )
*/
HB_FUNC_STATIC( QSQLDATABASE_REGISTERSQLDRIVER )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QSqlDriverCreatorBase * par2 = (QSqlDriverCreatorBase *) _qtxhb_itemGetPtr(2);
  QSqlDatabase::registerSqlDriver ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void removeDatabase ( const QString & connectionName )
*/
HB_FUNC_STATIC( QSQLDATABASE_REMOVEDATABASE )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QSqlDatabase::removeDatabase ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QSQLDATABASE_NEWFROM )
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

HB_FUNC_STATIC( QSQLDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QSQLDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QSQLDATABASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLDATABASE_SETSELFDESTRUCTION )
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
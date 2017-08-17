$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLDRIVER
REQUEST QSQLQUERY
REQUEST QSQLERROR
REQUEST QSQLINDEX
REQUEST QSQLRECORD
#endif

CLASS QSqlDatabase

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

#include <QSqlQuery>
#include <QSqlError>
#include <QStringList>
#include <QSqlIndex>
#include <QSqlRecord>
#include <QSqlDriver>

/*
QSqlDatabase ()
*/
$internalConstructor=|new1|

/*
QSqlDatabase ( const QSqlDatabase & other )
*/
$internalConstructor=|new2|const QSqlDatabase &

//[1]QSqlDatabase ()
//[2]QSqlDatabase ( const QSqlDatabase & other )

HB_FUNC_STATIC( QSQLDATABASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSqlDatabase_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    QSqlDatabase_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void close ()
*/
$method=|void|close|

/*
bool commit ()
*/
$method=|bool|commit|

/*
QString connectOptions () const
*/
$method=|QString|connectOptions|

/*
void setConnectOptions ( const QString & options = QString() )
*/
$method=|void|setConnectOptions|const QString &=QString()

/*
QString connectionName () const
*/
$method=|QString|connectionName|

/*
QString databaseName () const
*/
$method=|QString|databaseName|

/*
void setDatabaseName ( const QString & name )
*/
$method=|void|setDatabaseName|const QString &

/*
QSqlDriver * driver () const
*/
$method=|QSqlDriver *|driver|

/*
QString driverName () const
*/
$method=|QString|driverName|

/*
QSqlQuery exec ( const QString & query = QString() ) const
*/
$method=|QSqlQuery|exec|const QString &=QString()

/*
QString hostName () const
*/
$method=|QString|hostName|

/*
void setHostName ( const QString & host )
*/
$method=|void|setHostName|const QString &

/*
bool isOpen () const
*/
$method=|bool|isOpen|

/*
bool isOpenError () const
*/
$method=|bool|isOpenError|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QSqlError lastError () const
*/
$method=|QSqlError|lastError|

/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
$method=|QSql::NumericalPrecisionPolicy|numericalPrecisionPolicy|

/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

/*
bool open ()
*/
$internalMethod=|bool|open,open1|

/*
bool open ( const QString & user, const QString & password )
*/
$internalMethod=|bool|open,open2|const QString &,const QString &

//[1]bool open ()
//[2]bool open ( const QString & user, const QString & password )

HB_FUNC_STATIC( QSQLDATABASE_OPEN )
{
  if( ISNUMPAR(0) )
  {
    QSqlDatabase_open1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QSqlDatabase_open2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString password () const
*/
$method=|QString|password|

/*
void setPassword ( const QString & password )
*/
$method=|void|setPassword|const QString &

/*
int port () const
*/
$method=|int|port|

/*
void setPort ( int port )
*/
$method=|void|setPort|int

/*
QSqlIndex primaryIndex ( const QString & tablename ) const
*/
$method=|QSqlIndex|primaryIndex|const QString &

/*
QSqlRecord record ( const QString & tablename ) const
*/
$method=|QSqlRecord|record|const QString &

/*
bool rollback ()
*/
$method=|bool|rollback|

/*
QStringList tables ( QSql::TableType type = QSql::Tables ) const
*/
$method=|QStringList|tables|QSql::TableType=QSql::Tables

/*
bool transaction ()
*/
$method=|bool|transaction|

/*
QString userName () const
*/
$method=|QString|userName|

/*
void setUserName ( const QString & name )
*/
$method=|void|setUserName|const QString &

/*
static QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
*/
void QSqlDatabase_addDatabase1 ()
{
  QString par2 = ISNIL(2)? QLatin1String(QSqlDatabase::defaultConnection) : QLatin1String( hb_parc(2) );
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( PQSTRING(1), par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QSQLDATABASE", true );
}

/*
static QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )
*/
void QSqlDatabase_addDatabase2 ()
{
  QSqlDriver * par1 = (QSqlDriver *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QLatin1String(QSqlDatabase::defaultConnection) : QLatin1String( hb_parc(2) );
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( par1, par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QSQLDATABASE", true );
}

//[1]QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
//[2]QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )

HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
  {
    QSqlDatabase_addDatabase1();
  }
  else if( ISBETWEEN(1,2) && ISQSQLDRIVER(1) && ISOPTCHAR(2) )
  {
    QSqlDatabase_addDatabase2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QSqlDatabase cloneDatabase ( const QSqlDatabase & other, const QString & connectionName )
*/
$staticMethod=|QSqlDatabase|cloneDatabase|const QSqlDatabase &,const QString &

/*
static QStringList connectionNames ()
*/
$staticMethod=|QStringList|connectionNames|

/*
static bool contains ( const QString & connectionName = QLatin1String( defaultConnection ) )
*/
HB_FUNC_STATIC( QSQLDATABASE_CONTAINS )
{
  if( ISOPTCHAR(1) )
  {
    QString par1 = ISNIL(1)? QLatin1String(QSqlDatabase::defaultConnection) : QLatin1String( hb_parc(1) );
    RBOOL( QSqlDatabase::contains ( par1 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QSqlDatabase database ( const QString & connectionName = QLatin1String( defaultConnection ), bool open = true )
*/
HB_FUNC_STATIC( QSQLDATABASE_DATABASE )
{
  if( ISOPTCHAR(1) && ISOPTLOG(2) )
  {
    QString par1 = ISNIL(1)? QLatin1String(QSqlDatabase::defaultConnection) : QLatin1String( hb_parc(1) );
    QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::database ( par1, OPBOOL(2,true) ) );
    _qt5xhb_createReturnClass ( ptr, "QSQLDATABASE", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList drivers ()
*/
$staticMethod=|QStringList|drivers|

/*
static bool isDriverAvailable ( const QString & name )
*/
$staticMethod=|bool|isDriverAvailable|const QString &

/*
static void registerSqlDriver ( const QString & name, QSqlDriverCreatorBase * creator )
*/
$staticMethod=|void|registerSqlDriver|const QString &,QSqlDriverCreatorBase *

/*
static void removeDatabase ( const QString & connectionName )
*/
$staticMethod=|void|removeDatabase|const QString &

$extraMethods

#pragma ENDDUMP

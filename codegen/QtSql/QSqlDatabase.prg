%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QSqlDriver>
#include <QSqlError>
#include <QSqlIndex>
#include <QSqlQuery>
#include <QSqlRecord>
#include <QStringList>

$prototype=QSqlDatabase ()
$internalConstructor=|new1|

$prototype=QSqlDatabase ( const QSqlDatabase & other )
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

$prototype=void close ()
$method=|void|close|

$prototype=bool commit ()
$method=|bool|commit|

$prototype=QString connectOptions () const
$method=|QString|connectOptions|

$prototype=void setConnectOptions ( const QString & options = QString() )
$method=|void|setConnectOptions|const QString &=QString()

$prototype=QString connectionName () const
$method=|QString|connectionName|

$prototype=QString databaseName () const
$method=|QString|databaseName|

$prototype=void setDatabaseName ( const QString & name )
$method=|void|setDatabaseName|const QString &

$prototype=QSqlDriver * driver () const
$method=|QSqlDriver *|driver|

$prototype=QString driverName () const
$method=|QString|driverName|

$prototype=QSqlQuery exec ( const QString & query = QString() ) const
$method=|QSqlQuery|exec|const QString &=QString()

$prototype=QString hostName () const
$method=|QString|hostName|

$prototype=void setHostName ( const QString & host )
$method=|void|setHostName|const QString &

$prototype=bool isOpen () const
$method=|bool|isOpen|

$prototype=bool isOpenError () const
$method=|bool|isOpenError|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QSqlError lastError () const
$method=|QSqlError|lastError|

$prototype=QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
$method=|QSql::NumericalPrecisionPolicy|numericalPrecisionPolicy|

$prototype=void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

$prototype=bool open ()
$internalMethod=|bool|open,open1|

$prototype=bool open ( const QString & user, const QString & password )
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
$addMethod=open

$prototype=QString password () const
$method=|QString|password|

$prototype=void setPassword ( const QString & password )
$method=|void|setPassword|const QString &

$prototype=int port () const
$method=|int|port|

$prototype=void setPort ( int port )
$method=|void|setPort|int

$prototype=QSqlIndex primaryIndex ( const QString & tablename ) const
$method=|QSqlIndex|primaryIndex|const QString &

$prototype=QSqlRecord record ( const QString & tablename ) const
$method=|QSqlRecord|record|const QString &

$prototype=bool rollback ()
$method=|bool|rollback|

$prototype=QStringList tables ( QSql::TableType type = QSql::Tables ) const
$method=|QStringList|tables|QSql::TableType=QSql::Tables

$prototype=bool transaction ()
$method=|bool|transaction|

$prototype=QString userName () const
$method=|QString|userName|

$prototype=void setUserName ( const QString & name )
$method=|void|setUserName|const QString &

$prototype=static QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
void QSqlDatabase_addDatabase1 ()
{
  QString par2 = ISNIL(2)? QLatin1String(QSqlDatabase::defaultConnection) : QLatin1String( hb_parc(2) );
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( PQSTRING(1), par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QSQLDATABASE", true );
}

$prototype=static QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )
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
$addMethod=addDatabase

$prototype=static QSqlDatabase cloneDatabase ( const QSqlDatabase & other, const QString & connectionName )
$staticMethod=|QSqlDatabase|cloneDatabase|const QSqlDatabase &,const QString &

$prototype=static QStringList connectionNames ()
$staticMethod=|QStringList|connectionNames|

$prototype=static bool contains ( const QString & connectionName = QLatin1String( defaultConnection ) )
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
$addMethod=contains

$prototype=static QSqlDatabase database ( const QString & connectionName = QLatin1String( defaultConnection ), bool open = true )
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
$addMethod=database

$prototype=static QStringList drivers ()
$staticMethod=|QStringList|drivers|

$prototype=static bool isDriverAvailable ( const QString & name )
$staticMethod=|bool|isDriverAvailable|const QString &

$prototype=static void registerSqlDriver ( const QString & name, QSqlDriverCreatorBase * creator )
$staticMethod=|void|registerSqlDriver|const QString &,QSqlDriverCreatorBase *

$prototype=static void removeDatabase ( const QString & connectionName )
$staticMethod=|void|removeDatabase|const QString &

$extraMethods

#pragma ENDDUMP

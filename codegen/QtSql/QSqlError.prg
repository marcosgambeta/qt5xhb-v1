$header

#include "hbclass.ch"

CLASS QSqlError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD databaseText
   METHOD setDatabaseText
   METHOD driverText
   METHOD setDriverText
   METHOD isValid
   METHOD number
   METHOD setNumber
   METHOD text
   METHOD type
   METHOD setType
   METHOD nativeErrorCode

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

/*
QSqlError ( const QString & driverText, const QString & databaseText, ErrorType type, int number )
*/
$internalConstructor=|new1|const QString &,const QString &,QSqlError::ErrorType,int

/*
QSqlError(const QString &driverText = QString(), const QString &databaseText = QString(), ErrorType type = NoError, const QString &errorCode = QString())
*/
$internalConstructor=|new2|const QString &=QString(),const QString &=QString(),QSqlError::ErrorType=QSqlError::NoError,const QString &=QString()

/*
QSqlError ( const QSqlError & other )
*/
$internalConstructor=|new3|const QSqlError &

//[1]QSqlError(const QString & driverText, const QString & databaseText, ErrorType type, int number )
//[2]QSqlError(const QString &driverText = QString(), const QString &databaseText = QString(), ErrorType type = NoError, const QString &errorCode = QString())
//[3]QSqlError(const QSqlError & other )

HB_FUNC_STATIC( QSQLERROR_NEW )
{
  if( ISNUMPAR(4) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) && ISNUM(4) )
  {
    QSqlError_new1();
  }
  else if( ISBETWEEN(0,4) && ISOPTCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) && ISOPTCHAR(4) )
  {
    QSqlError_new2();
  }
  else if( ISNUMPAR(1) && ISQSQLERROR(1) )
  {
    QSqlError_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString databaseText () const
*/
$method=|QString|databaseText|

/*
QT_DEPRECATED void setDatabaseText ( const QString & databaseText )
*/
$method=|void|setDatabaseText|const QString &

/*
QString driverText () const
*/
$method=|QString|driverText|

/*
QT_DEPRECATED void setDriverText ( const QString & driverText )
*/
$method=|void|setDriverText|const QString &

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QT_DEPRECATED  int number () const
*/
$method=|int|number|

/*
QT_DEPRECATED void setNumber ( int number )
*/
$method=|void|setNumber|int

/*
QString text () const
*/
$method=|QString|text|

/*
ErrorType type () const
*/
$method=|QSqlError::ErrorType|type|

/*
QT_DEPRECATED void setType ( ErrorType type )
*/
$method=|void|setType|QSqlError::ErrorType

/*
QString nativeErrorCode() const
*/
$method=|QString|nativeErrorCode|

$extraMethods

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QSqlError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD databaseText
   METHOD driverText
   METHOD isValid
   METHOD nativeErrorCode
   METHOD number
   METHOD setDatabaseText
   METHOD setDriverText
   METHOD setNumber
   METHOD setType
   METHOD text
   METHOD type

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

$prototype=QSqlError ( const QString & driverText, const QString & databaseText, ErrorType type, int number )
$internalConstructor=|new1|const QString &,const QString &,QSqlError::ErrorType,int

$prototype=QSqlError(const QString &driverText = QString(), const QString &databaseText = QString(), ErrorType type = NoError, const QString &errorCode = QString())
$internalConstructor=|new2|const QString &=QString(),const QString &=QString(),QSqlError::ErrorType=QSqlError::NoError,const QString &=QString()

$prototype=QSqlError ( const QSqlError & other )
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

$prototype=QString databaseText () const
$method=|QString|databaseText|

$prototype=QT_DEPRECATED void setDatabaseText ( const QString & databaseText )
$method=|void|setDatabaseText|const QString &

$prototype=QString driverText () const
$method=|QString|driverText|

$prototype=QT_DEPRECATED void setDriverText ( const QString & driverText )
$method=|void|setDriverText|const QString &

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QT_DEPRECATED  int number () const
$method=|int|number|

$prototype=QT_DEPRECATED void setNumber ( int number )
$method=|void|setNumber|int

$prototype=QString text () const
$method=|QString|text|

$prototype=ErrorType type () const
$method=|QSqlError::ErrorType|type|

$prototype=QT_DEPRECATED void setType ( ErrorType type )
$method=|void|setType|QSqlError::ErrorType

$prototype=QString nativeErrorCode() const
$method=|QString|nativeErrorCode|

$extraMethods

#pragma ENDDUMP

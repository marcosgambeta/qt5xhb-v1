$header

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

$destructor

#pragma BEGINDUMP

$includes

#include <QSqlError>
#include <QSqlIndex>
#include <QSqlRecord>
#include <QVariant>

$deleteMethod

/*
virtual bool beginTransaction ()
*/
$method=|bool|beginTransaction|

/*
virtual void close () = 0
*/
$method=|void|close|

/*
virtual bool commitTransaction ()
*/
$method=|bool|commitTransaction|

/*
virtual QSqlResult * createResult () const = 0
*/
$method=|QSqlResult *|createResult|

/*
virtual QString escapeIdentifier ( const QString & identifier, IdentifierType type ) const
*/
$method=|QString|escapeIdentifier|const QString &,QSqlDriver::IdentifierType

/*
virtual QString formatValue ( const QSqlField & field, bool trimStrings = false ) const
*/
$method=|QString|formatValue|const QSqlField &,bool=false

/*
virtual QVariant handle () const
*/
$method=|QVariant|handle|

/*
virtual bool hasFeature ( DriverFeature feature ) const = 0
*/
$method=|bool|hasFeature|QSqlDriver::DriverFeature

/*
virtual bool isIdentifierEscaped ( const QString & identifier, IdentifierType type ) const
*/
$method=|bool|isIdentifierEscaped|const QString &,QSqlDriver::IdentifierType

/*
virtual bool isOpen () const
*/
$method=|bool|isOpen|

/*
bool isOpenError () const
*/
$method=|bool|isOpenError|

/*
QSqlError lastError () const
*/
$method=|QSqlError|lastError|

/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
$method=|QSql::NumericalPrecisionPolicy|numericalPrecisionPolicy|

/*
virtual bool open ( const QString & db, const QString & user = QString(), const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & options = QString() ) = 0
*/
$method=|bool|open|const QString &,const QString &=QString(),const QString &=QString(),const QString &=QString(),int=-1,const QString &=QString()

/*
virtual QSqlIndex primaryIndex ( const QString & tableName ) const
*/
$method=|QSqlIndex|primaryIndex|const QString &

/*
virtual QSqlRecord record ( const QString & tableName ) const
*/
$method=|QSqlRecord|record|const QString &

/*
virtual bool rollbackTransaction ()
*/
$method=|bool|rollbackTransaction|

/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

/*
virtual QString sqlStatement ( StatementType type, const QString & tableName, const QSqlRecord & rec, bool preparedStatement ) const
*/
$method=|QString|sqlStatement|QSqlDriver::StatementType,const QString &,const QSqlRecord &,bool

/*
virtual QString stripDelimiters ( const QString & identifier, IdentifierType type ) const
*/
$method=|QString|stripDelimiters|const QString &,QSqlDriver::IdentifierType

/*
virtual bool subscribeToNotification ( const QString & name )
*/
$method=|bool|subscribeToNotification|const QString &

/*
virtual QStringList subscribedToNotifications () const
*/
$method=|QStringList|subscribedToNotifications|

/*
virtual QStringList tables ( QSql::TableType tableType ) const
*/
$method=|QStringList|tables|QSql::TableType

/*
virtual bool unsubscribeFromNotification ( const QString & name )
*/
$method=|bool|unsubscribeFromNotification|const QString &

/*
virtual bool cancelQuery()
*/
$method=|bool|cancelQuery|

#pragma ENDDUMP

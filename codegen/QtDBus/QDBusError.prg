$header

#include "hbclass.ch"

CLASS QDBusError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD name
   METHOD message
   METHOD isValid
   METHOD errorString

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
QDBusError()
*/
$internalConstructor=|new1|
/*
QDBusError(const DBusError *error)
*/
$internalConstructor=|new2|const DBusError *

/*
QDBusError(const QDBusMessage& msg)
*/
$internalConstructor=|new3|const QDBusMessage &

/*
QDBusError(ErrorType error, const QString &message)
*/
$internalConstructor=|new4|QDBusError::ErrorType,const QString &

/*
QDBusError(const QDBusError &other)
*/
$internalConstructor=|new5|const QDBusError &

//[1]QDBusError()
//[2]QDBusError(const DBusError *error)
//[3]QDBusError(const QDBusMessage& msg)
//[4]QDBusError(ErrorType error, const QString &message)
//[5]QDBusError(const QDBusError &other)

HB_FUNC_STATIC( QDBUSERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDBusError_new1();
  }
  //else if( ISNUMPAR(1) && ISDBUSERROR(1) )
  //{
  //  QDBusError_new2();
  //}
  else if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
  {
    QDBusError_new3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QDBusError_new4();
  }
  else if( ISNUMPAR(1) && ISQDBUSERROR(1) )
  {
    QDBusError_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
ErrorType type() const
*/
$method=|QDBusError::ErrorType|type|

/*
QString name() const
*/
$method=|QString|name|

/*
QString message() const
*/
$method=|QString|message|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
static QString errorString(ErrorType error)
*/
$staticMethod=|QString|errorString|QDBusError::ErrorType

$extraMethods

#pragma ENDDUMP

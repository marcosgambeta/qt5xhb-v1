$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOSHAPE
REQUEST QDATETIME
#endif

CLASS QGeoAreaMonitorInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD setName
   METHOD identifier
   METHOD isValid
   METHOD area
   METHOD setArea
   METHOD expiration
   METHOD setExpiration
   METHOD isPersistent
   METHOD setPersistent

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QDateTime>

/*
QGeoAreaMonitorInfo(const QString &name = QString())
*/
$constructor=5,2,0|new1|const QString &=QString()

/*
QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)
*/
$constructor=5,2,0|new2|const QGeoAreaMonitorInfo &

//[1]QGeoAreaMonitorInfo(const QString &name = QString())
//[2]QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)

HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
  {
    HB_FUNC_EXEC( QGEOAREAMONITORINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOAREAMONITORINFO(1) )
  {
    HB_FUNC_EXEC( QGEOAREAMONITORINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QString name() const
*/
$method=5,2,0|QString|name|

/*
void setName(const QString &name)
*/
$method=5,2,0|void|setName|const QString &

/*
QString identifier() const
*/
$method=5,2,0|QString|identifier|

/*
bool isValid() const
*/
$method=5,2,0|bool|isValid|

/*
QGeoShape area() const
*/
$method=5,2,0|QGeoShape|area|

/*
void setArea(const QGeoShape &newShape)
*/
$method=5,2,0|void|setArea|const QGeoShape &

/*
QDateTime expiration() const
*/
$method=5,2,0|QDateTime|expiration|

/*
void setExpiration(const QDateTime &expiry)
*/
$method=5,2,0|void|setExpiration|const QDateTime &

/*
bool isPersistent() const
*/
$method=5,2,0|bool|isPersistent|

/*
void setPersistent(bool isPersistent)
*/
$method=5,2,0|void|setPersistent|bool

$extraMethods

#pragma ENDDUMP

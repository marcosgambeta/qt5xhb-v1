%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOSHAPE
REQUEST QDATETIME
#endif

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QDateTime>

$prototype=QGeoAreaMonitorInfo(const QString &name = QString())
$constructor=5,2,0|new1|const QString &=QString()

$prototype=QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)
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

$prototype=QString name() const
$method=5,2,0|QString|name|

$prototype=void setName(const QString &name)
$method=5,2,0|void|setName|const QString &

$prototype=QString identifier() const
$method=5,2,0|QString|identifier|

$prototype=bool isValid() const
$method=5,2,0|bool|isValid|

$prototype=QGeoShape area() const
$method=5,2,0|QGeoShape|area|

$prototype=void setArea(const QGeoShape &newShape)
$method=5,2,0|void|setArea|const QGeoShape &

$prototype=QDateTime expiration() const
$method=5,2,0|QDateTime|expiration|

$prototype=void setExpiration(const QDateTime &expiry)
$method=5,2,0|void|setExpiration|const QDateTime &

$prototype=bool isPersistent() const
$method=5,2,0|bool|isPersistent|

$prototype=void setPersistent(bool isPersistent)
$method=5,2,0|void|setPersistent|bool

$extraMethods

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoCodingManagerEngine INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD geocode
   METHOD reverseGeocode
   METHOD setLocale
   METHOD locale

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QLocale>

$deleteMethod=5,4,0

$prototype=QString managerName() const
$method=5,4,0|QString|managerName|

$prototype=int managerVersion() const
$method=5,4,0|int|managerVersion|

$prototype=virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
$internalVirtualMethod=5,4,0|QGeoCodeReply *|geocode,geocode1|const QGeoAddress &,const QGeoShape &

$prototype=virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)
$internalVirtualMethod=5,4,0|QGeoCodeReply *|geocode,geocode2|const QString &,int,int,const QGeoShape &

//[1]virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
//[2]virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)

HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_GEOCODE )
{
  if( ISNUMPAR(2) && ISQGEOADDRESS(1) && ISQGEOSHAPE(2) )
  {
    QGeoCodingManagerEngine_geocode1();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISQGEOSHAPE(4) )
  {
    QGeoCodingManagerEngine_geocode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual QGeoCodeReply *reverseGeocode(const QGeoCoordinate &coordinate, const QGeoShape &bounds)
$virtualMethod=5,4,0|QGeoCodeReply *|reverseGeocode|const QGeoCoordinate &,const QGeoShape &

$prototype=void setLocale(const QLocale &locale)
$method=5,4,0|void|setLocale|const QLocale &

$prototype=QLocale locale() const
$method=5,4,0|QLocale|locale|

$beginSignals
$signalMethod=5,4,0|finished(QGeoCodeReply*)
$signalMethod=5,4,0|error(QGeoCodeReply*,QGeoCodeReply::Error,QString)
$endSignals

#pragma ENDDUMP

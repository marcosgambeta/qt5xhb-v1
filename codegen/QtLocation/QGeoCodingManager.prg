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

CLASS QGeoCodingManager INHERIT QObject

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

$prototype=QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds = QGeoShape())
$internalMethod=5,4,0|QGeoCodeReply *|geocode,geocode1|const QGeoAddress &,const QGeoShape &=QGeoShape()

$prototype=QGeoCodeReply *geocode(const QString &searchString, int limit = -1, int offset = 0, const QGeoShape &bounds = QGeoShape())
$internalMethod=5,4,0|QGeoCodeReply *|geocode,geocode2|const QString &,int=-1,int=0,const QGeoShape &=QGeoShape()

//[1]QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds = QGeoShape())
//[2]QGeoCodeReply *geocode(const QString &searchString, int limit = -1, int offset = 0, const QGeoShape &bounds = QGeoShape())

HB_FUNC_STATIC( QGEOCODINGMANAGER_GEOCODE )
{
  if( ISBETWEEN(1,2) && ISQGEOADDRESS(1) && (ISQGEOSHAPE(2)||ISNIL(2)) )
  {
    QGeoCodingManager_geocode1();
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISQGEOSHAPE(4)||ISNIL(4)) )
  {
    QGeoCodingManager_geocode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QGeoCodeReply *reverseGeocode(const QGeoCoordinate &coordinate, const QGeoShape &bounds = QGeoShape())
$method=5,4,0|QGeoCodeReply *|reverseGeocode|const QGeoCoordinate &,const QGeoShape &=QGeoShape()

$prototype=void setLocale(const QLocale &locale)
$method=5,4,0|void|setLocale|const QLocale &

$prototype=QLocale locale() const
$method=5,4,0|QLocale|locale|

$connectSignalFunction

$signalMethod=5,4,0|finished(QGeoCodeReply*)
$signalMethod=5,4,0|error(QGeoCodeReply*,QGeoCodeReply::Error,QString)

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoCodingManagerEngine INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
QString managerName() const
*/
$method=5,4,0|QString|managerName|

/*
int managerVersion() const
*/
$method=5,4,0|int|managerVersion|

/*
virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
*/
$internalMethod=5,4,0|QGeoCodeReply *|geocode,geocode1|const QGeoAddress &,const QGeoShape &

/*
virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)
*/
$internalMethod=5,4,0|QGeoCodeReply *|geocode,geocode2|const QString &,int,int,const QGeoShape &

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

/*
virtual QGeoCodeReply *reverseGeocode(const QGeoCoordinate &coordinate, const QGeoShape &bounds)
*/
$method=5,4,0|QGeoCodeReply *|reverseGeocode|const QGeoCoordinate &,const QGeoShape &

/*
void setLocale(const QLocale &locale)
*/
$method=5,4,0|void|setLocale|const QLocale &

/*
QLocale locale() const
*/
$method=5,4,0|QLocale|locale|

#pragma ENDDUMP

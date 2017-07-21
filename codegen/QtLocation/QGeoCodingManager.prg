$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoCodingManager INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD geocode1
   METHOD geocode2
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
QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds = QGeoShape())
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_GEOCODE1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape par2 = ISNIL(2)? QGeoShape() : *(QGeoShape *) _qt5xhb_itemGetPtr(2);
    QGeoCodeReply * ptr = obj->geocode ( *PQGEOADDRESS(1), par2 );
    _qt5xhb_createReturnClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}

/*
QGeoCodeReply *geocode(const QString &searchString, int limit = -1, int offset = 0, const QGeoShape &bounds = QGeoShape())
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_GEOCODE2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape par4 = ISNIL(4)? QGeoShape() : *(QGeoShape *) _qt5xhb_itemGetPtr(4);
    QGeoCodeReply * ptr = obj->geocode ( PQSTRING(1), OPINT(2,-1), OPINT(3,0), par4 );
    _qt5xhb_createReturnClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}

//[1]QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds = QGeoShape())
//[2]QGeoCodeReply *geocode(const QString &searchString, int limit = -1, int offset = 0, const QGeoShape &bounds = QGeoShape())

HB_FUNC_STATIC( QGEOCODINGMANAGER_GEOCODE )
{
  if( ISBETWEEN(1,2) && ISQGEOADDRESS(1) && (ISQGEOSHAPE(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGEOCODINGMANAGER_GEOCODE1 );
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISQGEOSHAPE(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGEOCODINGMANAGER_GEOCODE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGeoCodeReply *reverseGeocode(const QGeoCoordinate &coordinate, const QGeoShape &bounds = QGeoShape())
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_REVERSEGEOCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape par2 = ISNIL(2)? QGeoShape() : *(QGeoShape *) _qt5xhb_itemGetPtr(2);
    QGeoCodeReply * ptr = obj->reverseGeocode ( *PQGEOCOORDINATE(1), par2 );
    _qt5xhb_createReturnClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}

/*
void setLocale(const QLocale &locale)
*/
$method=5,4,0|void|setLocale|const QLocale &

/*
QLocale locale() const
*/
$method=5,4,0|QLocale|locale|

#pragma ENDDUMP

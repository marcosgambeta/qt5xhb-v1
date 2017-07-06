$header

#include "hbclass.ch"

CLASS QGeoCoordinate

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD type
   METHOD setLatitude
   METHOD latitude
   METHOD setLongitude
   METHOD longitude
   METHOD setAltitude
   METHOD altitude
   METHOD distanceTo
   METHOD azimuthTo
   METHOD atDistanceAndAzimuth
   METHOD toString

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

/*
QGeoCoordinate()
*/
HB_FUNC_STATIC( QGEOCOORDINATE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * o = new QGeoCoordinate ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoCoordinate(double latitude, double longitude)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * o = new QGeoCoordinate ( PDOUBLE(1), PDOUBLE(2) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoCoordinate(double latitude, double longitude, double altitude)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * o = new QGeoCoordinate ( PDOUBLE(1), PDOUBLE(2), PDOUBLE(3) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoCoordinate(const QGeoCoordinate &other)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * o = new QGeoCoordinate ( *PQGEOCOORDINATE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoCoordinate()
//[2]QGeoCoordinate(double latitude, double longitude)
//[3]QGeoCoordinate(double latitude, double longitude, double altitude)
//[4]QGeoCoordinate(const QGeoCoordinate &other)

HB_FUNC_STATIC( QGEOCOORDINATE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
bool isValid() const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
#endif
}


/*
CoordinateType type() const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}


/*
void setLatitude(double latitude)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_SETLATITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLatitude ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
double latitude() const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_LATITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RDOUBLE( obj->latitude () );
  }
#endif
}


/*
void setLongitude(double longitude)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_SETLONGITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLongitude ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
double longitude() const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_LONGITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RDOUBLE( obj->longitude () );
  }
#endif
}


/*
void setAltitude(double altitude)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_SETALTITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAltitude ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
double altitude() const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_ALTITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RDOUBLE( obj->altitude () );
  }
#endif
}


/*
qreal distanceTo(const QGeoCoordinate &other) const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_DISTANCETO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->distanceTo ( *PQGEOCOORDINATE(1) ) );
  }
#endif
}


/*
qreal azimuthTo(const QGeoCoordinate &other) const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_AZIMUTHTO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->azimuthTo ( *PQGEOCOORDINATE(1) ) );
  }
#endif
}


/*
QGeoCoordinate atDistanceAndAzimuth(qreal distance, qreal azimuth, qreal distanceUp = 0.0) const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_ATDISTANCEANDAZIMUTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * ptr = new QGeoCoordinate( obj->atDistanceAndAzimuth ( PQREAL(1), PQREAL(2), (qreal) ISNIL(3)? 0.0 : hb_parnd(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
  }
#endif
}


/*
QString toString(CoordinateFormat format = DegreesMinutesSecondsWithHemisphere) const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_TOSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QGeoCoordinate::DegreesMinutesSecondsWithHemisphere : hb_parni(1);
    RQSTRING( obj->toString ( (QGeoCoordinate::CoordinateFormat) par1 ) );
  }
#endif
}



$extraMethods

#pragma ENDDUMP

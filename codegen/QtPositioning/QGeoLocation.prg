$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOADDRESS
REQUEST QGEOCOORDINATE
REQUEST QGEORECTANGLE
#endif

CLASS QGeoLocation

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD address
   METHOD setAddress
   METHOD coordinate
   METHOD setCoordinate
   METHOD boundingBox
   METHOD setBoundingBox
   METHOD isEmpty

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

#include <QGeoAddress>
#include <QGeoCoordinate>
#include <QGeoRectangle>

/*
QGeoLocation()
*/
HB_FUNC_STATIC( QGEOLOCATION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * o = new QGeoLocation ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoLocation(const QGeoLocation &other)
*/
HB_FUNC_STATIC( QGEOLOCATION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * o = new QGeoLocation ( *PQGEOLOCATION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoLocation()
//[2]QGeoLocation(const QGeoLocation &other)

HB_FUNC_STATIC( QGEOLOCATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOLOCATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOLOCATION(1) )
  {
    HB_FUNC_EXEC( QGEOLOCATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QGeoAddress address() const
*/
HB_FUNC_STATIC( QGEOLOCATION_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoAddress * ptr = new QGeoAddress( obj->address () );
    _qt5xhb_createReturnClass ( ptr, "QGEOADDRESS", true );
  }
#endif
}


/*
void setAddress(const QGeoAddress &address)
*/
HB_FUNC_STATIC( QGEOLOCATION_SETADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAddress ( *PQGEOADDRESS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QGeoCoordinate coordinate() const
*/
HB_FUNC_STATIC( QGEOLOCATION_COORDINATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * ptr = new QGeoCoordinate( obj->coordinate () );
    _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
  }
#endif
}


/*
void setCoordinate(const QGeoCoordinate &position)
*/
HB_FUNC_STATIC( QGEOLOCATION_SETCOORDINATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCoordinate ( *PQGEOCOORDINATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QGeoRectangle boundingBox() const
*/
HB_FUNC_STATIC( QGEOLOCATION_BOUNDINGBOX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRectangle * ptr = new QGeoRectangle( obj->boundingBox () );
    _qt5xhb_createReturnClass ( ptr, "QGEORECTANGLE", true );
  }
#endif
}


/*
void setBoundingBox(const QGeoRectangle &box)
*/
HB_FUNC_STATIC( QGEOLOCATION_SETBOUNDINGBOX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBoundingBox ( *PQGEORECTANGLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QGEOLOCATION_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
#endif
}



$extraMethods

#pragma ENDDUMP

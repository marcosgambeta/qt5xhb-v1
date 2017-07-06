$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoRoutingManager INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD calculateRoute
   METHOD updateRoute
   METHOD supportedTravelModes
   METHOD supportedFeatureTypes
   METHOD supportedFeatureWeights
   METHOD supportedRouteOptimizations
   METHOD supportedSegmentDetails
   METHOD supportedManeuverDetails
   METHOD setLocale
   METHOD locale
   METHOD setMeasurementSystem
   METHOD measurementSystem

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$deleteMethod=5,4,0

/*
QString managerName() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->managerName () );
  }
#endif
}


/*
int managerVersion() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->managerVersion () );
  }
#endif
}


/*
QGeoRouteReply *calculateRoute(const QGeoRouteRequest &request)
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_CALCULATEROUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRouteReply * ptr = obj->calculateRoute ( *PQGEOROUTEREQUEST(1) );
    _qt5xhb_createReturnClass ( ptr, "QGEOROUTEREPLY" );
  }
#endif
}


/*
QGeoRouteReply *updateRoute(const QGeoRoute &route, const QGeoCoordinate &position)
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_UPDATEROUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRouteReply * ptr = obj->updateRoute ( *PQGEOROUTE(1), *PQGEOCOORDINATE(2) );
    _qt5xhb_createReturnClass ( ptr, "QGEOROUTEREPLY" );
  }
#endif
}


/*
QGeoRouteRequest::TravelModes supportedTravelModes() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_SUPPORTEDTRAVELMODES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedTravelModes () );
  }
#endif
}


/*
QGeoRouteRequest::FeatureTypes supportedFeatureTypes() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_SUPPORTEDFEATURETYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedFeatureTypes () );
  }
#endif
}


/*
QGeoRouteRequest::FeatureWeights supportedFeatureWeights() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_SUPPORTEDFEATUREWEIGHTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedFeatureWeights () );
  }
#endif
}


/*
QGeoRouteRequest::RouteOptimizations supportedRouteOptimizations() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_SUPPORTEDROUTEOPTIMIZATIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedRouteOptimizations () );
  }
#endif
}


/*
QGeoRouteRequest::SegmentDetails supportedSegmentDetails() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_SUPPORTEDSEGMENTDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedSegmentDetails () );
  }
#endif
}


/*
QGeoRouteRequest::ManeuverDetails supportedManeuverDetails() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_SUPPORTEDMANEUVERDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedManeuverDetails () );
  }
#endif
}


/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLocale ( *PQLOCALE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
#endif
}


/*
void setMeasurementSystem(QLocale::MeasurementSystem system)
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_SETMEASUREMENTSYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMeasurementSystem ( (QLocale::MeasurementSystem) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale::MeasurementSystem measurementSystem() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGER_MEASUREMENTSYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->measurementSystem () );
  }
#endif
}




#pragma ENDDUMP

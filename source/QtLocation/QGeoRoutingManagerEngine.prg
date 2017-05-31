/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoRoutingManagerEngine INHERIT QObject

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

PROCEDURE destroyObject () CLASS QGeoRoutingManagerEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRoutingManagerEngine>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRoutingManagerEngine>
#endif
#endif


HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString managerName() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->managerName () ) );
  }
#endif
}


/*
int managerVersion() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->managerVersion () );
  }
#endif
}


/*
virtual QGeoRouteReply *calculateRoute(const QGeoRouteRequest &request) = 0
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_CALCULATEROUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRouteRequest * par1 = (QGeoRouteRequest *) _qt5xhb_itemGetPtr(1);
    QGeoRouteReply * ptr = obj->calculateRoute ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QGEOROUTEREPLY" );
  }
#endif
}


/*
virtual QGeoRouteReply *updateRoute(const QGeoRoute &route, const QGeoCoordinate &position)
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_UPDATEROUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRoute * par1 = (QGeoRoute *) _qt5xhb_itemGetPtr(1);
    QGeoCoordinate * par2 = (QGeoCoordinate *) _qt5xhb_itemGetPtr(2);
    QGeoRouteReply * ptr = obj->updateRoute ( *par1, *par2 );
    _qt5xhb_createReturnClass ( ptr, "QGEOROUTEREPLY" );
  }
#endif
}


/*
QGeoRouteRequest::TravelModes supportedTravelModes() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDTRAVELMODES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedTravelModes () );
  }
#endif
}


/*
QGeoRouteRequest::FeatureTypes supportedFeatureTypes() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDFEATURETYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedFeatureTypes () );
  }
#endif
}


/*
QGeoRouteRequest::FeatureWeights supportedFeatureWeights() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDFEATUREWEIGHTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedFeatureWeights () );
  }
#endif
}


/*
QGeoRouteRequest::RouteOptimizations supportedRouteOptimizations() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDROUTEOPTIMIZATIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedRouteOptimizations () );
  }
#endif
}


/*
QGeoRouteRequest::SegmentDetails supportedSegmentDetails() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDSEGMENTDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedSegmentDetails () );
  }
#endif
}


/*
QGeoRouteRequest::ManeuverDetails supportedManeuverDetails() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDMANEUVERDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedManeuverDetails () );
  }
#endif
}


/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * par1 = (QLocale *) _qt5xhb_itemGetPtr(1);
    obj->setLocale ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SETMEASUREMENTSYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMeasurementSystem ( (QLocale::MeasurementSystem) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale::MeasurementSystem measurementSystem() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_MEASUREMENTSYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->measurementSystem () );
  }
#endif
}




#pragma ENDDUMP

//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoRoutingManagerEngine INHERIT QObject

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

PROCEDURE destroyObject() CLASS QGeoRoutingManagerEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
#include <QtLocation/QGeoRoutingManagerEngine>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
#include <QtLocation/QGeoRoutingManagerEngine>
#endif
#endif

HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString managerName() const
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_MANAGERNAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->managerName());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
int managerVersion() const
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_MANAGERVERSION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->managerVersion());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
virtual QGeoRouteReply * calculateRoute( const QGeoRouteRequest &request ) = 0
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_CALCULATEROUTE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQGEOROUTEREQUEST(1))
    {
#endif
      QGeoRouteReply *ptr = obj->calculateRoute(*PQGEOROUTEREQUEST(1));
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOROUTEREPLY");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
virtual QGeoRouteReply * updateRoute( const QGeoRoute &route, const QGeoCoordinate &position )
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_UPDATEROUTE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQGEOROUTE(1) && ISQGEOCOORDINATE(2))
    {
#endif
      QGeoRouteReply *ptr = obj->updateRoute(*PQGEOROUTE(1), *PQGEOCOORDINATE(2));
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOROUTEREPLY");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::TravelModes supportedTravelModes() const
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_SUPPORTEDTRAVELMODES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->supportedTravelModes());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::FeatureTypes supportedFeatureTypes() const
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_SUPPORTEDFEATURETYPES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->supportedFeatureTypes());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::FeatureWeights supportedFeatureWeights() const
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_SUPPORTEDFEATUREWEIGHTS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->supportedFeatureWeights());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::RouteOptimizations supportedRouteOptimizations() const
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_SUPPORTEDROUTEOPTIMIZATIONS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->supportedRouteOptimizations());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::SegmentDetails supportedSegmentDetails() const
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_SUPPORTEDSEGMENTDETAILS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->supportedSegmentDetails());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::ManeuverDetails supportedManeuverDetails() const
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_SUPPORTEDMANEUVERDETAILS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->supportedManeuverDetails());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLocale( const QLocale &locale )
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_SETLOCALE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQLOCALE(1))
    {
#endif
      obj->setLocale(*PQLOCALE(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_LOCALE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QLocale *ptr = new QLocale(obj->locale());
      Qt5xHb::createReturnClass(ptr, "QLOCALE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setMeasurementSystem( QLocale::MeasurementSystem system )
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_SETMEASUREMENTSYSTEM)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMeasurementSystem((QLocale::MeasurementSystem)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QLocale::MeasurementSystem measurementSystem() const
*/
HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_MEASUREMENTSYSTEM)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngine *obj = (QGeoRoutingManagerEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->measurementSystem());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

void QGeoRoutingManagerEngineSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_ONFINISHED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngineSlots_connect_signal("finished(QGeoRouteReply*)", "finished(QGeoRouteReply*)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGEOROUTINGMANAGERENGINE_ONERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QGeoRoutingManagerEngineSlots_connect_signal("error(QGeoRouteReply*,QGeoRouteReply::Error,QString)",
                                               "error(QGeoRouteReply*,QGeoRouteReply::Error,QString)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP

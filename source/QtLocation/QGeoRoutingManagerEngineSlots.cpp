/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGeoRoutingManagerEngineSlots.h"

static SlotsQGeoRoutingManagerEngine * s = NULL;

SlotsQGeoRoutingManagerEngine::SlotsQGeoRoutingManagerEngine(QObject *parent) : QObject(parent)
{
}

SlotsQGeoRoutingManagerEngine::~SlotsQGeoRoutingManagerEngine()
{
}

void SlotsQGeoRoutingManagerEngine::finished(QGeoRouteReply *reply)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QGeoRouteReply*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preply = hb_itemPutPtr( NULL, (QGeoRouteReply *) reply );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preply );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
#endif
}

void SlotsQGeoRoutingManagerEngine::error(QGeoRouteReply *reply, QGeoRouteReply::Error error, QString errorString)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QGeoRouteReply*,QGeoRouteReply::Error,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preply = hb_itemPutPtr( NULL, (QGeoRouteReply *) reply );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, (const char *) errorString.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, preply, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
#endif
}

HB_FUNC( QGEOROUTINGMANAGERENGINE_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQGeoRoutingManagerEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished(QGeoRouteReply*)", "finished(QGeoRouteReply*)" ) );
#endif
}

HB_FUNC( QGEOROUTINGMANAGERENGINE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQGeoRoutingManagerEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QGeoRouteReply*,QGeoRouteReply::Error,QString)", "error(QGeoRouteReply*,QGeoRouteReply::Error,QString)" ) );
#endif
}

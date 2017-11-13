/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGeoAreaMonitorSourceSlots.h"


static SlotsQGeoAreaMonitorSource * s = NULL;

SlotsQGeoAreaMonitorSource::SlotsQGeoAreaMonitorSource(QObject *parent) : QObject(parent)
{
}

SlotsQGeoAreaMonitorSource::~SlotsQGeoAreaMonitorSource()
{
}

void SlotsQGeoAreaMonitorSource::areaEntered(const QGeoAreaMonitorInfo &monitor, const QGeoPositionInfo &update)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmonitor = hb_itemPutPtr( NULL, (QGeoAreaMonitorInfo *) &monitor );
    PHB_ITEM pupdate = hb_itemPutPtr( NULL, (QGeoPositionInfo *) &update );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pmonitor, pupdate );
    hb_itemRelease( psender );
    hb_itemRelease( pmonitor );
    hb_itemRelease( pupdate );
  }
#endif
}

void SlotsQGeoAreaMonitorSource::areaExited(const QGeoAreaMonitorInfo &monitor, const QGeoPositionInfo &update)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmonitor = hb_itemPutPtr( NULL, (QGeoAreaMonitorInfo *) &monitor );
    PHB_ITEM pupdate = hb_itemPutPtr( NULL, (QGeoPositionInfo *) &update );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pmonitor, pupdate );
    hb_itemRelease( psender );
    hb_itemRelease( pmonitor );
    hb_itemRelease( pupdate );
  }
#endif
}

void SlotsQGeoAreaMonitorSource::monitorExpired(const QGeoAreaMonitorInfo &monitor)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "monitorExpired(QGeoAreaMonitorInfo)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmonitor = hb_itemPutPtr( NULL, (QGeoAreaMonitorInfo *) &monitor );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmonitor );
    hb_itemRelease( psender );
    hb_itemRelease( pmonitor );
  }
#endif
}

void SlotsQGeoAreaMonitorSource::error(QGeoAreaMonitorSource::Error error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QGeoAreaMonitorSource::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
#endif
}

HB_FUNC( QGEOAREAMONITORSOURCE_ONAREAENTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoAreaMonitorSource(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)", "areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QGEOAREAMONITORSOURCE_ONAREAEXITED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoAreaMonitorSource(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)", "areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QGEOAREAMONITORSOURCE_ONMONITOREXPIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoAreaMonitorSource(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "monitorExpired(QGeoAreaMonitorInfo)", "monitorExpired(QGeoAreaMonitorInfo)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QGEOAREAMONITORSOURCE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoAreaMonitorSource(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QGeoAreaMonitorSource::Error)", "error(QGeoAreaMonitorSource::Error)" ) );
#else
  hb_retl(false);
#endif
}

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QScreenSlots.h"


static SlotsQScreen * s = NULL;

SlotsQScreen::SlotsQScreen(QObject *parent) : QObject(parent)
{
}

SlotsQScreen::~SlotsQScreen()
{
}

void SlotsQScreen::geometryChanged(const QRect &geometry)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "geometryChanged(QRect)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pgeometry = hb_itemPutPtr( NULL, (QRect *) &geometry );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pgeometry );
    hb_itemRelease( psender );
    hb_itemRelease( pgeometry );
  }
}

void SlotsQScreen::physicalSizeChanged(const QSizeF &size)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "physicalSizeChanged(QSizeF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psize = hb_itemPutPtr( NULL, (QSizeF *) &size );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psize );
    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}

void SlotsQScreen::physicalDotsPerInchChanged(qreal dpi)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "physicalDotsPerInchChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdpi = hb_itemPutND( NULL, dpi );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdpi );
    hb_itemRelease( psender );
    hb_itemRelease( pdpi );
  }
}

void SlotsQScreen::logicalDotsPerInchChanged(qreal dpi)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "logicalDotsPerInchChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdpi = hb_itemPutND( NULL, dpi );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdpi );
    hb_itemRelease( psender );
    hb_itemRelease( pdpi );
  }
}

void SlotsQScreen::virtualGeometryChanged(const QRect &rect)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "virtualGeometryChanged(QRect)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prect = hb_itemPutPtr( NULL, (QRect *) &rect );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prect );
    hb_itemRelease( psender );
    hb_itemRelease( prect );
  }
}

void SlotsQScreen::primaryOrientationChanged(Qt::ScreenOrientation orientation)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "primaryOrientationChanged(Qt::ScreenOrientation)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, porientation );
    hb_itemRelease( psender );
    hb_itemRelease( porientation );
  }
}

void SlotsQScreen::orientationChanged(Qt::ScreenOrientation orientation)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "orientationChanged(Qt::ScreenOrientation)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, porientation );
    hb_itemRelease( psender );
    hb_itemRelease( porientation );
  }
}

void SlotsQScreen::refreshRateChanged(qreal refreshRate)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "refreshRateChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prefreshRate = hb_itemPutND( NULL, refreshRate );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prefreshRate );
    hb_itemRelease( psender );
    hb_itemRelease( prefreshRate );
  }
}

HB_FUNC( QSCREEN_ONGEOMETRYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScreen(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "geometryChanged(QRect)", "geometryChanged(QRect)" ) );

}

HB_FUNC( QSCREEN_ONPHYSICALSIZECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScreen(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "physicalSizeChanged(QSizeF)", "physicalSizeChanged(QSizeF)" ) );

}

HB_FUNC( QSCREEN_ONPHYSICALDOTSPERINCHCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScreen(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "physicalDotsPerInchChanged(qreal)", "physicalDotsPerInchChanged(qreal)" ) );

}

HB_FUNC( QSCREEN_ONLOGICALDOTSPERINCHCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScreen(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "logicalDotsPerInchChanged(qreal)", "logicalDotsPerInchChanged(qreal)" ) );

}

HB_FUNC( QSCREEN_ONVIRTUALGEOMETRYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScreen(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "virtualGeometryChanged(QRect)", "virtualGeometryChanged(QRect)" ) );

}

HB_FUNC( QSCREEN_ONPRIMARYORIENTATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScreen(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "primaryOrientationChanged(Qt::ScreenOrientation)", "primaryOrientationChanged(Qt::ScreenOrientation)" ) );

}

HB_FUNC( QSCREEN_ONORIENTATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScreen(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "orientationChanged(Qt::ScreenOrientation)", "orientationChanged(Qt::ScreenOrientation)" ) );

}

HB_FUNC( QSCREEN_ONREFRESHRATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScreen(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "refreshRateChanged(qreal)", "refreshRateChanged(qreal)" ) );

}

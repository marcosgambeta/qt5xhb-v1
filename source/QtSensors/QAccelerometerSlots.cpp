/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QAccelerometerSlots.h"


static SlotsQAccelerometer * s = NULL;

SlotsQAccelerometer::SlotsQAccelerometer(QObject *parent) : QObject(parent)
{
}

SlotsQAccelerometer::~SlotsQAccelerometer()
{
}

void SlotsQAccelerometer::accelerationModeChanged(QAccelerometer::AccelerationMode accelerationMode)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "accelerationModeChanged(QAccelerometer::AccelerationMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paccelerationMode = hb_itemPutNI( NULL, (int) accelerationMode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paccelerationMode );
    hb_itemRelease( psender );
    hb_itemRelease( paccelerationMode );
  }
#endif
}

HB_FUNC( QACCELEROMETER_ONACCELERATIONMODECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQAccelerometer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "accelerationModeChanged(QAccelerometer::AccelerationMode)", "accelerationModeChanged(QAccelerometer::AccelerationMode)" ) );
#else
  hb_retl(false);
#endif
}

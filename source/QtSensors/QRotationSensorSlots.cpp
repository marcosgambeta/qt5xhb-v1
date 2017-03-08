/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QRotationSensorSlots.h"


static SlotsQRotationSensor * s = NULL;

SlotsQRotationSensor::SlotsQRotationSensor(QObject *parent) : QObject(parent)
{
}

SlotsQRotationSensor::~SlotsQRotationSensor()
{
}

void SlotsQRotationSensor::hasZChanged(bool hasZ)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hasZChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM phasZ = hb_itemPutL( NULL, hasZ );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, phasZ );
    hb_itemRelease( psender );
    hb_itemRelease( phasZ );
  }
#endif
}

HB_FUNC( QROTATIONSENSOR_ONHASZCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQRotationSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "hasZChanged(bool)", "hasZChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}

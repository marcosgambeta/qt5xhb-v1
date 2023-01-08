/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAccelerometerSlots.h"

QAccelerometerSlots::QAccelerometerSlots( QObject *parent ) : QObject( parent )
{
}

QAccelerometerSlots::~QAccelerometerSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QAccelerometerSlots::accelerationModeChanged( QAccelerometer::AccelerationMode accelerationMode )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "accelerationModeChanged(QAccelerometer::AccelerationMode)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QACCELEROMETER");
    PHB_ITEM paccelerationMode = hb_itemPutNI( NULL, (int) accelerationMode );

    hb_vmEvalBlockV( cb, 2, psender, paccelerationMode );

    hb_itemRelease( psender );
    hb_itemRelease( paccelerationMode );
  }
}
#endif

void QAccelerometerSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * obj = (QAccelerometer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAccelerometerSlots * s = QCoreApplication::instance()->findChild<QAccelerometerSlots*>();

    if( s == NULL )
    {
      s = new QAccelerometerSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QRotationSensorSlots.h"

QRotationSensorSlots::QRotationSensorSlots( QObject *parent ) : QObject( parent )
{
}

QRotationSensorSlots::~QRotationSensorSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QRotationSensorSlots::hasZChanged( bool hasZ )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "hasZChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QROTATIONSENSOR");
    PHB_ITEM phasZ = hb_itemPutL( NULL, hasZ );

    hb_vmEvalBlockV( cb, 2, psender, phasZ );

    hb_itemRelease( psender );
    hb_itemRelease( phasZ );
  }
}
#endif

void QRotationSensorSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRotationSensorSlots * s = QCoreApplication::instance()->findChild<QRotationSensorSlots *>();

    if( s == NULL )
    {
      s = new QRotationSensorSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

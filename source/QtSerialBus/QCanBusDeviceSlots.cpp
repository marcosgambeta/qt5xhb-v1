/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCanBusDeviceSlots.h"

QCanBusDeviceSlots::QCanBusDeviceSlots(QObject *parent) : QObject(parent)
{
}

QCanBusDeviceSlots::~QCanBusDeviceSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCanBusDeviceSlots::errorOccurred( QCanBusDevice::CanBusError )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "errorOccurred)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANBUSDEVICE" );
    hb_vmEvalBlockV( cb, 1, psender,  );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCanBusDeviceSlots::framesReceived()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "framesReceived()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANBUSDEVICE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCanBusDeviceSlots::framesWritten( qint64 framesCount )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "framesWritten(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANBUSDEVICE" );
    PHB_ITEM pframesCount = hb_itemPutNLL( NULL, framesCount );
    hb_vmEvalBlockV( cb, 2, psender, pframesCount );
    hb_itemRelease( psender );
    hb_itemRelease( pframesCount );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCanBusDeviceSlots::stateChanged( QCanBusDevice::CanBusDeviceState state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QCanBusDevice::CanBusDeviceState)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANBUSDEVICE" );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}
#endif

void QCanBusDeviceSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QCanBusDeviceSlots * s = QCoreApplication::instance()->findChild<QCanBusDeviceSlots *>();

    if( s == NULL )
    {
      s = new QCanBusDeviceSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

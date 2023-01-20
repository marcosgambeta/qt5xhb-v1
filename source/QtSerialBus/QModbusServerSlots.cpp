/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QModbusServerSlots.h"

QModbusServerSlots::QModbusServerSlots( QObject *parent ) : QObject( parent )
{
}

QModbusServerSlots::~QModbusServerSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QModbusServerSlots::dataWritten( QModbusDataUnit::RegisterType table, int address, int size )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "dataWritten(QModbusDataUnit::RegisterType,int,int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMODBUSSERVER");
    PHB_ITEM ptable = hb_itemPutNI( NULL, static_cast<int>(table) );
    PHB_ITEM paddress = hb_itemPutNI( NULL, address );
    PHB_ITEM psize = hb_itemPutNI( NULL, size );

    hb_vmEvalBlockV(cb, 4, psender, ptable, paddress, psize);

    hb_itemRelease(psender);
    hb_itemRelease( ptable );
    hb_itemRelease( paddress );
    hb_itemRelease( psize );
  }
}
#endif

void QModbusServerSlots_connect_signal(const QString & signal, const QString & slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServer * obj = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QModbusServerSlots * s = QCoreApplication::instance()->findChild<QModbusServerSlots*>();

    if( s == NULL )
    {
      s = new QModbusServerSlots();
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

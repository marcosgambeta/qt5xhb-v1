/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTapSensorSlots.h"

QTapSensorSlots::QTapSensorSlots( QObject *parent ) : QObject( parent )
{
}

QTapSensorSlots::~QTapSensorSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QTapSensorSlots::returnDoubleTapEventsChanged( bool returnDoubleTapEvents )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "returnDoubleTapEventsChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTAPSENSOR");
    PHB_ITEM preturnDoubleTapEvents = hb_itemPutL( NULL, returnDoubleTapEvents );

    hb_vmEvalBlockV( cb, 2, psender, preturnDoubleTapEvents );

    hb_itemRelease( psender );
    hb_itemRelease( preturnDoubleTapEvents );
  }
}
#endif

void QTapSensorSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QTapSensorSlots * s = QCoreApplication::instance()->findChild<QTapSensorSlots*>();

    if( s == NULL )
    {
      s = new QTapSensorSlots();
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

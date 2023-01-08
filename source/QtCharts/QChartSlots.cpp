/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QChartSlots.h"

QChartSlots::QChartSlots( QObject *parent ) : QObject( parent )
{
}

QChartSlots::~QChartSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QChartSlots::plotAreaChanged( const QRectF & plotArea )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "plotAreaChanged(QRectF)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCHART");
    PHB_ITEM pplotArea = Qt5xHb::Signals_return_object( (void *) &plotArea, "QRECTF" );

    hb_vmEvalBlockV( cb, 2, psender, pplotArea );

    hb_itemRelease( psender );
    hb_itemRelease( pplotArea );
  }
}
#endif

void QChartSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QChartSlots * s = QCoreApplication::instance()->findChild<QChartSlots*>();

    if( s == NULL )
    {
      s = new QChartSlots();
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

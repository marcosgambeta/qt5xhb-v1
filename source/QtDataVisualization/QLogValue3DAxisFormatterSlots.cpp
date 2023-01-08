/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QLogValue3DAxisFormatterSlots.h"

QLogValue3DAxisFormatterSlots::QLogValue3DAxisFormatterSlots( QObject *parent ) : QObject( parent )
{
}

QLogValue3DAxisFormatterSlots::~QLogValue3DAxisFormatterSlots()
{
}

void QLogValue3DAxisFormatterSlots::autoSubGridChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "autoSubGridChanged(bool)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOGVALUE3DAXISFORMATTER");
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );

    hb_vmEvalBlockV( cb, 2, psender, penabled );

    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void QLogValue3DAxisFormatterSlots::baseChanged( qreal base )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "baseChanged(qreal)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOGVALUE3DAXISFORMATTER");
    PHB_ITEM pbase = hb_itemPutND( NULL, base );

    hb_vmEvalBlockV( cb, 2, psender, pbase );

    hb_itemRelease( psender );
    hb_itemRelease( pbase );
  }
}

void QLogValue3DAxisFormatterSlots::showEdgeLabelsChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "showEdgeLabelsChanged(bool)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOGVALUE3DAXISFORMATTER");
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );

    hb_vmEvalBlockV( cb, 2, psender, penabled );

    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void QLogValue3DAxisFormatterSlots_connect_signal( const QString & signal, const QString & slot )
{
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QLogValue3DAxisFormatterSlots * s = QCoreApplication::instance()->findChild<QLogValue3DAxisFormatterSlots*>();

    if( s == NULL )
    {
      s = new QLogValue3DAxisFormatterSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}

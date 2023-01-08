/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCandlestickModelMapperSlots.h"

QCandlestickModelMapperSlots::QCandlestickModelMapperSlots( QObject *parent ) : QObject( parent )
{
}

QCandlestickModelMapperSlots::~QCandlestickModelMapperSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickModelMapperSlots::modelReplaced()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "modelReplaced()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCANDLESTICKMODELMAPPER");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickModelMapperSlots::seriesReplaced()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "seriesReplaced()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCANDLESTICKMODELMAPPER");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

void QCandlestickModelMapperSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QCandlestickModelMapperSlots * s = QCoreApplication::instance()->findChild<QCandlestickModelMapperSlots*>();

    if( s == NULL )
    {
      s = new QCandlestickModelMapperSlots();
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

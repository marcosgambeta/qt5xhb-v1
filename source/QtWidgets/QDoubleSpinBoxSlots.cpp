/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDoubleSpinBoxSlots.hpp"

QDoubleSpinBoxSlots::QDoubleSpinBoxSlots( QObject *parent ) : QObject( parent )
{
}

QDoubleSpinBoxSlots::~QDoubleSpinBoxSlots()
{
}

void QDoubleSpinBoxSlots::valueChanged( double d )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "valueChanged(double)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDOUBLESPINBOX");
    PHB_ITEM pd = hb_itemPutND( NULL, d );

    hb_vmEvalBlockV(cb, 2, psender, pd);

    hb_itemRelease(psender);
    hb_itemRelease( pd );
  }
}

void QDoubleSpinBoxSlots::valueChanged( const QString & text )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "valueChanged(QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDOUBLESPINBOX");
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );

    hb_vmEvalBlockV(cb, 2, psender, ptext);

    hb_itemRelease(psender);
    hb_itemRelease( ptext );
  }
}

void QDoubleSpinBoxSlots_connect_signal(const QString & signal, const QString & slot)
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QDoubleSpinBoxSlots * s = QCoreApplication::instance()->findChild<QDoubleSpinBoxSlots*>();

    if( s == NULL )
    {
      s = new QDoubleSpinBoxSlots();
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

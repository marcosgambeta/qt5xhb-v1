/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractSpinBoxSlots.h"

QAbstractSpinBoxSlots::QAbstractSpinBoxSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractSpinBoxSlots::~QAbstractSpinBoxSlots()
{
}

void QAbstractSpinBoxSlots::editingFinished()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "editingFinished()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTSPINBOX");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractSpinBoxSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAbstractSpinBoxSlots * s = QCoreApplication::instance()->findChild<QAbstractSpinBoxSlots*>();

    if( s == NULL )
    {
      s = new QAbstractSpinBoxSlots();
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

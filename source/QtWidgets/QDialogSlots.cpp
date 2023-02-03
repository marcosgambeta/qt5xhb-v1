/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDialogSlots.hpp"

QDialogSlots::QDialogSlots( QObject *parent ) : QObject( parent )
{
}

QDialogSlots::~QDialogSlots()
{
}

void QDialogSlots::accepted()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "accepted()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDIALOG");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QDialogSlots::finished( int result )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "finished(int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDIALOG");
    PHB_ITEM presult = hb_itemPutNI( NULL, result );

    hb_vmEvalBlockV(cb, 2, psender, presult);

    hb_itemRelease(psender);
    hb_itemRelease( presult );
  }
}

void QDialogSlots::rejected()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "rejected()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDIALOG");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QDialogSlots_connect_signal(const QString & signal, const QString & slot)
{
  QDialog * obj = (QDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QDialogSlots * s = QCoreApplication::instance()->findChild<QDialogSlots*>();

    if( s == NULL )
    {
      s = new QDialogSlots();
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

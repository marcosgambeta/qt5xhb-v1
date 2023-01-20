/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpIndexModelSlots.h"

QHelpIndexModelSlots::QHelpIndexModelSlots( QObject *parent ) : QObject( parent )
{
}

QHelpIndexModelSlots::~QHelpIndexModelSlots()
{
}

void QHelpIndexModelSlots::indexCreated()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "indexCreated()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHELPINDEXMODEL");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QHelpIndexModelSlots::indexCreationStarted()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "indexCreationStarted()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHELPINDEXMODEL");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QHelpIndexModelSlots_connect_signal(const QString & signal, const QString & slot)
{
  QHelpIndexModel * obj = (QHelpIndexModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QHelpIndexModelSlots * s = QCoreApplication::instance()->findChild<QHelpIndexModelSlots*>();

    if( s == NULL )
    {
      s = new QHelpIndexModelSlots();
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

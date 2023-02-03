/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QActionSlots.hpp"

QActionSlots::QActionSlots( QObject *parent ) : QObject( parent )
{
}

QActionSlots::~QActionSlots()
{
}

void QActionSlots::changed()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "changed()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QACTION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QActionSlots::hovered()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "hovered()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QACTION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QActionSlots::toggled( bool checked )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "toggled(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QACTION");
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );

    hb_vmEvalBlockV(cb, 2, psender, pchecked);

    hb_itemRelease(psender);
    hb_itemRelease( pchecked );
  }
}

void QActionSlots::triggered( bool checked )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "triggered(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QACTION");
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );

    hb_vmEvalBlockV(cb, 2, psender, pchecked);

    hb_itemRelease(psender);
    hb_itemRelease( pchecked );
  }
}

void QActionSlots_connect_signal(const QString & signal, const QString & slot)
{
  QAction * obj = (QAction *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QActionSlots * s = QCoreApplication::instance()->findChild<QActionSlots*>();

    if( s == NULL )
    {
      s = new QActionSlots();
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

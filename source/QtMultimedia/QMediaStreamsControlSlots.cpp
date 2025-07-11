//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QMediaStreamsControlSlots.hpp"

QMediaStreamsControlSlots::QMediaStreamsControlSlots(QObject *parent) : QObject(parent)
{
}

QMediaStreamsControlSlots::~QMediaStreamsControlSlots()
{
}

void QMediaStreamsControlSlots::activeStreamsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "activeStreamsChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIASTREAMSCONTROL");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QMediaStreamsControlSlots::streamsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "streamsChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIASTREAMSCONTROL");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QMediaStreamsControlSlots_connect_signal(const QString &signal, const QString &slot)
{
  QMediaStreamsControl *obj = (QMediaStreamsControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QMediaStreamsControlSlots *s = QCoreApplication::instance()->findChild<QMediaStreamsControlSlots *>();

    if (s == NULL)
    {
      s = new QMediaStreamsControlSlots();
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

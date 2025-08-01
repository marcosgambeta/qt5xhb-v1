//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QVideoProbeSlots.hpp"

QVideoProbeSlots::QVideoProbeSlots(QObject *parent) : QObject(parent)
{
}

QVideoProbeSlots::~QVideoProbeSlots()
{
}

void QVideoProbeSlots::flush()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "flush()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIDEOPROBE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QVideoProbeSlots::videoFrameProbed(const QVideoFrame &frame)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "videoFrameProbed(QVideoFrame)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIDEOPROBE");
    PHB_ITEM pframe = Qt5xHb::Signals_return_object((void *)&frame, "QVIDEOFRAME");

    hb_vmEvalBlockV(cb, 2, psender, pframe);

    hb_itemRelease(psender);
    hb_itemRelease(pframe);
  }
}

void QVideoProbeSlots_connect_signal(const QString &signal, const QString &slot)
{
  QVideoProbe *obj = (QVideoProbe *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QVideoProbeSlots *s = QCoreApplication::instance()->findChild<QVideoProbeSlots *>();

    if (s == NULL)
    {
      s = new QVideoProbeSlots();
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

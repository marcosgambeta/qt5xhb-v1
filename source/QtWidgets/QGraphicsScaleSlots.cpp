//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QGraphicsScaleSlots.hpp"

QGraphicsScaleSlots::QGraphicsScaleSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsScaleSlots::~QGraphicsScaleSlots()
{
}

void QGraphicsScaleSlots::originChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "originChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSSCALE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGraphicsScaleSlots::scaleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "scaleChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSSCALE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGraphicsScaleSlots::xScaleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "xScaleChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSSCALE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGraphicsScaleSlots::yScaleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "yScaleChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSSCALE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGraphicsScaleSlots::zScaleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "zScaleChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSSCALE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGraphicsScaleSlots_connect_signal(const QString &signal, const QString &slot)
{
  QGraphicsScale *obj = (QGraphicsScale *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QGraphicsScaleSlots *s = QCoreApplication::instance()->findChild<QGraphicsScaleSlots *>();

    if (s == NULL)
    {
      s = new QGraphicsScaleSlots();
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

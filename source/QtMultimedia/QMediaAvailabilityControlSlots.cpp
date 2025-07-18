//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QMediaAvailabilityControlSlots.hpp"

QMediaAvailabilityControlSlots::QMediaAvailabilityControlSlots(QObject *parent) : QObject(parent)
{
}

QMediaAvailabilityControlSlots::~QMediaAvailabilityControlSlots()
{
}

void QMediaAvailabilityControlSlots::availabilityChanged(QMultimedia::AvailabilityStatus availability)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "availabilityChanged(QMultimedia::AvailabilityStatus)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAAVAILABILITYCONTROL");
    PHB_ITEM pavailability = hb_itemPutNI(NULL, static_cast<int>(availability));

    hb_vmEvalBlockV(cb, 2, psender, pavailability);

    hb_itemRelease(psender);
    hb_itemRelease(pavailability);
  }
}

void QMediaAvailabilityControlSlots_connect_signal(const QString &signal, const QString &slot)
{
  QMediaAvailabilityControl *obj = (QMediaAvailabilityControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QMediaAvailabilityControlSlots *s = QCoreApplication::instance()->findChild<QMediaAvailabilityControlSlots *>();

    if (s == NULL)
    {
      s = new QMediaAvailabilityControlSlots();
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

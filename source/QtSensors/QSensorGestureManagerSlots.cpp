//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QSensorGestureManagerSlots.hpp"

QSensorGestureManagerSlots::QSensorGestureManagerSlots(QObject *parent) : QObject(parent)
{
}

QSensorGestureManagerSlots::~QSensorGestureManagerSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
void QSensorGestureManagerSlots::newSensorGestureAvailable()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "newSensorGestureAvailable()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSENSORGESTUREMANAGER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

void QSensorGestureManagerSlots_connect_signal(const QString &signal, const QString &slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QSensorGestureManager *obj = (QSensorGestureManager *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QSensorGestureManagerSlots *s = QCoreApplication::instance()->findChild<QSensorGestureManagerSlots *>();

    if (s == NULL)
    {
      s = new QSensorGestureManagerSlots();
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

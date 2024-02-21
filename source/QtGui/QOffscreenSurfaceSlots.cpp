/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QOffscreenSurfaceSlots.hpp"

QOffscreenSurfaceSlots::QOffscreenSurfaceSlots(QObject *parent) : QObject(parent)
{
}

QOffscreenSurfaceSlots::~QOffscreenSurfaceSlots()
{
}

void QOffscreenSurfaceSlots::screenChanged(QScreen *screen)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "screenChanged(QScreen*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QOFFSCREENSURFACE");
    PHB_ITEM pscreen = Qt5xHb::Signals_return_qobject(screen, "QSCREEN");

    hb_vmEvalBlockV(cb, 2, psender, pscreen);

    hb_itemRelease(psender);
    hb_itemRelease(pscreen);
  }
}

void QOffscreenSurfaceSlots_connect_signal(const QString &signal, const QString &slot)
{
  QOffscreenSurface *obj = (QOffscreenSurface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QOffscreenSurfaceSlots *s = QCoreApplication::instance()->findChild<QOffscreenSurfaceSlots *>();

    if (s == NULL)
    {
      s = new QOffscreenSurfaceSlots();
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

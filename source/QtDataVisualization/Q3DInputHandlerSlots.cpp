//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "Q3DInputHandlerSlots.hpp"

Q3DInputHandlerSlots::Q3DInputHandlerSlots(QObject *parent) : QObject(parent)
{
}

Q3DInputHandlerSlots::~Q3DInputHandlerSlots()
{
}

void Q3DInputHandlerSlots::rotationEnabledChanged(bool enable)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "rotationEnabledChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DINPUTHANDLER");
    PHB_ITEM penable = hb_itemPutL(NULL, enable);

    hb_vmEvalBlockV(cb, 2, psender, penable);

    hb_itemRelease(psender);
    hb_itemRelease(penable);
  }
}

void Q3DInputHandlerSlots::selectionEnabledChanged(bool enable)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectionEnabledChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DINPUTHANDLER");
    PHB_ITEM penable = hb_itemPutL(NULL, enable);

    hb_vmEvalBlockV(cb, 2, psender, penable);

    hb_itemRelease(psender);
    hb_itemRelease(penable);
  }
}

void Q3DInputHandlerSlots::zoomAtTargetEnabledChanged(bool enable)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "zoomAtTargetEnabledChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DINPUTHANDLER");
    PHB_ITEM penable = hb_itemPutL(NULL, enable);

    hb_vmEvalBlockV(cb, 2, psender, penable);

    hb_itemRelease(psender);
    hb_itemRelease(penable);
  }
}

void Q3DInputHandlerSlots::zoomEnabledChanged(bool enable)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "zoomEnabledChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DINPUTHANDLER");
    PHB_ITEM penable = hb_itemPutL(NULL, enable);

    hb_vmEvalBlockV(cb, 2, psender, penable);

    hb_itemRelease(psender);
    hb_itemRelease(penable);
  }
}

void Q3DInputHandlerSlots_connect_signal(const QString &signal, const QString &slot)
{
  Q3DInputHandler *obj = (Q3DInputHandler *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Q3DInputHandlerSlots *s = QCoreApplication::instance()->findChild<Q3DInputHandlerSlots *>();

    if (s == NULL)
    {
      s = new Q3DInputHandlerSlots();
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

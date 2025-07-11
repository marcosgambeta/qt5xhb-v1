//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QVideoDeviceSelectorControlSlots.hpp"

QVideoDeviceSelectorControlSlots::QVideoDeviceSelectorControlSlots(QObject *parent) : QObject(parent)
{
}

QVideoDeviceSelectorControlSlots::~QVideoDeviceSelectorControlSlots()
{
}

void QVideoDeviceSelectorControlSlots::devicesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "devicesChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIDEODEVICESELECTORCONTROL");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QVideoDeviceSelectorControlSlots::selectedDeviceChanged(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectedDeviceChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIDEODEVICESELECTORCONTROL");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}

void QVideoDeviceSelectorControlSlots::selectedDeviceChanged(const QString &name)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectedDeviceChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIDEODEVICESELECTORCONTROL");
    PHB_ITEM pname = hb_itemPutC(NULL, QSTRINGTOSTRING(name));

    hb_vmEvalBlockV(cb, 2, psender, pname);

    hb_itemRelease(psender);
    hb_itemRelease(pname);
  }
}

void QVideoDeviceSelectorControlSlots_connect_signal(const QString &signal, const QString &slot)
{
  QVideoDeviceSelectorControl *obj = (QVideoDeviceSelectorControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QVideoDeviceSelectorControlSlots *s = QCoreApplication::instance()->findChild<QVideoDeviceSelectorControlSlots *>();

    if (s == NULL)
    {
      s = new QVideoDeviceSelectorControlSlots();
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

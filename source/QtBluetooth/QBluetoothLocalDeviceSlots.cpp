//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QBluetoothLocalDeviceSlots.hpp"

QBluetoothLocalDeviceSlots::QBluetoothLocalDeviceSlots(QObject *parent) : QObject(parent)
{
}

QBluetoothLocalDeviceSlots::~QBluetoothLocalDeviceSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
void QBluetoothLocalDeviceSlots::hostModeStateChanged(QBluetoothLocalDevice::HostMode state)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "hostModeStateChanged(QBluetoothLocalDevice::HostMode)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBLUETOOTHLOCALDEVICE");
    PHB_ITEM pstate = hb_itemPutNI(NULL, static_cast<int>(state));

    hb_vmEvalBlockV(cb, 2, psender, pstate);

    hb_itemRelease(psender);
    hb_itemRelease(pstate);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
void QBluetoothLocalDeviceSlots::pairingFinished(const QBluetoothAddress &address,
                                                 QBluetoothLocalDevice::Pairing pairing)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb =
      Qt5xHb::Signals_return_codeblock(object, "pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBLUETOOTHLOCALDEVICE");
    PHB_ITEM paddress = Qt5xHb::Signals_return_object((void *)&address, "QBLUETOOTHADDRESS");
    PHB_ITEM ppairing = hb_itemPutNI(NULL, static_cast<int>(pairing));

    hb_vmEvalBlockV(cb, 3, psender, paddress, ppairing);

    hb_itemRelease(psender);
    hb_itemRelease(paddress);
    hb_itemRelease(ppairing);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
void QBluetoothLocalDeviceSlots::pairingDisplayPinCode(const QBluetoothAddress &address, QString pin)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pairingDisplayPinCode(QBluetoothAddress,QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBLUETOOTHLOCALDEVICE");
    PHB_ITEM paddress = Qt5xHb::Signals_return_object((void *)&address, "QBLUETOOTHADDRESS");
    PHB_ITEM ppin = hb_itemPutC(NULL, pin.toLatin1().data());

    hb_vmEvalBlockV(cb, 3, psender, paddress, ppin);

    hb_itemRelease(psender);
    hb_itemRelease(paddress);
    hb_itemRelease(ppin);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
void QBluetoothLocalDeviceSlots::pairingDisplayConfirmation(const QBluetoothAddress &address, QString pin)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pairingDisplayConfirmation(QBluetoothAddress,QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBLUETOOTHLOCALDEVICE");
    PHB_ITEM paddress = Qt5xHb::Signals_return_object((void *)&address, "QBLUETOOTHADDRESS");
    PHB_ITEM ppin = hb_itemPutC(NULL, pin.toLatin1().data());

    hb_vmEvalBlockV(cb, 3, psender, paddress, ppin);

    hb_itemRelease(psender);
    hb_itemRelease(paddress);
    hb_itemRelease(ppin);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
void QBluetoothLocalDeviceSlots::error(QBluetoothLocalDevice::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "error(QBluetoothLocalDevice::Error)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBLUETOOTHLOCALDEVICE");
    PHB_ITEM perror = hb_itemPutNI(NULL, static_cast<int>(error));

    hb_vmEvalBlockV(cb, 2, psender, perror);

    hb_itemRelease(psender);
    hb_itemRelease(perror);
  }
}
#endif

void QBluetoothLocalDeviceSlots_connect_signal(const QString &signal, const QString &slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothLocalDevice *obj = (QBluetoothLocalDevice *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QBluetoothLocalDeviceSlots *s = QCoreApplication::instance()->findChild<QBluetoothLocalDeviceSlots *>();

    if (s == NULL)
    {
      s = new QBluetoothLocalDeviceSlots();
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

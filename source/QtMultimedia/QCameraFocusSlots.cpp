/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCameraFocusSlots.hpp"

QCameraFocusSlots::QCameraFocusSlots(QObject *parent) : QObject(parent)
{
}

QCameraFocusSlots::~QCameraFocusSlots()
{
}

void QCameraFocusSlots::digitalZoomChanged(qreal value)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "digitalZoomChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCAMERAFOCUS");
    PHB_ITEM pvalue = hb_itemPutND(NULL, value);

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease(pvalue);
  }
}

void QCameraFocusSlots::focusZonesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "focusZonesChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCAMERAFOCUS");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QCameraFocusSlots::maximumDigitalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "maximumDigitalZoomChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCAMERAFOCUS");
    PHB_ITEM pzoom = hb_itemPutND(NULL, zoom);

    hb_vmEvalBlockV(cb, 2, psender, pzoom);

    hb_itemRelease(psender);
    hb_itemRelease(pzoom);
  }
}

void QCameraFocusSlots::maximumOpticalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "maximumOpticalZoomChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCAMERAFOCUS");
    PHB_ITEM pzoom = hb_itemPutND(NULL, zoom);

    hb_vmEvalBlockV(cb, 2, psender, pzoom);

    hb_itemRelease(psender);
    hb_itemRelease(pzoom);
  }
}

void QCameraFocusSlots::opticalZoomChanged(qreal value)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "opticalZoomChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCAMERAFOCUS");
    PHB_ITEM pvalue = hb_itemPutND(NULL, value);

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease(pvalue);
  }
}

void QCameraFocusSlots_connect_signal(const QString &signal, const QString &slot)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QCameraFocusSlots *s = QCoreApplication::instance()->findChild<QCameraFocusSlots *>();

    if (s == NULL)
    {
      s = new QCameraFocusSlots();
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

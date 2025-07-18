//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QLogValueAxisSlots.hpp"

QLogValueAxisSlots::QLogValueAxisSlots(QObject *parent) : QObject(parent)
{
}

QLogValueAxisSlots::~QLogValueAxisSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLogValueAxisSlots::baseChanged(qreal base)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "baseChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOGVALUEAXIS");
    PHB_ITEM pbase = hb_itemPutND(NULL, base);

    hb_vmEvalBlockV(cb, 2, psender, pbase);

    hb_itemRelease(psender);
    hb_itemRelease(pbase);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLogValueAxisSlots::labelFormatChanged(const QString &format)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "labelFormatChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOGVALUEAXIS");
    PHB_ITEM pformat = hb_itemPutC(NULL, QSTRINGTOSTRING(format));

    hb_vmEvalBlockV(cb, 2, psender, pformat);

    hb_itemRelease(psender);
    hb_itemRelease(pformat);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLogValueAxisSlots::maxChanged(qreal max)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "maxChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOGVALUEAXIS");
    PHB_ITEM pmax = hb_itemPutND(NULL, max);

    hb_vmEvalBlockV(cb, 2, psender, pmax);

    hb_itemRelease(psender);
    hb_itemRelease(pmax);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLogValueAxisSlots::minChanged(qreal min)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "minChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOGVALUEAXIS");
    PHB_ITEM pmin = hb_itemPutND(NULL, min);

    hb_vmEvalBlockV(cb, 2, psender, pmin);

    hb_itemRelease(psender);
    hb_itemRelease(pmin);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
void QLogValueAxisSlots::minorTickCountChanged(int minorTickCount)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "minorTickCountChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOGVALUEAXIS");
    PHB_ITEM pminorTickCount = hb_itemPutNI(NULL, minorTickCount);

    hb_vmEvalBlockV(cb, 2, psender, pminorTickCount);

    hb_itemRelease(psender);
    hb_itemRelease(pminorTickCount);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLogValueAxisSlots::rangeChanged(qreal min, qreal max)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "rangeChanged(qreal,qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOGVALUEAXIS");
    PHB_ITEM pmin = hb_itemPutND(NULL, min);
    PHB_ITEM pmax = hb_itemPutND(NULL, max);

    hb_vmEvalBlockV(cb, 3, psender, pmin, pmax);

    hb_itemRelease(psender);
    hb_itemRelease(pmin);
    hb_itemRelease(pmax);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
void QLogValueAxisSlots::tickCountChanged(int tickCount)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "tickCountChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOGVALUEAXIS");
    PHB_ITEM ptickCount = hb_itemPutNI(NULL, tickCount);

    hb_vmEvalBlockV(cb, 2, psender, ptickCount);

    hb_itemRelease(psender);
    hb_itemRelease(ptickCount);
  }
}
#endif

void QLogValueAxisSlots_connect_signal(const QString &signal, const QString &slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLogValueAxis *obj = (QLogValueAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QLogValueAxisSlots *s = QCoreApplication::instance()->findChild<QLogValueAxisSlots *>();

    if (s == NULL)
    {
      s = new QLogValueAxisSlots();
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

//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QLegendMarkerSlots.hpp"

QLegendMarkerSlots::QLegendMarkerSlots(QObject *parent) : QObject(parent)
{
}

QLegendMarkerSlots::~QLegendMarkerSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLegendMarkerSlots::brushChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "brushChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLEGENDMARKER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLegendMarkerSlots::clicked()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "clicked()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLEGENDMARKER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLegendMarkerSlots::fontChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "fontChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLEGENDMARKER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLegendMarkerSlots::hovered(bool status)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "hovered(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLEGENDMARKER");
    PHB_ITEM pstatus = hb_itemPutL(NULL, status);

    hb_vmEvalBlockV(cb, 2, psender, pstatus);

    hb_itemRelease(psender);
    hb_itemRelease(pstatus);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLegendMarkerSlots::labelBrushChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "labelBrushChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLEGENDMARKER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLegendMarkerSlots::labelChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "labelChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLEGENDMARKER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLegendMarkerSlots::penChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "penChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLEGENDMARKER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
void QLegendMarkerSlots::shapeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "shapeChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLEGENDMARKER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QLegendMarkerSlots::visibleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "visibleChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLEGENDMARKER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

void QLegendMarkerSlots_connect_signal(const QString &signal, const QString &slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegendMarker *obj = (QLegendMarker *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QLegendMarkerSlots *s = QCoreApplication::instance()->findChild<QLegendMarkerSlots *>();

    if (s == NULL)
    {
      s = new QLegendMarkerSlots();
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

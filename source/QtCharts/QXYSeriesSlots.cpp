//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QXYSeriesSlots.hpp"

QXYSeriesSlots::QXYSeriesSlots(QObject *parent) : QObject(parent)
{
}

QXYSeriesSlots::~QXYSeriesSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::clicked(const QPointF &point)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "clicked(QPointF)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM ppoint = Qt5xHb::Signals_return_object((void *)&point, "QPOINTF");

    hb_vmEvalBlockV(cb, 2, psender, ppoint);

    hb_itemRelease(psender);
    hb_itemRelease(ppoint);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::colorChanged(QColor color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "colorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, psender, pcolor);

    hb_itemRelease(psender);
    hb_itemRelease(pcolor);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::doubleClicked(const QPointF &point)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "doubleClicked(QPointF)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM ppoint = Qt5xHb::Signals_return_object((void *)&point, "QPOINTF");

    hb_vmEvalBlockV(cb, 2, psender, ppoint);

    hb_itemRelease(psender);
    hb_itemRelease(ppoint);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::hovered(const QPointF &point, bool state)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "hovered(QPointF,bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM ppoint = Qt5xHb::Signals_return_object((void *)&point, "QPOINTF");
    PHB_ITEM pstate = hb_itemPutL(NULL, state);

    hb_vmEvalBlockV(cb, 3, psender, ppoint, pstate);

    hb_itemRelease(psender);
    hb_itemRelease(ppoint);
    hb_itemRelease(pstate);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::penChanged(const QPen &pen)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "penChanged(QPen)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM ppen = Qt5xHb::Signals_return_object((void *)&pen, "QPEN");

    hb_vmEvalBlockV(cb, 2, psender, ppen);

    hb_itemRelease(psender);
    hb_itemRelease(ppen);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pointAdded(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pointAdded(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pointLabelsClippingChanged(bool clipping)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pointLabelsClippingChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM pclipping = hb_itemPutL(NULL, clipping);

    hb_vmEvalBlockV(cb, 2, psender, pclipping);

    hb_itemRelease(psender);
    hb_itemRelease(pclipping);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pointLabelsColorChanged(const QColor &color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pointLabelsColorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, psender, pcolor);

    hb_itemRelease(psender);
    hb_itemRelease(pcolor);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pointLabelsFontChanged(const QFont &font)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pointLabelsFontChanged(QFont)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM pfont = Qt5xHb::Signals_return_object((void *)&font, "QFONT");

    hb_vmEvalBlockV(cb, 2, psender, pfont);

    hb_itemRelease(psender);
    hb_itemRelease(pfont);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pointLabelsFormatChanged(const QString &format)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pointLabelsFormatChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM pformat = hb_itemPutC(NULL, QSTRINGTOSTRING(format));

    hb_vmEvalBlockV(cb, 2, psender, pformat);

    hb_itemRelease(psender);
    hb_itemRelease(pformat);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pointLabelsVisibilityChanged(bool visible)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pointLabelsVisibilityChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM pvisible = hb_itemPutL(NULL, visible);

    hb_vmEvalBlockV(cb, 2, psender, pvisible);

    hb_itemRelease(psender);
    hb_itemRelease(pvisible);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pointRemoved(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pointRemoved(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pointReplaced(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pointReplaced(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pointsRemoved(int index, int count)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pointsRemoved(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);
    PHB_ITEM pcount = hb_itemPutNI(NULL, count);

    hb_vmEvalBlockV(cb, 3, psender, pindex, pcount);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
    hb_itemRelease(pcount);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pointsReplaced()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pointsReplaced()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::pressed(const QPointF &point)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pressed(QPointF)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM ppoint = Qt5xHb::Signals_return_object((void *)&point, "QPOINTF");

    hb_vmEvalBlockV(cb, 2, psender, ppoint);

    hb_itemRelease(psender);
    hb_itemRelease(ppoint);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QXYSeriesSlots::released(const QPointF &point)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "released(QPointF)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QXYSERIES");
    PHB_ITEM ppoint = Qt5xHb::Signals_return_object((void *)&point, "QPOINTF");

    hb_vmEvalBlockV(cb, 2, psender, ppoint);

    hb_itemRelease(psender);
    hb_itemRelease(ppoint);
  }
}
#endif

void QXYSeriesSlots_connect_signal(const QString &signal, const QString &slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QXYSeries *obj = (QXYSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QXYSeriesSlots *s = QCoreApplication::instance()->findChild<QXYSeriesSlots *>();

    if (s == NULL)
    {
      s = new QXYSeriesSlots();
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

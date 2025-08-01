//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QAbstract3DGraphSlots.hpp"

QAbstract3DGraphSlots::QAbstract3DGraphSlots(QObject *parent) : QObject(parent)
{
}

QAbstract3DGraphSlots::~QAbstract3DGraphSlots()
{
}

void QAbstract3DGraphSlots::activeInputHandlerChanged(QAbstract3DInputHandler *inputHandler)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "activeInputHandlerChanged(QAbstract3DInputHandler*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM pinputHandler = Qt5xHb::Signals_return_qobject(inputHandler, "QABSTRACT3DINPUTHANDLER");

    hb_vmEvalBlockV(cb, 2, psender, pinputHandler);

    hb_itemRelease(psender);
    hb_itemRelease(pinputHandler);
  }
}

void QAbstract3DGraphSlots::activeThemeChanged(Q3DTheme *theme)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "activeThemeChanged(Q3DTheme*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM ptheme = Qt5xHb::Signals_return_qobject(theme, "Q3DTHEME");

    hb_vmEvalBlockV(cb, 2, psender, ptheme);

    hb_itemRelease(psender);
    hb_itemRelease(ptheme);
  }
}

void QAbstract3DGraphSlots::aspectRatioChanged(qreal ratio)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "aspectRatioChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM pratio = hb_itemPutND(NULL, ratio);

    hb_vmEvalBlockV(cb, 2, psender, pratio);

    hb_itemRelease(psender);
    hb_itemRelease(pratio);
  }
}

void QAbstract3DGraphSlots::currentFpsChanged(qreal fps)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "currentFpsChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM pfps = hb_itemPutND(NULL, fps);

    hb_vmEvalBlockV(cb, 2, psender, pfps);

    hb_itemRelease(psender);
    hb_itemRelease(pfps);
  }
}

void QAbstract3DGraphSlots::horizontalAspectRatioChanged(qreal ratio)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "horizontalAspectRatioChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM pratio = hb_itemPutND(NULL, ratio);

    hb_vmEvalBlockV(cb, 2, psender, pratio);

    hb_itemRelease(psender);
    hb_itemRelease(pratio);
  }
}

void QAbstract3DGraphSlots::localeChanged(const QLocale &locale)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "localeChanged(QLocale)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM plocale = Qt5xHb::Signals_return_object((void *)&locale, "QLOCALE");

    hb_vmEvalBlockV(cb, 2, psender, plocale);

    hb_itemRelease(psender);
    hb_itemRelease(plocale);
  }
}

void QAbstract3DGraphSlots::marginChanged(qreal margin)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "marginChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM pmargin = hb_itemPutND(NULL, margin);

    hb_vmEvalBlockV(cb, 2, psender, pmargin);

    hb_itemRelease(psender);
    hb_itemRelease(pmargin);
  }
}

void QAbstract3DGraphSlots::measureFpsChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "measureFpsChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM penabled = hb_itemPutL(NULL, enabled);

    hb_vmEvalBlockV(cb, 2, psender, penabled);

    hb_itemRelease(psender);
    hb_itemRelease(penabled);
  }
}

void QAbstract3DGraphSlots::optimizationHintsChanged(QAbstract3DGraph::OptimizationHints hints)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb =
      Qt5xHb::Signals_return_codeblock(object, "optimizationHintsChanged(QAbstract3DGraph::OptimizationHints)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM phints = hb_itemPutNI(NULL, static_cast<int>(hints));

    hb_vmEvalBlockV(cb, 2, psender, phints);

    hb_itemRelease(psender);
    hb_itemRelease(phints);
  }
}

void QAbstract3DGraphSlots::orthoProjectionChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "orthoProjectionChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM penabled = hb_itemPutL(NULL, enabled);

    hb_vmEvalBlockV(cb, 2, psender, penabled);

    hb_itemRelease(psender);
    hb_itemRelease(penabled);
  }
}

void QAbstract3DGraphSlots::polarChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "polarChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM penabled = hb_itemPutL(NULL, enabled);

    hb_vmEvalBlockV(cb, 2, psender, penabled);

    hb_itemRelease(psender);
    hb_itemRelease(penabled);
  }
}

void QAbstract3DGraphSlots::queriedGraphPositionChanged(const QVector3D &data)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "queriedGraphPositionChanged(QVector3D)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM pdata = Qt5xHb::Signals_return_object((void *)&data, "QVECTOR3D");

    hb_vmEvalBlockV(cb, 2, psender, pdata);

    hb_itemRelease(psender);
    hb_itemRelease(pdata);
  }
}

void QAbstract3DGraphSlots::radialLabelOffsetChanged(float offset)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "radialLabelOffsetChanged(float)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM poffset = hb_itemPutND(NULL, offset);

    hb_vmEvalBlockV(cb, 2, psender, poffset);

    hb_itemRelease(psender);
    hb_itemRelease(poffset);
  }
}

void QAbstract3DGraphSlots::reflectionChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "reflectionChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM penabled = hb_itemPutL(NULL, enabled);

    hb_vmEvalBlockV(cb, 2, psender, penabled);

    hb_itemRelease(psender);
    hb_itemRelease(penabled);
  }
}

void QAbstract3DGraphSlots::reflectivityChanged(qreal reflectivity)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "reflectivityChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM preflectivity = hb_itemPutND(NULL, reflectivity);

    hb_vmEvalBlockV(cb, 2, psender, preflectivity);

    hb_itemRelease(psender);
    hb_itemRelease(preflectivity);
  }
}

void QAbstract3DGraphSlots::selectedElementChanged(QAbstract3DGraph::ElementType type)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectedElementChanged(QAbstract3DGraph::ElementType)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM ptype = hb_itemPutNI(NULL, static_cast<int>(type));

    hb_vmEvalBlockV(cb, 2, psender, ptype);

    hb_itemRelease(psender);
    hb_itemRelease(ptype);
  }
}

void QAbstract3DGraphSlots::selectionModeChanged(QAbstract3DGraph::SelectionFlags mode)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectionModeChanged(QAbstract3DGraph::SelectionFlags)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM pmode = hb_itemPutNI(NULL, static_cast<int>(mode));

    hb_vmEvalBlockV(cb, 2, psender, pmode);

    hb_itemRelease(psender);
    hb_itemRelease(pmode);
  }
}

void QAbstract3DGraphSlots::shadowQualityChanged(QAbstract3DGraph::ShadowQuality quality)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "shadowQualityChanged(QAbstract3DGraph::ShadowQuality)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DGRAPH");
    PHB_ITEM pquality = hb_itemPutNI(NULL, static_cast<int>(quality));

    hb_vmEvalBlockV(cb, 2, psender, pquality);

    hb_itemRelease(psender);
    hb_itemRelease(pquality);
  }
}

void QAbstract3DGraphSlots_connect_signal(const QString &signal, const QString &slot)
{
  QAbstract3DGraph *obj = (QAbstract3DGraph *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QAbstract3DGraphSlots *s = QCoreApplication::instance()->findChild<QAbstract3DGraphSlots *>();

    if (s == NULL)
    {
      s = new QAbstract3DGraphSlots();
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

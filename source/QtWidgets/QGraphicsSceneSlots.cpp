//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QGraphicsSceneSlots.hpp"

QGraphicsSceneSlots::QGraphicsSceneSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsSceneSlots::~QGraphicsSceneSlots()
{
}

void QGraphicsSceneSlots::changed(const QList<QRectF> &region)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "changed(QList<QRectF>)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSSCENE");
    PHB_DYNS pDynSym = hb_dynsymFindName("QRECTF");
    PHB_ITEM pregion = hb_itemArrayNew(0);
    if (pDynSym != NULL)
    {
      for (int i = 0; i < region.count(); i++)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy(pTempObject, hb_stackReturnItem());
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QRectF(region[i]));
        hb_objSendMsg(pTempObject, "NEWFROMPOINTER", 1, pTempItem);
        hb_arrayAddForward(pregion, pTempObject);
        hb_itemRelease(pTempObject);
        hb_itemRelease(pTempItem);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QRECTF", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV(cb, 2, psender, pregion);

    hb_itemRelease(psender);
    hb_itemRelease(pregion);
  }
}

void QGraphicsSceneSlots::sceneRectChanged(const QRectF &rect)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "sceneRectChanged(QRectF)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSSCENE");
    PHB_ITEM prect = Qt5xHb::Signals_return_object((void *)&rect, "QRECTF");

    hb_vmEvalBlockV(cb, 2, psender, prect);

    hb_itemRelease(psender);
    hb_itemRelease(prect);
  }
}

void QGraphicsSceneSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectionChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSSCENE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGraphicsSceneSlots_connect_signal(const QString &signal, const QString &slot)
{
  QGraphicsScene *obj = (QGraphicsScene *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QGraphicsSceneSlots *s = QCoreApplication::instance()->findChild<QGraphicsSceneSlots *>();

    if (s == NULL)
    {
      s = new QGraphicsSceneSlots();
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

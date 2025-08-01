//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QUndoGroupSlots.hpp"

QUndoGroupSlots::QUndoGroupSlots(QObject *parent) : QObject(parent)
{
}

QUndoGroupSlots::~QUndoGroupSlots()
{
}

void QUndoGroupSlots::activeStackChanged(QUndoStack *stack)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "activeStackChanged(QUndoStack*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pstack = Qt5xHb::Signals_return_qobject(stack, "QUNDOSTACK");

    hb_vmEvalBlockV(cb, 2, psender, pstack);

    hb_itemRelease(psender);
    hb_itemRelease(pstack);
  }
}

void QUndoGroupSlots::canRedoChanged(bool canRedo)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "canRedoChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pcanRedo = hb_itemPutL(NULL, canRedo);

    hb_vmEvalBlockV(cb, 2, psender, pcanRedo);

    hb_itemRelease(psender);
    hb_itemRelease(pcanRedo);
  }
}

void QUndoGroupSlots::canUndoChanged(bool canUndo)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "canUndoChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pcanUndo = hb_itemPutL(NULL, canUndo);

    hb_vmEvalBlockV(cb, 2, psender, pcanUndo);

    hb_itemRelease(psender);
    hb_itemRelease(pcanUndo);
  }
}

void QUndoGroupSlots::cleanChanged(bool clean)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "cleanChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pclean = hb_itemPutL(NULL, clean);

    hb_vmEvalBlockV(cb, 2, psender, pclean);

    hb_itemRelease(psender);
    hb_itemRelease(pclean);
  }
}

void QUndoGroupSlots::indexChanged(int idx)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "indexChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pidx = hb_itemPutNI(NULL, idx);

    hb_vmEvalBlockV(cb, 2, psender, pidx);

    hb_itemRelease(psender);
    hb_itemRelease(pidx);
  }
}

void QUndoGroupSlots::redoTextChanged(const QString &redoText)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "redoTextChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM predoText = hb_itemPutC(NULL, QSTRINGTOSTRING(redoText));

    hb_vmEvalBlockV(cb, 2, psender, predoText);

    hb_itemRelease(psender);
    hb_itemRelease(predoText);
  }
}

void QUndoGroupSlots::undoTextChanged(const QString &undoText)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "undoTextChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pundoText = hb_itemPutC(NULL, QSTRINGTOSTRING(undoText));

    hb_vmEvalBlockV(cb, 2, psender, pundoText);

    hb_itemRelease(psender);
    hb_itemRelease(pundoText);
  }
}

void QUndoGroupSlots_connect_signal(const QString &signal, const QString &slot)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QUndoGroupSlots *s = QCoreApplication::instance()->findChild<QUndoGroupSlots *>();

    if (s == NULL)
    {
      s = new QUndoGroupSlots();
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

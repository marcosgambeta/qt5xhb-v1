/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractTextDocumentLayoutSlots.hpp"

QAbstractTextDocumentLayoutSlots::QAbstractTextDocumentLayoutSlots(QObject *parent) : QObject(parent)
{
}

QAbstractTextDocumentLayoutSlots::~QAbstractTextDocumentLayoutSlots()
{
}

void QAbstractTextDocumentLayoutSlots::documentSizeChanged(const QSizeF &newSize)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "documentSizeChanged(QSizeF)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTTEXTDOCUMENTLAYOUT");
    PHB_ITEM pnewSize = Qt5xHb::Signals_return_object((void *)&newSize, "QSIZEF");

    hb_vmEvalBlockV(cb, 2, psender, pnewSize);

    hb_itemRelease(psender);
    hb_itemRelease(pnewSize);
  }
}

void QAbstractTextDocumentLayoutSlots::pageCountChanged(int newPages)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pageCountChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTTEXTDOCUMENTLAYOUT");
    PHB_ITEM pnewPages = hb_itemPutNI(NULL, newPages);

    hb_vmEvalBlockV(cb, 2, psender, pnewPages);

    hb_itemRelease(psender);
    hb_itemRelease(pnewPages);
  }
}

void QAbstractTextDocumentLayoutSlots::update(const QRectF &rect)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "update(QRectF)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTTEXTDOCUMENTLAYOUT");
    PHB_ITEM prect = Qt5xHb::Signals_return_object((void *)&rect, "QRECTF");

    hb_vmEvalBlockV(cb, 2, psender, prect);

    hb_itemRelease(psender);
    hb_itemRelease(prect);
  }
}

void QAbstractTextDocumentLayoutSlots::updateBlock(const QTextBlock &block)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "updateBlock(QTextBlock)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTTEXTDOCUMENTLAYOUT");
    PHB_ITEM pblock = Qt5xHb::Signals_return_object((void *)&block, "QTEXTBLOCK");

    hb_vmEvalBlockV(cb, 2, psender, pblock);

    hb_itemRelease(psender);
    hb_itemRelease(pblock);
  }
}

void QAbstractTextDocumentLayoutSlots_connect_signal(const QString &signal, const QString &slot)
{
  QAbstractTextDocumentLayout *obj = (QAbstractTextDocumentLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QAbstractTextDocumentLayoutSlots *s = QCoreApplication::instance()->findChild<QAbstractTextDocumentLayoutSlots *>();

    if (s == NULL)
    {
      s = new QAbstractTextDocumentLayoutSlots();
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

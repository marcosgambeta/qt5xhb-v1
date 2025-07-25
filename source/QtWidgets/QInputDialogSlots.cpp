//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QInputDialogSlots.hpp"

QInputDialogSlots::QInputDialogSlots(QObject *parent) : QObject(parent)
{
}

QInputDialogSlots::~QInputDialogSlots()
{
}

void QInputDialogSlots::doubleValueChanged(double value)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "doubleValueChanged(double)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QINPUTDIALOG");
    PHB_ITEM pvalue = hb_itemPutND(NULL, value);

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease(pvalue);
  }
}

void QInputDialogSlots::doubleValueSelected(double value)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "doubleValueSelected(double)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QINPUTDIALOG");
    PHB_ITEM pvalue = hb_itemPutND(NULL, value);

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease(pvalue);
  }
}

void QInputDialogSlots::intValueChanged(int value)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "intValueChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QINPUTDIALOG");
    PHB_ITEM pvalue = hb_itemPutNI(NULL, value);

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease(pvalue);
  }
}

void QInputDialogSlots::intValueSelected(int value)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "intValueSelected(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QINPUTDIALOG");
    PHB_ITEM pvalue = hb_itemPutNI(NULL, value);

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease(pvalue);
  }
}

void QInputDialogSlots::textValueChanged(const QString &text)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "textValueChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QINPUTDIALOG");
    PHB_ITEM ptext = hb_itemPutC(NULL, QSTRINGTOSTRING(text));

    hb_vmEvalBlockV(cb, 2, psender, ptext);

    hb_itemRelease(psender);
    hb_itemRelease(ptext);
  }
}

void QInputDialogSlots::textValueSelected(const QString &text)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "textValueSelected(QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QINPUTDIALOG");
    PHB_ITEM ptext = hb_itemPutC(NULL, QSTRINGTOSTRING(text));

    hb_vmEvalBlockV(cb, 2, psender, ptext);

    hb_itemRelease(psender);
    hb_itemRelease(ptext);
  }
}

void QInputDialogSlots_connect_signal(const QString &signal, const QString &slot)
{
  QInputDialog *obj = (QInputDialog *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QInputDialogSlots *s = QCoreApplication::instance()->findChild<QInputDialogSlots *>();

    if (s == NULL)
    {
      s = new QInputDialogSlots();
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

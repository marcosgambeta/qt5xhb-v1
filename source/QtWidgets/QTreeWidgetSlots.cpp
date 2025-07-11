//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QTreeWidgetSlots.hpp"

QTreeWidgetSlots::QTreeWidgetSlots(QObject *parent) : QObject(parent)
{
}

QTreeWidgetSlots::~QTreeWidgetSlots()
{
}

void QTreeWidgetSlots::currentItemChanged(QTreeWidgetItem *current, QTreeWidgetItem *previous)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pcurrent = Qt5xHb::Signals_return_object((void *)current, "QTREEWIDGETITEM");
    PHB_ITEM pprevious = Qt5xHb::Signals_return_object((void *)previous, "QTREEWIDGETITEM");

    hb_vmEvalBlockV(cb, 3, psender, pcurrent, pprevious);

    hb_itemRelease(psender);
    hb_itemRelease(pcurrent);
    hb_itemRelease(pprevious);
  }
}

void QTreeWidgetSlots::itemActivated(QTreeWidgetItem *item, int column)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "itemActivated(QTreeWidgetItem*,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pitem = Qt5xHb::Signals_return_object((void *)item, "QTREEWIDGETITEM");
    PHB_ITEM pcolumn = hb_itemPutNI(NULL, column);

    hb_vmEvalBlockV(cb, 3, psender, pitem, pcolumn);

    hb_itemRelease(psender);
    hb_itemRelease(pitem);
    hb_itemRelease(pcolumn);
  }
}

void QTreeWidgetSlots::itemChanged(QTreeWidgetItem *item, int column)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "itemChanged(QTreeWidgetItem*,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pitem = Qt5xHb::Signals_return_object((void *)item, "QTREEWIDGETITEM");
    PHB_ITEM pcolumn = hb_itemPutNI(NULL, column);

    hb_vmEvalBlockV(cb, 3, psender, pitem, pcolumn);

    hb_itemRelease(psender);
    hb_itemRelease(pitem);
    hb_itemRelease(pcolumn);
  }
}

void QTreeWidgetSlots::itemClicked(QTreeWidgetItem *item, int column)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "itemClicked(QTreeWidgetItem*,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pitem = Qt5xHb::Signals_return_object((void *)item, "QTREEWIDGETITEM");
    PHB_ITEM pcolumn = hb_itemPutNI(NULL, column);

    hb_vmEvalBlockV(cb, 3, psender, pitem, pcolumn);

    hb_itemRelease(psender);
    hb_itemRelease(pitem);
    hb_itemRelease(pcolumn);
  }
}

void QTreeWidgetSlots::itemCollapsed(QTreeWidgetItem *item)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "itemCollapsed(QTreeWidgetItem*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pitem = Qt5xHb::Signals_return_object((void *)item, "QTREEWIDGETITEM");

    hb_vmEvalBlockV(cb, 2, psender, pitem);

    hb_itemRelease(psender);
    hb_itemRelease(pitem);
  }
}

void QTreeWidgetSlots::itemDoubleClicked(QTreeWidgetItem *item, int column)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "itemDoubleClicked(QTreeWidgetItem*,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pitem = Qt5xHb::Signals_return_object((void *)item, "QTREEWIDGETITEM");
    PHB_ITEM pcolumn = hb_itemPutNI(NULL, column);

    hb_vmEvalBlockV(cb, 3, psender, pitem, pcolumn);

    hb_itemRelease(psender);
    hb_itemRelease(pitem);
    hb_itemRelease(pcolumn);
  }
}

void QTreeWidgetSlots::itemEntered(QTreeWidgetItem *item, int column)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "itemEntered(QTreeWidgetItem*,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pitem = Qt5xHb::Signals_return_object((void *)item, "QTREEWIDGETITEM");
    PHB_ITEM pcolumn = hb_itemPutNI(NULL, column);

    hb_vmEvalBlockV(cb, 3, psender, pitem, pcolumn);

    hb_itemRelease(psender);
    hb_itemRelease(pitem);
    hb_itemRelease(pcolumn);
  }
}

void QTreeWidgetSlots::itemExpanded(QTreeWidgetItem *item)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "itemExpanded(QTreeWidgetItem*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pitem = Qt5xHb::Signals_return_object((void *)item, "QTREEWIDGETITEM");

    hb_vmEvalBlockV(cb, 2, psender, pitem);

    hb_itemRelease(psender);
    hb_itemRelease(pitem);
  }
}

void QTreeWidgetSlots::itemPressed(QTreeWidgetItem *item, int column)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "itemPressed(QTreeWidgetItem*,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pitem = Qt5xHb::Signals_return_object((void *)item, "QTREEWIDGETITEM");
    PHB_ITEM pcolumn = hb_itemPutNI(NULL, column);

    hb_vmEvalBlockV(cb, 3, psender, pitem, pcolumn);

    hb_itemRelease(psender);
    hb_itemRelease(pitem);
    hb_itemRelease(pcolumn);
  }
}

void QTreeWidgetSlots::itemSelectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "itemSelectionChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTREEWIDGET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QTreeWidgetSlots_connect_signal(const QString &signal, const QString &slot)
{
  QTreeWidget *obj = (QTreeWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QTreeWidgetSlots *s = QCoreApplication::instance()->findChild<QTreeWidgetSlots *>();

    if (s == NULL)
    {
      s = new QTreeWidgetSlots();
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

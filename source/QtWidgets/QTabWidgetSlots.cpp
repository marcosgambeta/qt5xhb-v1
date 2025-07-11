//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QTabWidgetSlots.hpp"

QTabWidgetSlots::QTabWidgetSlots(QObject *parent) : QObject(parent)
{
}

QTabWidgetSlots::~QTabWidgetSlots()
{
}

void QTabWidgetSlots::currentChanged(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "currentChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTABWIDGET");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}

void QTabWidgetSlots::tabCloseRequested(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "tabCloseRequested(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTABWIDGET");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
void QTabWidgetSlots::tabBarClicked(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "tabBarClicked(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTABWIDGET");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
void QTabWidgetSlots::tabBarDoubleClicked(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "tabBarDoubleClicked(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTABWIDGET");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}
#endif

void QTabWidgetSlots_connect_signal(const QString &signal, const QString &slot)
{
  QTabWidget *obj = (QTabWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QTabWidgetSlots *s = QCoreApplication::instance()->findChild<QTabWidgetSlots *>();

    if (s == NULL)
    {
      s = new QTabWidgetSlots();
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

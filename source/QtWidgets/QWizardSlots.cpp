//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QWizardSlots.hpp"

QWizardSlots::QWizardSlots(QObject *parent) : QObject(parent)
{
}

QWizardSlots::~QWizardSlots()
{
}

void QWizardSlots::currentIdChanged(int id)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "currentIdChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWIZARD");
    PHB_ITEM pid = hb_itemPutNI(NULL, id);

    hb_vmEvalBlockV(cb, 2, psender, pid);

    hb_itemRelease(psender);
    hb_itemRelease(pid);
  }
}

void QWizardSlots::customButtonClicked(int which)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "customButtonClicked(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWIZARD");
    PHB_ITEM pwhich = hb_itemPutNI(NULL, which);

    hb_vmEvalBlockV(cb, 2, psender, pwhich);

    hb_itemRelease(psender);
    hb_itemRelease(pwhich);
  }
}

void QWizardSlots::helpRequested()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "helpRequested()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWIZARD");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QWizardSlots::pageAdded(int id)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pageAdded(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWIZARD");
    PHB_ITEM pid = hb_itemPutNI(NULL, id);

    hb_vmEvalBlockV(cb, 2, psender, pid);

    hb_itemRelease(psender);
    hb_itemRelease(pid);
  }
}

void QWizardSlots::pageRemoved(int id)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pageRemoved(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWIZARD");
    PHB_ITEM pid = hb_itemPutNI(NULL, id);

    hb_vmEvalBlockV(cb, 2, psender, pid);

    hb_itemRelease(psender);
    hb_itemRelease(pid);
  }
}

void QWizardSlots_connect_signal(const QString &signal, const QString &slot)
{
  QWizard *obj = (QWizard *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QWizardSlots *s = QCoreApplication::instance()->findChild<QWizardSlots *>();

    if (s == NULL)
    {
      s = new QWizardSlots();
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

//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QDeclarativePropertyMapSlots.hpp"

QDeclarativePropertyMapSlots::QDeclarativePropertyMapSlots(QObject *parent) : QObject(parent)
{
}

QDeclarativePropertyMapSlots::~QDeclarativePropertyMapSlots()
{
}

void QDeclarativePropertyMapSlots::valueChanged(const QString &key, const QVariant &value)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "valueChanged(QString,QVariant)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDECLARATIVEPROPERTYMAP");
    PHB_ITEM pkey = hb_itemPutC(NULL, QSTRINGTOSTRING(key));
    PHB_ITEM pvalue = Qt5xHb::Signals_return_object((void *)&value, "QVARIANT");

    hb_vmEvalBlockV(cb, 3, psender, pkey, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease(pkey);
    hb_itemRelease(pvalue);
  }
}

void QDeclarativePropertyMapSlots_connect_signal(const QString &signal, const QString &slot)
{
  QDeclarativePropertyMap *obj = (QDeclarativePropertyMap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QDeclarativePropertyMapSlots *s = QCoreApplication::instance()->findChild<QDeclarativePropertyMapSlots *>();

    if (s == NULL)
    {
      s = new QDeclarativePropertyMapSlots();
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

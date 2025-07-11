//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QDesignerPropertyEditorInterfaceSlots.hpp"

QDesignerPropertyEditorInterfaceSlots::QDesignerPropertyEditorInterfaceSlots(QObject *parent) : QObject(parent)
{
}

QDesignerPropertyEditorInterfaceSlots::~QDesignerPropertyEditorInterfaceSlots()
{
}

void QDesignerPropertyEditorInterfaceSlots::propertyChanged(const QString &name, const QVariant &value)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "propertyChanged(QString,QVariant)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDESIGNERPROPERTYEDITORINTERFACE");
    PHB_ITEM pname = hb_itemPutC(NULL, QSTRINGTOSTRING(name));
    PHB_ITEM pvalue = Qt5xHb::Signals_return_object((void *)&value, "QVARIANT");

    hb_vmEvalBlockV(cb, 3, psender, pname, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease(pname);
    hb_itemRelease(pvalue);
  }
}

void QDesignerPropertyEditorInterfaceSlots_connect_signal(const QString &signal, const QString &slot)
{
  QDesignerPropertyEditorInterface *obj = (QDesignerPropertyEditorInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QDesignerPropertyEditorInterfaceSlots *s =
        QCoreApplication::instance()->findChild<QDesignerPropertyEditorInterfaceSlots *>();

    if (s == NULL)
    {
      s = new QDesignerPropertyEditorInterfaceSlots();
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

//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QScriptEngineSlots.hpp"

QScriptEngineSlots::QScriptEngineSlots(QObject *parent) : QObject(parent)
{
}

QScriptEngineSlots::~QScriptEngineSlots()
{
}

void QScriptEngineSlots::signalHandlerException(const QScriptValue &exception)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "signalHandlerException(QScriptValue)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSCRIPTENGINE");
    PHB_ITEM pexception = Qt5xHb::Signals_return_object((void *)&exception, "QSCRIPTVALUE");

    hb_vmEvalBlockV(cb, 2, psender, pexception);

    hb_itemRelease(psender);
    hb_itemRelease(pexception);
  }
}

void QScriptEngineSlots_connect_signal(const QString &signal, const QString &slot)
{
  QScriptEngine *obj = (QScriptEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QScriptEngineSlots *s = QCoreApplication::instance()->findChild<QScriptEngineSlots *>();

    if (s == NULL)
    {
      s = new QScriptEngineSlots();
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

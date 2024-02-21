/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractAudioInputSlots.hpp"

QAbstractAudioInputSlots::QAbstractAudioInputSlots(QObject *parent) : QObject(parent)
{
}

QAbstractAudioInputSlots::~QAbstractAudioInputSlots()
{
}

void QAbstractAudioInputSlots::errorChanged(QAudio::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "errorChanged(QAudio::Error)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTAUDIOINPUT");
    PHB_ITEM perror = hb_itemPutNI(NULL, static_cast<int>(error));

    hb_vmEvalBlockV(cb, 2, psender, perror);

    hb_itemRelease(psender);
    hb_itemRelease(perror);
  }
}

void QAbstractAudioInputSlots::stateChanged(QAudio::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stateChanged(QAudio::State)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTAUDIOINPUT");
    PHB_ITEM pstate = hb_itemPutNI(NULL, static_cast<int>(state));

    hb_vmEvalBlockV(cb, 2, psender, pstate);

    hb_itemRelease(psender);
    hb_itemRelease(pstate);
  }
}

void QAbstractAudioInputSlots::notify()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "notify()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTAUDIOINPUT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAbstractAudioInputSlots_connect_signal(const QString &signal, const QString &slot)
{
  QAbstractAudioInput *obj = (QAbstractAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QAbstractAudioInputSlots *s = QCoreApplication::instance()->findChild<QAbstractAudioInputSlots *>();

    if (s == NULL)
    {
      s = new QAbstractAudioInputSlots();
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

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSoundEffectSlots.hpp"

QSoundEffectSlots::QSoundEffectSlots(QObject *parent) : QObject(parent)
{
}

QSoundEffectSlots::~QSoundEffectSlots()
{
}

void QSoundEffectSlots::sourceChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "sourceChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSOUNDEFFECT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QSoundEffectSlots::loopCountChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "loopCountChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSOUNDEFFECT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QSoundEffectSlots::loopsRemainingChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "loopsRemainingChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSOUNDEFFECT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QSoundEffectSlots::volumeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "volumeChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSOUNDEFFECT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QSoundEffectSlots::mutedChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "mutedChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSOUNDEFFECT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QSoundEffectSlots::loadedChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "loadedChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSOUNDEFFECT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QSoundEffectSlots::playingChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "playingChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSOUNDEFFECT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QSoundEffectSlots::statusChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "statusChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSOUNDEFFECT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QSoundEffectSlots::categoryChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "categoryChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSOUNDEFFECT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QSoundEffectSlots_connect_signal(const QString &signal, const QString &slot)
{
  QSoundEffect *obj = (QSoundEffect *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QSoundEffectSlots *s = QCoreApplication::instance()->findChild<QSoundEffectSlots *>();

    if (s == NULL)
    {
      s = new QSoundEffectSlots();
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

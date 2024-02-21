/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWebChannelSlots.hpp"

QWebChannelSlots::QWebChannelSlots(QObject *parent) : QObject(parent)
{
}

QWebChannelSlots::~QWebChannelSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
void QWebChannelSlots::blockUpdatesChanged(bool block)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "blockUpdatesChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBCHANNEL");
    PHB_ITEM pblock = hb_itemPutL(NULL, block);

    hb_vmEvalBlockV(cb, 2, psender, pblock);

    hb_itemRelease(psender);
    hb_itemRelease(pblock);
  }
}
#endif

void QWebChannelSlots_connect_signal(const QString &signal, const QString &slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QWebChannel *obj = (QWebChannel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QWebChannelSlots *s = QCoreApplication::instance()->findChild<QWebChannelSlots *>();

    if (s == NULL)
    {
      s = new QWebChannelSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

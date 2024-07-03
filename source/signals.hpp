//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#ifndef SIGNALS_H
#define SIGNALS_H

#include <QtCore/QObject>
#include <QtCore/QMetaObject>
#include <QtCore/QMetaMethod>
#include <QtCore/QVector>
#include <QtCore/QList>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtCore/QMutex>

#include <hbapi.h>
#include <hbapiitm.h>
#include <hbapierr.h>
#include <hbvm.h>
#include <hbstack.h>
#ifndef __XHARBOUR__
#include <hbapicls.h>
#endif

namespace Qt5xHb
{
bool Signals_connect_signal(QObject *object, const QString &signal, PHB_ITEM codeblock);
bool Signals_disconnect_signal(QObject *object, const QString &signal);
bool Signals_is_signal_connected(QObject *object, const QString &signal);
PHB_ITEM Signals_return_codeblock(QObject *object, const QString &signal);
void Signals_disconnect_all_signals(QObject *obj, bool children);
bool Signals_connection_disconnection(QObject *s, const QString &signal, const QString &slot);
PHB_ITEM Signals_return_object(void *ptr, const char *classname);
PHB_ITEM Signals_return_qobject(QObject *ptr, const char *classname);
} // namespace Qt5xHb

class Signals : public QObject
{
public:
  Signals(QObject *parent = 0);
  ~Signals();

  QVector<QObject *> *m_list1; // armazena ponteiro do objeto
  QVector<QString> *m_list2;   // armazena assinatura do sinal
  QVector<PHB_ITEM> *m_list3;  // armazena codeblock
  QMutex *m_mutex;

  bool connectSignal(QObject *object, const QString &signal, PHB_ITEM codeblock);
  bool disconnectSignal(QObject *object, const QString &signal);
  bool isSignalConnected(QObject *object, const QString &signal);
  PHB_ITEM returnCodeblock(QObject *object, const QString &signal);
  void disconnectAllSignals(QObject *obj, bool children);
  bool connectionDisconnection(QObject *s, const QString &signal, const QString &slot);
  PHB_ITEM returnObject(void *ptr, const char *classname);
  PHB_ITEM returnQObject(QObject *ptr, const char *classname);
  int size();
  int active();
};

#endif

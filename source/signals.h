/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SIGNALS_H
#define SIGNALS_H

#include <QObject>
#include <QMetaObject>
#include <QMetaMethod>
#include <QVector>
#include <QList>
#include <QCoreApplication>
#include <QString>
#include <QMutex>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected ( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
//void Signals_disconnect_all_signals (QObject * obj);
void Signals_disconnect_all_signals (QObject * obj, bool children);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );
PHB_ITEM Signals_return_object ( void * ptr, const char * classname );
PHB_ITEM Signals_return_qobject ( QObject * ptr, const char * classname );

class Signals: public QObject
{

  public:
  Signals(QObject *parent = 0);
  ~Signals();
  QVector<QObject*> list1; // armazena ponteiro do objeto
  QVector<QString> list2;  // armazena assinatura do sinal
  QVector<PHB_ITEM> list3; // armazena codeblock
  QVector<bool> list4;     // ativo (true) ou liberado (false)
  QMutex * mutex;
};

#endif

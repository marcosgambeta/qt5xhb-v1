/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SIGNALS_H
#define SIGNALS_H

#include <QObject>
#include <QMetaObject>
#include <QMetaMethod>
#include <QList>
#include <QCoreApplication>
#include <QString>

#include "hbapi.h"
#include "hbapiitm.h"
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

class Signals: public QObject
{

  public:
  Signals(QObject *parent = 0);
  ~Signals();
  QList<QObject*> list1; // armazena ponteiro do objeto
  QList<QString> list2;  // armazena assinatura do sinal
  QList<PHB_ITEM> list3; // armazena codeblock
  QList<bool> list4;     // ativo (true) ou liberado (false)

};

#endif

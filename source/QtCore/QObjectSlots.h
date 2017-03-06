/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQOBJECT_H
#define SLOTSQOBJECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QObject>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQObject(QObject *parent = 0);
  ~SlotsQObject();
  public slots:
  void destroyed ( QObject * obj = 0 );
  void objectNameChanged(const QString & objectName);
};

#endif // SLOTSQOBJECT_H

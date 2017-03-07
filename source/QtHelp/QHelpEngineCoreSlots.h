/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQHELPENGINECORE_H
#define SLOTSQHELPENGINECORE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpEngineCore>

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

class SlotsQHelpEngineCore: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpEngineCore(QObject *parent = 0);
  ~SlotsQHelpEngineCore();
  public slots:
  void currentFilterChanged ( const QString & newFilter );
  void setupFinished ();
  void setupStarted ();
  void warning ( const QString & msg );
};

#endif // SLOTSQHELPENGINECORE_H

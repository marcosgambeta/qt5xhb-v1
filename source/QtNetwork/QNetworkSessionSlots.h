/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQNETWORKSESSION_H
#define SLOTSQNETWORKSESSION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QNetworkSession>

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

class SlotsQNetworkSession: public QObject
{
  Q_OBJECT
  public:
  SlotsQNetworkSession(QObject *parent = 0);
  ~SlotsQNetworkSession();
  public slots:
  void closed ();
  void error ( QNetworkSession::SessionError error );
  void newConfigurationActivated ();
  void opened ();
  void preferredConfigurationChanged ( const QNetworkConfiguration & config, bool isSeamless );
  void stateChanged ( QNetworkSession::State state );
};

#endif // SLOTSQNETWORKSESSION_H

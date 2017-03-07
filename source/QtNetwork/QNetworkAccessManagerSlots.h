/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQNETWORKACCESSMANAGER_H
#define SLOTSQNETWORKACCESSMANAGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QNetworkAccessManager>

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

class SlotsQNetworkAccessManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQNetworkAccessManager(QObject *parent = 0);
  ~SlotsQNetworkAccessManager();
  public slots:
  void authenticationRequired ( QNetworkReply * reply, QAuthenticator * authenticator );
  void finished ( QNetworkReply * reply );
  void networkAccessibleChanged ( QNetworkAccessManager::NetworkAccessibility accessible );
  void proxyAuthenticationRequired ( const QNetworkProxy & proxy, QAuthenticator * authenticator );
};

#endif // SLOTSQNETWORKACCESSMANAGER_H

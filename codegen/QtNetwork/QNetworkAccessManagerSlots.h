/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQNETWORKACCESSMANAGER_H
#define SLOTSQNETWORKACCESSMANAGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QNetworkAccessManager>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGEOROUTINGMANAGER_H
#define SLOTSQGEOROUTINGMANAGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRoutingManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQGeoRoutingManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoRoutingManager(QObject *parent = 0);
  ~SlotsQGeoRoutingManager();
  public slots:
  void finished(QGeoRouteReply *reply);
  void error(QGeoRouteReply *reply, QGeoRouteReply::Error error, QString errorString = QString());
};

#endif // SLOTSQGEOROUTINGMANAGER_H

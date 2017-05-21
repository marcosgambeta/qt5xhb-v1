/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGEOCODINGMANAGERENGINE_H
#define SLOTSQGEOCODINGMANAGERENGINE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoCodingManagerEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGeoCodingManagerEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoCodingManagerEngine(QObject *parent = 0);
  ~SlotsQGeoCodingManagerEngine();
  public slots:
  void finished(QGeoCodeReply *reply);
  void error(QGeoCodeReply *reply, QGeoCodeReply::Error error, QString errorString = QString());
};

#endif // SLOTSQGEOCODINGMANAGERENGINE_H

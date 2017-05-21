/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGEOCODEREPLY_H
#define SLOTSQGEOCODEREPLY_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoCodeReply>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGeoCodeReply: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoCodeReply(QObject *parent = 0);
  ~SlotsQGeoCodeReply();
  public slots:
  void finished();
  void error(QGeoCodeReply::Error error, const QString &errorString = QString());
};

#endif // SLOTSQGEOCODEREPLY_H

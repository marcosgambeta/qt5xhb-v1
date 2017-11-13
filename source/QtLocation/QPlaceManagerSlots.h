/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQPLACEMANAGER_H
#define SLOTSQPLACEMANAGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQPlaceManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQPlaceManager(QObject *parent = 0);
  ~SlotsQPlaceManager();
  public slots:
  void finished(QPlaceReply *reply);
  void error(QPlaceReply * reply, QPlaceReply::Error error, const QString &errorString = QString());
  void placeAdded(const QString &placeId);
  void placeUpdated(const QString &placeId);
  void placeRemoved(const QString &placeId);
  void categoryAdded(const QPlaceCategory &category, const QString &parentId);
  void categoryUpdated(const QPlaceCategory &category, const QString &parentId);
  void categoryRemoved(const QString &categoryId, const QString &parentId);
  void dataChanged();
};

#endif // SLOTSQPLACEMANAGER_H

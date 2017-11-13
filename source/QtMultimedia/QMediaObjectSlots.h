/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIAOBJECT_H
#define SLOTSQMEDIAOBJECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaObject>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaObject(QObject *parent = 0);
  ~SlotsQMediaObject();
  public slots:
  void availabilityChanged(bool available);
  void availabilityChanged(QMultimedia::AvailabilityStatus availability);
  void metaDataAvailableChanged(bool available);
  void metaDataChanged();
  void metaDataChanged(const QString & key, const QVariant & value);
  void notifyIntervalChanged(int milliseconds);
};

#endif // SLOTSQMEDIAOBJECT_H

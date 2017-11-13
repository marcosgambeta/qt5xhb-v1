/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIASTREAMSCONTROL_H
#define SLOTSQMEDIASTREAMSCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaStreamsControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaStreamsControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaStreamsControl(QObject *parent = 0);
  ~SlotsQMediaStreamsControl();
  public slots:
  void activeStreamsChanged();
  void streamsChanged();
};

#endif // SLOTSQMEDIASTREAMSCONTROL_H

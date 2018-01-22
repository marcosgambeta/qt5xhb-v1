/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQRADIODATA_H
#define SLOTSQRADIODATA_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QRadioData>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQRadioData: public QObject
{
  Q_OBJECT
  public:
  SlotsQRadioData(QObject *parent = 0);
  ~SlotsQRadioData();
  public slots:
  void stationIdChanged(QString stationId);
  void programTypeChanged(QRadioData::ProgramType programType);
  void programTypeNameChanged(QString programTypeName);
  void stationNameChanged(QString stationName);
  void radioTextChanged(QString radioText);
  void alternativeFrequenciesEnabledChanged(bool enabled);
  void error(QRadioData::Error error);
};

#endif // SLOTSQRADIODATA_H

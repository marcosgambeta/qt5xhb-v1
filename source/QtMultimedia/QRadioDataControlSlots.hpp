/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QRADIODATACONTROLSLOTS_H
#define QRADIODATACONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QRadioDataControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QRadioDataControlSlots : public QObject
{
  Q_OBJECT
public:
  QRadioDataControlSlots(QObject *parent = 0);
  ~QRadioDataControlSlots();
public slots:
  void stationIdChanged(QString stationId);
  void programTypeChanged(QRadioData::ProgramType programType);
  void programTypeNameChanged(QString programTypeName);
  void stationNameChanged(QString stationName);
  void radioTextChanged(QString radioText);
  void alternativeFrequenciesEnabledChanged(bool enabled);
  void error(QRadioData::Error err);
};

#endif /* QRADIODATACONTROLSLOTS_H */

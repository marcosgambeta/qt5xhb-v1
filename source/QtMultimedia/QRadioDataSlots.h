/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QRADIODATASLOTS_H
#define QRADIODATASLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QRadioData>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QRadioDataSlots: public QObject
{
  Q_OBJECT
  public:
  QRadioDataSlots(QObject *parent = 0);
  ~QRadioDataSlots();
  public slots:
  void stationIdChanged( QString stationId );
  void programTypeChanged( QRadioData::ProgramType programType );
  void programTypeNameChanged( QString programTypeName );
  void stationNameChanged( QString stationName );
  void radioTextChanged( QString radioText );
  void alternativeFrequenciesEnabledChanged( bool enabled );
  void error( QRadioData::Error error );
};

#endif /* QRADIODATASLOTS_H */

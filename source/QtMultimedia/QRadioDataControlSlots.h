/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQRADIODATACONTROL_H
#define SLOTSQRADIODATACONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QRadioDataControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQRadioDataControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQRadioDataControl(QObject *parent = 0);
  ~SlotsQRadioDataControl();
  public slots:
  void stationIdChanged(QString stationId);
  void programTypeChanged(QRadioData::ProgramType programType);
  void programTypeNameChanged(QString programTypeName);
  void stationNameChanged(QString stationName);
  void radioTextChanged(QString radioText);
  void alternativeFrequenciesEnabledChanged(bool enabled);
  void error(QRadioData::Error err);
};

#endif // SLOTSQRADIODATACONTROL_H

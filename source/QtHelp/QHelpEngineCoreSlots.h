/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQHELPENGINECORE_H
#define SLOTSQHELPENGINECORE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpEngineCore>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHelpEngineCore: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpEngineCore(QObject *parent = 0);
  ~SlotsQHelpEngineCore();
  public slots:
  void currentFilterChanged ( const QString & newFilter );
  void setupFinished ();
  void setupStarted ();
  void warning ( const QString & msg );
};

#endif // SLOTSQHELPENGINECORE_H

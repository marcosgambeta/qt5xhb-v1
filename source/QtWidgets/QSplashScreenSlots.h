/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSPLASHSCREEN_H
#define SLOTSQSPLASHSCREEN_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSplashScreen>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSplashScreen: public QObject
{
  Q_OBJECT
  public:
  SlotsQSplashScreen(QObject *parent = 0);
  ~SlotsQSplashScreen();
  public slots:
  void messageChanged ( const QString & message );
};

#endif // SLOTSQSPLASHSCREEN_H

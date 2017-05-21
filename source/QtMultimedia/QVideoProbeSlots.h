/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQVIDEOPROBE_H
#define SLOTSQVIDEOPROBE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QVideoProbe>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQVideoProbe: public QObject
{
  Q_OBJECT
  public:
  SlotsQVideoProbe(QObject *parent = 0);
  ~SlotsQVideoProbe();
  public slots:
  void flush();
  void videoFrameProbed(const QVideoFrame & frame);
};

#endif // SLOTSQVIDEOPROBE_H

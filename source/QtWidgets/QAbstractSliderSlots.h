/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTSLIDER_H
#define SLOTSQABSTRACTSLIDER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractSlider>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractSlider: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractSlider(QObject *parent = 0);
  ~SlotsQAbstractSlider();
  public slots:
  void actionTriggered ( int action );
  void rangeChanged ( int min, int max );
  void sliderMoved ( int value );
  void sliderPressed ();
  void sliderReleased ();
  void valueChanged ( int value );
};

#endif // SLOTSQABSTRACTSLIDER_H

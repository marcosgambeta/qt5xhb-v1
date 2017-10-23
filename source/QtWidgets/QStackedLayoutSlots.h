/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSTACKEDLAYOUT_H
#define SLOTSQSTACKEDLAYOUT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QStackedLayout>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQStackedLayout: public QObject
{
  Q_OBJECT
  public:
  SlotsQStackedLayout(QObject *parent = 0);
  ~SlotsQStackedLayout();
  public slots:
  void setCurrentIndex ( int index );
  void setCurrentWidget ( QWidget * widget );
};

#endif // SLOTSQSTACKEDLAYOUT_H

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDATAWIDGETMAPPER_H
#define SLOTSQDATAWIDGETMAPPER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDataWidgetMapper>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDataWidgetMapper: public QObject
{
  Q_OBJECT
  public:
  SlotsQDataWidgetMapper(QObject *parent = 0);
  ~SlotsQDataWidgetMapper();
  public slots:
  void currentIndexChanged ( int index );
};

#endif // SLOTSQDATAWIDGETMAPPER_H

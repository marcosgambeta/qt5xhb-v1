/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef Q3DSCATTERSLOTS_H
#define Q3DSCATTERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <Q3DScatter>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQ3DScatter: public QObject
{
  Q_OBJECT
  public:
  SlotsQ3DScatter(QObject *parent = 0);
  ~SlotsQ3DScatter();
  public slots:
  void axisXChanged( QValue3DAxis * axis );
  void axisYChanged( QValue3DAxis * axis );
  void axisZChanged( QValue3DAxis * axis );
  void selectedSeriesChanged( QScatter3DSeries * series );
};

#endif /* Q3DSCATTERSLOTS_H */
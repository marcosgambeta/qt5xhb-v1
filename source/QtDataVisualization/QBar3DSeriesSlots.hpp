/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBAR3DSERIESSLOTS_H
#define QBAR3DSERIESSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QBar3DSeries>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtDataVisualization;

class QBar3DSeriesSlots: public QObject
{
  Q_OBJECT
  public:
  QBar3DSeriesSlots( QObject *parent = 0 );
  ~QBar3DSeriesSlots();
  public slots:
  void dataProxyChanged( QBarDataProxy * proxy );
  void selectedBarChanged( const QPoint & position );
  void meshAngleChanged( float angle );
};

#endif /* QBAR3DSERIESSLOTS_H */

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLOGVALUE3DAXISFORMATTERSLOTS_H
#define QLOGVALUE3DAXISFORMATTERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QLogValue3DAxisFormatter>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtDataVisualization;

class QLogValue3DAxisFormatterSlots: public QObject
{
  Q_OBJECT
  public:
  QLogValue3DAxisFormatterSlots( QObject *parent = 0 );
  ~QLogValue3DAxisFormatterSlots();
  public slots:
  void autoSubGridChanged( bool enabled );
  void baseChanged( qreal base );
  void showEdgeLabelsChanged( bool enabled );
};

#endif /* QLOGVALUE3DAXISFORMATTERSLOTS_H */

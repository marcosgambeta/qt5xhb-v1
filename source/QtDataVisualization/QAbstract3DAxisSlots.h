/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACT3DAXISSLOTS_H
#define QABSTRACT3DAXISSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QAbstract3DAxis>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class QAbstract3DAxisSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstract3DAxisSlots( QObject *parent = 0 );
  ~QAbstract3DAxisSlots();
  public slots:
  void titleChanged( const QString & newTitle );
  void labelsChanged();
  void orientationChanged( QAbstract3DAxis::AxisOrientation orientation );
  void minChanged( float value );
  void maxChanged( float value );
  void rangeChanged( float min, float max );
  void autoAdjustRangeChanged( bool autoAdjust );
  void labelAutoRotationChanged( float angle );
  void titleVisibilityChanged( bool visible );
  void titleFixedChanged( bool fixed );
};

#endif /* QABSTRACT3DAXISSLOTS_H */

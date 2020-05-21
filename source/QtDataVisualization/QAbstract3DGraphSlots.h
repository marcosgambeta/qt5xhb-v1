/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACT3DGRAPHSLOTS_H
#define QABSTRACT3DGRAPHSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QAbstract3DGraph>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class QAbstract3DGraphSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstract3DGraphSlots( QObject *parent = 0 );
  ~QAbstract3DGraphSlots();
  public slots:
  void activeInputHandlerChanged( QAbstract3DInputHandler * inputHandler );
  void activeThemeChanged( Q3DTheme * theme );
  void aspectRatioChanged( qreal ratio );
  void currentFpsChanged( qreal fps );
  void horizontalAspectRatioChanged( qreal ratio );
  void localeChanged( const QLocale & locale );
  void marginChanged( qreal margin );
  void measureFpsChanged( bool enabled );
  void optimizationHintsChanged( QAbstract3DGraph::OptimizationHints hints );
  void orthoProjectionChanged( bool enabled );
  void polarChanged( bool enabled );
  void queriedGraphPositionChanged( const QVector3D & data );
  void radialLabelOffsetChanged( float offset );
  void reflectionChanged( bool enabled );
  void reflectivityChanged( qreal reflectivity );
  void selectedElementChanged( QAbstract3DGraph::ElementType type );
  void selectionModeChanged( QAbstract3DGraph::SelectionFlags mode );
  void shadowQualityChanged( QAbstract3DGraph::ShadowQuality quality );
};

#endif /* QABSTRACT3DGRAPHSLOTS_H */

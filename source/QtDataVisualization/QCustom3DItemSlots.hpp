/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCUSTOM3DITEMSLOTS_H
#define QCUSTOM3DITEMSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QCustom3DItem>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtDataVisualization;

class QCustom3DItemSlots: public QObject
{
  Q_OBJECT
  public:
  QCustom3DItemSlots( QObject *parent = 0 );
  ~QCustom3DItemSlots();
  public slots:
  void meshFileChanged( const QString & meshFile );
  void positionAbsoluteChanged( bool positionAbsolute );
  void positionChanged( const QVector3D & position );
  void rotationChanged( const QQuaternion & rotation );
  void scalingAbsoluteChanged( bool scalingAbsolute );
  void scalingChanged( const QVector3D & scaling );
  void shadowCastingChanged( bool shadowCasting );
  void textureFileChanged( const QString & textureFile );
  void visibleChanged( bool visible );
};

#endif /* QCUSTOM3DITEMSLOTS_H */

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCUSTOM3DVOLUMESLOTS_H
#define QCUSTOM3DVOLUMESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QCustom3DVolume>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtDataVisualization;

class QCustom3DVolumeSlots: public QObject
{
  Q_OBJECT
  public:
  QCustom3DVolumeSlots( QObject *parent = 0 );
  ~QCustom3DVolumeSlots();
  public slots:
  void alphaMultiplierChanged( float mult );
  void colorTableChanged();
  void drawSliceFramesChanged( bool enabled );
  void drawSlicesChanged( bool enabled );
  void preserveOpacityChanged( bool enabled );
  void sliceFrameColorChanged( const QColor & color );
  void sliceFrameGapsChanged( const QVector3D & values );
  void sliceFrameThicknessesChanged( const QVector3D & values );
  void sliceFrameWidthsChanged( const QVector3D & values );
  void sliceIndexXChanged( int value );
  void sliceIndexYChanged( int value );
  void sliceIndexZChanged( int value );
  void textureDepthChanged( int value );
  void textureFormatChanged( QImage::Format format );
  void textureHeightChanged( int value );
  void textureWidthChanged( int value );
  void useHighDefShaderChanged( bool enabled );
};

#endif /* QCUSTOM3DVOLUMESLOTS_H */

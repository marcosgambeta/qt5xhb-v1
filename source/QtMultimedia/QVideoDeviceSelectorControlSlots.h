/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVIDEODEVICESELECTORCONTROLSLOTS_H
#define QVIDEODEVICESELECTORCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QVideoDeviceSelectorControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QVideoDeviceSelectorControlSlots: public QObject
{
  Q_OBJECT
  public:
  QVideoDeviceSelectorControlSlots( QObject *parent = 0 );
  ~QVideoDeviceSelectorControlSlots();
  public slots:
  void devicesChanged();
  void selectedDeviceChanged( int index );
  void selectedDeviceChanged( const QString & name );
};

#endif /* QVIDEODEVICESELECTORCONTROLSLOTS_H */

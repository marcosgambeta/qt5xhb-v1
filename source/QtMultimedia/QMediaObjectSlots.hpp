/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMEDIAOBJECTSLOTS_H
#define QMEDIAOBJECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QMediaObject>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QMediaObjectSlots: public QObject
{
  Q_OBJECT
  public:
  QMediaObjectSlots( QObject *parent = 0 );
  ~QMediaObjectSlots();
  public slots:
  void availabilityChanged( bool available );
  void availabilityChanged( QMultimedia::AvailabilityStatus availability );
  void metaDataAvailableChanged( bool available );
  void metaDataChanged();
  void metaDataChanged( const QString & key, const QVariant & value );
  void notifyIntervalChanged( int milliseconds );
};

#endif /* QMEDIAOBJECTSLOTS_H */
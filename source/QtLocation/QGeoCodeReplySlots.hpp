/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGEOCODEREPLYSLOTS_H
#define QGEOCODEREPLYSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoCodeReply>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QGeoCodeReplySlots: public QObject
{
  Q_OBJECT
  public:
  QGeoCodeReplySlots( QObject *parent = 0 );
  ~QGeoCodeReplySlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void finished();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void error( QGeoCodeReply::Error error, const QString & errorString = QString() );
#endif
};

#endif /* QGEOCODEREPLYSLOTS_H */
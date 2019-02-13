/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QOPENGLWIDGETSLOTS_H
#define QOPENGLWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWidgets/QOpenGLWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QOpenGLWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QOpenGLWidgetSlots(QObject *parent = 0);
  ~QOpenGLWidgetSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void aboutToCompose();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void frameSwapped();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void aboutToResize();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void resized();
#endif
};

#endif /* QOPENGLWIDGETSLOTS_H */

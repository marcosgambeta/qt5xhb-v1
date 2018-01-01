/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQQUICKWIDGET_H
#define SLOTSQQUICKWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QQuickWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQQuickWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQQuickWidget(QObject *parent = 0);
  ~SlotsQQuickWidget();
  public slots:
  void statusChanged(QQuickWidget::Status status);
  void sceneGraphError(QQuickWindow::SceneGraphError error, const QString &message);
};

#endif // SLOTSQQUICKWIDGET_H

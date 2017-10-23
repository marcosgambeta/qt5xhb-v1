/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDOCKWIDGET_H
#define SLOTSQDOCKWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDockWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDockWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQDockWidget(QObject *parent = 0);
  ~SlotsQDockWidget();
  public slots:
  void allowedAreasChanged ( Qt::DockWidgetAreas allowedAreas );
  void dockLocationChanged ( Qt::DockWidgetArea area );
  void featuresChanged ( QDockWidget::DockWidgetFeatures features );
  void topLevelChanged ( bool topLevel );
  void visibilityChanged ( bool visible );
};

#endif // SLOTSQDOCKWIDGET_H

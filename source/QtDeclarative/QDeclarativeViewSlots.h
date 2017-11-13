/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDECLARATIVEVIEW_H
#define SLOTSQDECLARATIVEVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDeclarativeView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDeclarativeView: public QObject
{
  Q_OBJECT
  public:
  SlotsQDeclarativeView(QObject *parent = 0);
  ~SlotsQDeclarativeView();
  public slots:
  void sceneResized ( QSize size );
  void statusChanged ( QDeclarativeView::Status status );
};

#endif // SLOTSQDECLARATIVEVIEW_H

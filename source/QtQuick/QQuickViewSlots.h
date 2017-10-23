/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQQUICKVIEW_H
#define SLOTSQQUICKVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QQuickView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQQuickView: public QObject
{
  Q_OBJECT
  public:
  SlotsQQuickView(QObject *parent = 0);
  ~SlotsQQuickView();
  public slots:
  void statusChanged(QQuickView::Status status);
};

#endif // SLOTSQQUICKVIEW_H

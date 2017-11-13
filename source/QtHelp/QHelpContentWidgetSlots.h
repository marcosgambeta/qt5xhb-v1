/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPCONTENTWIDGET_H
#define SLOTSQHELPCONTENTWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpContentWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHelpContentWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpContentWidget(QObject *parent = 0);
  ~SlotsQHelpContentWidget();
  public slots:
  void linkActivated ( const QUrl & link );
};

#endif // SLOTSQHELPCONTENTWIDGET_H

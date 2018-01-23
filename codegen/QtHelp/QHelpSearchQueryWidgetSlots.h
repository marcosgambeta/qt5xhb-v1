/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPSEARCHQUERYWIDGET_H
#define SLOTSQHELPSEARCHQUERYWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpSearchQueryWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHelpSearchQueryWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpSearchQueryWidget(QObject *parent = 0);
  ~SlotsQHelpSearchQueryWidget();
  public slots:
  void search ();
};

#endif // SLOTSQHELPSEARCHQUERYWIDGET_H

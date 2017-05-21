/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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

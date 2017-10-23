/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPSEARCHRESULTWIDGET_H
#define SLOTSQHELPSEARCHRESULTWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpSearchResultWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHelpSearchResultWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpSearchResultWidget(QObject *parent = 0);
  ~SlotsQHelpSearchResultWidget();
  public slots:
  void requestShowLink ( const QUrl & link );
};

#endif // SLOTSQHELPSEARCHRESULTWIDGET_H

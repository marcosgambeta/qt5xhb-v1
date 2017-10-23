/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPINDEXWIDGET_H
#define SLOTSQHELPINDEXWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpIndexWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHelpIndexWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpIndexWidget(QObject *parent = 0);
  ~SlotsQHelpIndexWidget();
  public slots:
  void linkActivated ( const QUrl & link, const QString & keyword );
};

#endif // SLOTSQHELPINDEXWIDGET_H

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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

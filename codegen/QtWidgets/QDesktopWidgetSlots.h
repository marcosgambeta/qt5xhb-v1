%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQDESKTOPWIDGET_H
#define SLOTSQDESKTOPWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDesktopWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDesktopWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQDesktopWidget(QObject *parent = 0);
  ~SlotsQDesktopWidget();
  public slots:
  void resized ( int screen );
  void screenCountChanged ( int newCount );
  void workAreaResized ( int screen );
};

#endif // SLOTSQDESKTOPWIDGET_H

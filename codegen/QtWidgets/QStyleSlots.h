%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQSTYLE_H
#define SLOTSQSTYLE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QStyle>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQStyle: public QObject
{
  Q_OBJECT
  public:
  SlotsQStyle(QObject *parent = 0);
  ~SlotsQStyle();
  public slots:
  void currentChanged ( int index );
  void tabCloseRequested ( int index );
  void tabMoved ( int from, int to );
};

#endif // SLOTSQSTYLE_H

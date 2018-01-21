%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQLABEL_H
#define SLOTSQLABEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QLabel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQLabel: public QObject
{
  Q_OBJECT
  public:
  SlotsQLabel(QObject *parent = 0);
  ~SlotsQLabel();
  public slots:
  void linkActivated ( const QString & link );
  void linkHovered ( const QString & link );
};

#endif // SLOTSQLABEL_H

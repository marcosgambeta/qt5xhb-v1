%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGroupBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGroupBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQGroupBox(QObject *parent = 0);
  ~SlotsQGroupBox();
  public slots:
  void clicked ( bool checked = false );
  void toggled ( bool on );
};

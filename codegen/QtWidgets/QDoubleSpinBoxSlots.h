%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDoubleSpinBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDoubleSpinBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQDoubleSpinBox(QObject *parent = 0);
  ~SlotsQDoubleSpinBox();
  public slots:
  void valueChanged ( double d );
  void valueChanged ( const QString & text );
};

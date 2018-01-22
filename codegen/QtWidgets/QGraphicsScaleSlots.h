%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsScale>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsScale: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsScale(QObject *parent = 0);
  ~SlotsQGraphicsScale();
  public slots:
  void originChanged ();
  void scaleChanged ();
  void xScaleChanged ();
  void yScaleChanged ();
  void zScaleChanged ();
};

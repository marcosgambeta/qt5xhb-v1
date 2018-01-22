%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMdiSubWindow>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMdiSubWindow: public QObject
{
  Q_OBJECT
  public:
  SlotsQMdiSubWindow(QObject *parent = 0);
  ~SlotsQMdiSubWindow();
  public slots:
  void aboutToActivate ();
  void windowStateChanged ( Qt::WindowStates oldState, Qt::WindowStates newState );
};

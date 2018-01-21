%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQTOOLBAR_H
#define SLOTSQTOOLBAR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QToolBar>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQToolBar: public QObject
{
  Q_OBJECT
  public:
  SlotsQToolBar(QObject *parent = 0);
  ~SlotsQToolBar();
  public slots:
  void actionTriggered ( QAction * action );
  void allowedAreasChanged ( Qt::ToolBarAreas allowedAreas );
  void iconSizeChanged ( const QSize & iconSize );
  void movableChanged ( bool movable );
  void orientationChanged ( Qt::Orientation orientation );
  void toolButtonStyleChanged ( Qt::ToolButtonStyle toolButtonStyle );
  void topLevelChanged ( bool topLevel );
  void visibilityChanged ( bool visible );
};

#endif // SLOTSQTOOLBAR_H

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQGRAPHICSTEXTITEM_H
#define SLOTSQGRAPHICSTEXTITEM_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsTextItem>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsTextItem: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsTextItem(QObject *parent = 0);
  ~SlotsQGraphicsTextItem();
  public slots:
  void linkActivated ( const QString & link );
  void linkHovered ( const QString & link );
};

#endif // SLOTSQGRAPHICSTEXTITEM_H

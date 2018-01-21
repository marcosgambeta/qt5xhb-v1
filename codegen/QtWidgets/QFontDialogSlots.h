%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQFONTDIALOG_H
#define SLOTSQFONTDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QFontDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQFontDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQFontDialog(QObject *parent = 0);
  ~SlotsQFontDialog();
  public slots:
  void currentFontChanged ( const QFont & font );
  void fontSelected ( const QFont & font );
};

#endif // SLOTSQFONTDIALOG_H

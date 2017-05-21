/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWIDGET_H
#define SLOTSQWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQWidget(QObject *parent = 0);
  ~SlotsQWidget();
  public slots:
  void windowTitleChanged(const QString &title);
  void windowIconChanged(const QIcon &icon);
  void windowIconTextChanged(const QString &iconText);
  void customContextMenuRequested(const QPoint &pos);
};

#endif // SLOTSQWIDGET_H

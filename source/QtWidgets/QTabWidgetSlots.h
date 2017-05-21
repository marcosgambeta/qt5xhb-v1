/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTABWIDGET_H
#define SLOTSQTABWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTabWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTabWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQTabWidget(QObject *parent = 0);
  ~SlotsQTabWidget();
  public slots:
  void currentChanged ( int index );
  void tabCloseRequested ( int index );
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void tabBarClicked(int index);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void tabBarDoubleClicked(int index);
#endif
};

#endif // SLOTSQTABWIDGET_H

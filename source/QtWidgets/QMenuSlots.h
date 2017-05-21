/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMENU_H
#define SLOTSQMENU_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMenu>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMenu: public QObject
{
  Q_OBJECT
  public:
  SlotsQMenu(QObject *parent = 0);
  ~SlotsQMenu();
  public slots:
  void aboutToHide ();
  void aboutToShow ();
  void hovered ( QAction * action );
  void triggered ( QAction * action );
};

#endif // SLOTSQMENU_H

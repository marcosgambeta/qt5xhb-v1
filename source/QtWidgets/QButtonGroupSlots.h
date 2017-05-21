/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQBUTTONGROUP_H
#define SLOTSQBUTTONGROUP_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QButtonGroup>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQButtonGroup: public QObject
{
  Q_OBJECT
  public:
  SlotsQButtonGroup(QObject *parent = 0);
  ~SlotsQButtonGroup();
  public slots:
  void buttonClicked ( QAbstractButton * button );
  void buttonClicked ( int id );
  void buttonPressed ( QAbstractButton * button );
  void buttonPressed ( int id );
  void buttonReleased ( QAbstractButton * button );
  void buttonReleased ( int id );
};

#endif // SLOTSQBUTTONGROUP_H

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTITEMVIEW_H
#define SLOTSQABSTRACTITEMVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractItemView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractItemView: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractItemView(QObject *parent = 0);
  ~SlotsQAbstractItemView();
  public slots:
  void activated ( const QModelIndex & index );
  void clicked ( const QModelIndex & index );
  void doubleClicked ( const QModelIndex & index );
  void entered ( const QModelIndex & index );
  void pressed ( const QModelIndex & index );
  void viewportEntered ();
};

#endif // SLOTSQABSTRACTITEMVIEW_H

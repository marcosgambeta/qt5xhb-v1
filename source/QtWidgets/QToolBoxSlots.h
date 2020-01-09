/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTOOLBOXSLOTS_H
#define QTOOLBOXSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QToolBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QToolBoxSlots: public QObject
{
  Q_OBJECT
  public:
  QToolBoxSlots(QObject *parent = 0);
  ~QToolBoxSlots();
  public slots:
  void currentChanged( int index );
};

#endif /* QTOOLBOXSLOTS_H */

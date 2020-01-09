/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSPLITTERSLOTS_H
#define QSPLITTERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QSplitter>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QSplitterSlots: public QObject
{
  Q_OBJECT
  public:
  QSplitterSlots(QObject *parent = 0);
  ~QSplitterSlots();
  public slots:
  void splitterMoved( int pos, int index );
};

#endif /* QSPLITTERSLOTS_H */

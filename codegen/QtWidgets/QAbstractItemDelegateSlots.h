/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTITEMDELEGATE_H
#define SLOTSQABSTRACTITEMDELEGATE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractItemDelegate>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractItemDelegate: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractItemDelegate(QObject *parent = 0);
  ~SlotsQAbstractItemDelegate();
  public slots:
  void closeEditor ( QWidget * editor, QAbstractItemDelegate::EndEditHint hint = QAbstractItemDelegate::NoHint );
  void commitData ( QWidget * editor );
  void sizeHintChanged ( const QModelIndex & index );
};

#endif // SLOTSQABSTRACTITEMDELEGATE_H

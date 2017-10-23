/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQFONTCOMBOBOX_H
#define SLOTSQFONTCOMBOBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QFontComboBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQFontComboBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQFontComboBox(QObject *parent = 0);
  ~SlotsQFontComboBox();
  public slots:
  void currentFontChanged ( const QFont & font );
};

#endif // SLOTSQFONTCOMBOBOX_H

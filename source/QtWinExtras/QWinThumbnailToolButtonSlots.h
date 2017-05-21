/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWINTHUMBNAILTOOLBUTTON_H
#define SLOTSQWINTHUMBNAILTOOLBUTTON_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinThumbnailToolButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWinThumbnailToolButton: public QObject
{
  Q_OBJECT
  public:
  SlotsQWinThumbnailToolButton(QObject *parent = 0);
  ~SlotsQWinThumbnailToolButton();
  public slots:
  void clicked();
  void changed();
};

#endif // SLOTSQWINTHUMBNAILTOOLBUTTON_H

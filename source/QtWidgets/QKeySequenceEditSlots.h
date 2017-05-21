/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQKEYSEQUENCEEDIT_H
#define SLOTSQKEYSEQUENCEEDIT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QKeySequenceEdit>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQKeySequenceEdit: public QObject
{
  Q_OBJECT
  public:
  SlotsQKeySequenceEdit(QObject *parent = 0);
  ~SlotsQKeySequenceEdit();
  public slots:
  void editingFinished();
  void keySequenceChanged(const QKeySequence &keySequence);
};

#endif // SLOTSQKEYSEQUENCEEDIT_H

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQUNDOSTACK_H
#define SLOTSQUNDOSTACK_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QUndoStack>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQUndoStack: public QObject
{
  Q_OBJECT
  public:
  SlotsQUndoStack(QObject *parent = 0);
  ~SlotsQUndoStack();
  public slots:
  void canRedoChanged(bool canRedo);
  void canUndoChanged(bool canUndo);
  void cleanChanged(bool clean);
  void indexChanged(int idx);
  void redoTextChanged(const QString & redoText);
  void undoTextChanged(const QString & undoText);
};

#endif // SLOTSQUNDOSTACK_H

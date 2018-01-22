/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQTEXTDOCUMENT_H
#define SLOTSQTEXTDOCUMENT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTextDocument>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTextDocument: public QObject
{
  Q_OBJECT
  public:
  SlotsQTextDocument(QObject *parent = 0);
  ~SlotsQTextDocument();
  public slots:
  void contentsChange(int from, int charsRemoves, int charsAdded);
  void contentsChanged();
  void undoAvailable(bool b);
  void redoAvailable(bool b);
  void undoCommandAdded();
  void modificationChanged(bool m);
  void cursorPositionChanged(const QTextCursor &cursor);
  void blockCountChanged(int newBlockCount);
  void documentLayoutChanged();
};

#endif // SLOTSQTEXTDOCUMENT_H

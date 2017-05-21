/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQPLAINTEXTEDIT_H
#define SLOTSQPLAINTEXTEDIT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QPlainTextEdit>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQPlainTextEdit: public QObject
{
  Q_OBJECT
  public:
  SlotsQPlainTextEdit(QObject *parent = 0);
  ~SlotsQPlainTextEdit();
  public slots:
  void blockCountChanged ( int newBlockCount );
  void copyAvailable ( bool yes );
  void cursorPositionChanged ();
  void modificationChanged ( bool changed );
  void redoAvailable ( bool available );
  void selectionChanged ();
  void textChanged ();
  void undoAvailable ( bool available );
  void updateRequest ( const QRect & rect, int dy );
};

#endif // SLOTSQPLAINTEXTEDIT_H

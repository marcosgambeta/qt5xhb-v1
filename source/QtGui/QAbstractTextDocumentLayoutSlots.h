/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTTEXTDOCUMENTLAYOUT_H
#define SLOTSQABSTRACTTEXTDOCUMENTLAYOUT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractTextDocumentLayout>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractTextDocumentLayout: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractTextDocumentLayout(QObject *parent = 0);
  ~SlotsQAbstractTextDocumentLayout();
  public slots:
  void documentSizeChanged ( const QSizeF & newSize );
  void pageCountChanged ( int newPages );
  void update ( const QRectF & rect = QRectF( 0., 0., 1000000000., 1000000000. ) );
  void updateBlock ( const QTextBlock & block );
};

#endif // SLOTSQABSTRACTTEXTDOCUMENTLAYOUT_H

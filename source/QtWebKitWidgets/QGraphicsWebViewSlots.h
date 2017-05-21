/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSWEBVIEW_H
#define SLOTSQGRAPHICSWEBVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsWebView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsWebView: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsWebView(QObject *parent = 0);
  ~SlotsQGraphicsWebView();
  public slots:
  void iconChanged ();
  void linkClicked ( const QUrl & url );
  void loadFinished ( bool ok );
  void loadProgress ( int progress );
  void loadStarted ();
  void statusBarMessage ( const QString & text );
  void titleChanged ( const QString & title );
  void urlChanged ( const QUrl & url );
};

#endif // SLOTSQGRAPHICSWEBVIEW_H

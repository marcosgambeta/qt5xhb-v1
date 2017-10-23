/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQWEBVIEW_H
#define SLOTSQWEBVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QWebView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWebView: public QObject
{
  Q_OBJECT
  public:
  SlotsQWebView(QObject *parent = 0);
  ~SlotsQWebView();
  public slots:
  void iconChanged ();
  void linkClicked ( const QUrl & url );
  void loadFinished ( bool ok );
  void loadProgress ( int progress );
  void loadStarted ();
  void selectionChanged ();
  void statusBarMessage ( const QString & text );
  void titleChanged ( const QString & title );
  void urlChanged ( const QUrl & url );
};

#endif // SLOTSQWEBVIEW_H

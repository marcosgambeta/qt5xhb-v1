/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQWEBFRAME_H
#define SLOTSQWEBFRAME_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QWebFrame>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWebFrame: public QObject
{
  Q_OBJECT
  public:
  SlotsQWebFrame(QObject *parent = 0);
  ~SlotsQWebFrame();
  public slots:
  void contentsSizeChanged ( const QSize & size );
  void iconChanged ();
  void initialLayoutCompleted ();
  void javaScriptWindowObjectCleared ();
  void loadFinished ( bool ok );
  void loadStarted ();
  void pageChanged ();
/*
  void provisionalLoad (); TODO: check signal (not present in the documentation)
*/
  void titleChanged ( const QString & title );
  void urlChanged ( const QUrl & url );
};

#endif // SLOTSQWEBFRAME_H

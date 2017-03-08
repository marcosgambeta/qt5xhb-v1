/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWEBFRAME_H
#define SLOTSQWEBFRAME_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QWebFrame>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

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
  void titleChanged ( const QString & title );
  void urlChanged ( const QUrl & url );
};

#endif // SLOTSQWEBFRAME_H

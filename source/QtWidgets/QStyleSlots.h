/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSTYLE_H
#define SLOTSQSTYLE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QStyle>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQStyle: public QObject
{
  Q_OBJECT
  public:
  SlotsQStyle(QObject *parent = 0);
  ~SlotsQStyle();
  public slots:
  void currentChanged ( int index );
  void tabCloseRequested ( int index );
  void tabMoved ( int from, int to );
};

#endif // SLOTSQSTYLE_H

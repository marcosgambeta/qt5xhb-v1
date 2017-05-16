/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWIZARD_H
#define SLOTSQWIZARD_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QWizard>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQWizard: public QObject
{
  Q_OBJECT
  public:
  SlotsQWizard(QObject *parent = 0);
  ~SlotsQWizard();
  public slots:
  void currentIdChanged ( int id );
  void customButtonClicked ( int which );
  void helpRequested ();
  void pageAdded ( int id );
  void pageRemoved ( int id );
};

#endif // SLOTSQWIZARD_H

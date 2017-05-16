/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQFONTDIALOG_H
#define SLOTSQFONTDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QFontDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQFontDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQFontDialog(QObject *parent = 0);
  ~SlotsQFontDialog();
  public slots:
  void currentFontChanged ( const QFont & font );
  void fontSelected ( const QFont & font );
};

#endif // SLOTSQFONTDIALOG_H

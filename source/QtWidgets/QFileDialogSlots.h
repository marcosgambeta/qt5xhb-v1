/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQFILEDIALOG_H
#define SLOTSQFILEDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QFileDialog>

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

class SlotsQFileDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQFileDialog(QObject *parent = 0);
  ~SlotsQFileDialog();
  public slots:
  void currentChanged ( const QString & path );
  void directoryEntered ( const QString & directory );
  void fileSelected ( const QString & file );
  void filesSelected ( const QStringList & selected );
  void filterSelected ( const QString & filter );
  void urlSelected(const QUrl &url);
  void urlsSelected(const QList<QUrl> &urls);
  void currentUrlChanged(const QUrl &url);
  void directoryUrlEntered(const QUrl &directory);
};

#endif // SLOTSQFILEDIALOG_H

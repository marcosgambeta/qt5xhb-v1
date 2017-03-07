/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMEDIAPLAYLIST_H
#define SLOTSQMEDIAPLAYLIST_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaPlaylist>

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

class SlotsQMediaPlaylist: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaPlaylist(QObject *parent = 0);
  ~SlotsQMediaPlaylist();
  public slots:
  void currentIndexChanged(int position);
  void currentMediaChanged(const QMediaContent & content);
  void loadFailed();
  void loaded();
  void mediaAboutToBeInserted(int start, int end);
  void mediaAboutToBeRemoved(int start, int end);
  void mediaChanged(int start, int end);
  void mediaInserted(int start, int end);
  void mediaRemoved(int start, int end);
  void playbackModeChanged(QMediaPlaylist::PlaybackMode mode);
};

#endif // SLOTSQMEDIAPLAYLIST_H

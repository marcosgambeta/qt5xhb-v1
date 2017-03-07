/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMEDIARECORDER_H
#define SLOTSQMEDIARECORDER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaRecorder>

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

class SlotsQMediaRecorder: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaRecorder(QObject *parent = 0);
  ~SlotsQMediaRecorder();
  public slots:
  void actualLocationChanged(const QUrl & location);
  void availabilityChanged(bool available);
  void availabilityChanged(QMultimedia::AvailabilityStatus availability);
  void durationChanged(qint64 duration);
  void error(QMediaRecorder::Error error);
  void metaDataAvailableChanged(bool available);
  void metaDataChanged();
  void metaDataChanged(const QString & key, const QVariant & value);
  void metaDataWritableChanged(bool writable);
  void mutedChanged(bool muted);
  void stateChanged(QMediaRecorder::State state);
  void statusChanged(QMediaRecorder::Status status);
  void volumeChanged(qreal volume);
};

#endif // SLOTSQMEDIARECORDER_H

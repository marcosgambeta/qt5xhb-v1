/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMEDIAOBJECT_H
#define SLOTSQMEDIAOBJECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaObject>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQMediaObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaObject(QObject *parent = 0);
  ~SlotsQMediaObject();
  public slots:
  void availabilityChanged(bool available);
  void availabilityChanged(QMultimedia::AvailabilityStatus availability);
  void metaDataAvailableChanged(bool available);
  void metaDataChanged();
  void metaDataChanged(const QString & key, const QVariant & value);
  void notifyIntervalChanged(int milliseconds);
};

#endif // SLOTSQMEDIAOBJECT_H

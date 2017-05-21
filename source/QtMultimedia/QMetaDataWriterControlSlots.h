/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMETADATAWRITERCONTROL_H
#define SLOTSQMETADATAWRITERCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMetaDataWriterControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMetaDataWriterControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMetaDataWriterControl(QObject *parent = 0);
  ~SlotsQMetaDataWriterControl();
  public slots:
  void metaDataChanged();
  void metaDataChanged(const QString &key, const QVariant &value);
  void writableChanged(bool writable);
  void metaDataAvailableChanged(bool available);
};

#endif // SLOTSQMETADATAWRITERCONTROL_H

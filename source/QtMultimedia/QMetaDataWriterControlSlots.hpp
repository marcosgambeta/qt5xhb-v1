/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMETADATAWRITERCONTROLSLOTS_H
#define QMETADATAWRITERCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QMetaDataWriterControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QMetaDataWriterControlSlots : public QObject
{
  Q_OBJECT
public:
  QMetaDataWriterControlSlots(QObject *parent = 0);
  ~QMetaDataWriterControlSlots();
public slots:
  void metaDataChanged();
  void metaDataChanged(const QString &key, const QVariant &value);
  void writableChanged(bool writable);
  void metaDataAvailableChanged(bool available);
};

#endif /* QMETADATAWRITERCONTROLSLOTS_H */

//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QGRAPHICSVIDEOITEMSLOTS_H
#define QGRAPHICSVIDEOITEMSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimediaWidgets/QGraphicsVideoItem>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QGraphicsVideoItemSlots : public QObject
{
  Q_OBJECT
public:
  QGraphicsVideoItemSlots(QObject *parent = 0);
  ~QGraphicsVideoItemSlots();
public slots:
  void nativeSizeChanged(const QSizeF &size);
};

#endif // QGRAPHICSVIDEOITEMSLOTS_H

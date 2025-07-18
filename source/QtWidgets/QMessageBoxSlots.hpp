//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QMESSAGEBOXSLOTS_H
#define QMESSAGEBOXSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtWidgets/QAbstractButton>

#include <QtWidgets/QMessageBox>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QMessageBoxSlots : public QObject
{
  Q_OBJECT
public:
  QMessageBoxSlots(QObject *parent = 0);
  ~QMessageBoxSlots();
public slots:
  void buttonClicked(QAbstractButton *button);
};

#endif // QMESSAGEBOXSLOTS_H

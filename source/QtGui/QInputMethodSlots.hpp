//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QINPUTMETHODSLOTS_H
#define QINPUTMETHODSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QInputMethod>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QInputMethodSlots : public QObject
{
  Q_OBJECT
public:
  QInputMethodSlots(QObject *parent = 0);
  ~QInputMethodSlots();
public slots:
  void animatingChanged();
  void cursorRectangleChanged();
  void inputDirectionChanged(Qt::LayoutDirection newDirection);
  void keyboardRectangleChanged();
  void localeChanged();
  void visibleChanged();
};

#endif // QINPUTMETHODSLOTS_H

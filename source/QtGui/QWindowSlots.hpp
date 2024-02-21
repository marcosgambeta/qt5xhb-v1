/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QWINDOWSLOTS_H
#define QWINDOWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtGui/QScreen>

#include <QtGui/QWindow>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QWindowSlots : public QObject
{
  Q_OBJECT
public:
  QWindowSlots(QObject *parent = 0);
  ~QWindowSlots();
public slots:
  void contentOrientationChanged(Qt::ScreenOrientation orientation);
  void focusObjectChanged(QObject *focusObject);
  void heightChanged(int arg);
  void screenChanged(QScreen *screen);
  void visibleChanged(bool arg);
  void widthChanged(int arg);
  void windowModalityChanged(Qt::WindowModality windowModality);
  void xChanged(int arg);
  void yChanged(int arg);
};

#endif /* QWINDOWSLOTS_H */

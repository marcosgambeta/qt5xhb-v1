/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACT3DINPUTHANDLERSLOTS_H
#define QABSTRACT3DINPUTHANDLERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QAbstract3DInputHandler>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class QAbstract3DInputHandlerSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstract3DInputHandlerSlots( QObject *parent = 0 );
  ~QAbstract3DInputHandlerSlots();
  public slots:
  void inputViewChanged( QAbstract3DInputHandler::InputView view );
  void positionChanged( const QPoint & position );
  void sceneChanged( Q3DScene * scene );
};

#endif /* QABSTRACT3DINPUTHANDLERSLOTS_H */

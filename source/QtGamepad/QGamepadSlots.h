/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGAMEPADSLOTS_H
#define QGAMEPADSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtGamepad/QGamepad>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QGamepadSlots: public QObject
{
  Q_OBJECT
  public:
  QGamepadSlots( QObject *parent = 0 );
  ~QGamepadSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void axisLeftXChanged( double value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void axisLeftYChanged( double value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void axisRightXChanged( double value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void axisRightYChanged( double value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonAChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonBChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonCenterChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonDownChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonGuideChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonL1Changed( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonL2Changed( double value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonL3Changed( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonLeftChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonR1Changed( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonR2Changed( double value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonR3Changed( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonRightChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonSelectChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonStartChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonUpChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonXChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonYChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void connectedChanged( bool value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void deviceIdChanged( int value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void nameChanged( QString value );
#endif
};

#endif /* QGAMEPADSLOTS_H */

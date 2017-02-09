/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCAMERA_H
#define SLOTSQCAMERA_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCamera>

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

class SlotsQCamera: public QObject
{
  Q_OBJECT
  public:
  SlotsQCamera(QObject *parent = 0);
  ~SlotsQCamera();
  public slots:
  void captureModeChanged(QCamera::CaptureModes mode);
  void error(QCamera::Error value);
  void lockFailed();
  void lockStatusChanged(QCamera::LockStatus status, QCamera::LockChangeReason reason);
  void lockStatusChanged(QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason);
  void locked();
  void stateChanged(QCamera::State state);
  void statusChanged(QCamera::Status status);
};

#endif // SLOTSQCAMERA_H

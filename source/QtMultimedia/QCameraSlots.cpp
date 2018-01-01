/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCameraSlots.h"


static SlotsQCamera * s = NULL;

SlotsQCamera::SlotsQCamera(QObject *parent) : QObject(parent)
{
}

SlotsQCamera::~SlotsQCamera()
{
}

void SlotsQCamera::captureModeChanged(QCamera::CaptureModes mode)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "captureModeChanged(QCamera::CaptureModes)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void SlotsQCamera::error(QCamera::Error value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QCamera::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, (int) value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQCamera::lockFailed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lockFailed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQCamera::lockStatusChanged(QCamera::LockStatus status, QCamera::LockChangeReason reason)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lockStatusChanged(QCamera::LockStatus,QCamera::LockChangeReason)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    PHB_ITEM preason = hb_itemPutNI( NULL, (int) reason );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstatus, preason );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
    hb_itemRelease( preason );
  }
}

void SlotsQCamera::lockStatusChanged(QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plock = hb_itemPutNI( NULL, (int) lock );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    PHB_ITEM preason = hb_itemPutNI( NULL, (int) reason );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, plock, pstatus, preason );
    hb_itemRelease( psender );
    hb_itemRelease( plock );
    hb_itemRelease( pstatus );
    hb_itemRelease( preason );
  }
}

void SlotsQCamera::locked()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "locked()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQCamera::stateChanged(QCamera::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QCamera::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void SlotsQCamera::statusChanged(QCamera::Status status)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QCamera::Status)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

HB_FUNC( QCAMERA_ONCAPTUREMODECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCamera(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "captureModeChanged(QCamera::CaptureModes)", "captureModeChanged(QCamera::CaptureModes)" ) );
}

HB_FUNC( QCAMERA_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQCamera(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QCamera::Error)", "error(QCamera::Error)" ) );
}

HB_FUNC( QCAMERA_ONLOCKFAILED )
{
  if( s == NULL )
  {
    s = new SlotsQCamera(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "lockFailed()", "lockFailed()" ) );
}

HB_FUNC( QCAMERA_ONLOCKSTATUSCHANGED1 )
{
  if( s == NULL )
  {
    s = new SlotsQCamera(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "lockStatusChanged(QCamera::LockStatus,QCamera::LockChangeReason)", "lockStatusChanged(QCamera::LockStatus,QCamera::LockChangeReason)" ) );
}

HB_FUNC( QCAMERA_ONLOCKSTATUSCHANGED2 )
{
  if( s == NULL )
  {
    s = new SlotsQCamera(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)", "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)" ) );
}

HB_FUNC( QCAMERA_ONLOCKED )
{
  if( s == NULL )
  {
    s = new SlotsQCamera(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "locked()", "locked()" ) );
}

HB_FUNC( QCAMERA_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCamera(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QCamera::State)", "stateChanged(QCamera::State)" ) );
}

HB_FUNC( QCAMERA_ONSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCamera(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusChanged(QCamera::Status)", "statusChanged(QCamera::Status)" ) );
}

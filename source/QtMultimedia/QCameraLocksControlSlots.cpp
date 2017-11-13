/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCameraLocksControlSlots.h"


static SlotsQCameraLocksControl * s = NULL;

SlotsQCameraLocksControl::SlotsQCameraLocksControl(QObject *parent) : QObject(parent)
{
}

SlotsQCameraLocksControl::~SlotsQCameraLocksControl()
{
}

void SlotsQCameraLocksControl::lockStatusChanged(QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason)
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

HB_FUNC( QCAMERALOCKSCONTROL_ONLOCKSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraLocksControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)", "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)" ) );
}

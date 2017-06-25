/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QCameraControlSlots.h"


static SlotsQCameraControl * s = NULL;

SlotsQCameraControl::SlotsQCameraControl(QObject *parent) : QObject(parent)
{
}

SlotsQCameraControl::~SlotsQCameraControl()
{
}

void SlotsQCameraControl::captureModeChanged(QCamera::CaptureModes mode)
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

void SlotsQCameraControl::error(int error, const QString & errorString)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}

void SlotsQCameraControl::stateChanged(QCamera::State state)
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

void SlotsQCameraControl::statusChanged(QCamera::Status status)
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

HB_FUNC( QCAMERACONTROL_ONCAPTUREMODECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "captureModeChanged(QCamera::CaptureModes)", "captureModeChanged(QCamera::CaptureModes)" ) );
}

HB_FUNC( QCAMERACONTROL_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQCameraControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(int,QString)", "error(int,QString)" ) );
}

HB_FUNC( QCAMERACONTROL_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QCamera::State)", "stateChanged(QCamera::State)" ) );
}

HB_FUNC( QCAMERACONTROL_ONSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusChanged(QCamera::Status)", "statusChanged(QCamera::Status)" ) );
}

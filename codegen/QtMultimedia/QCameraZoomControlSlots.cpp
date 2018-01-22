/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCameraZoomControlSlots.h"


static SlotsQCameraZoomControl * s = NULL;

SlotsQCameraZoomControl::SlotsQCameraZoomControl(QObject *parent) : QObject(parent)
{
}

SlotsQCameraZoomControl::~SlotsQCameraZoomControl()
{
}

void SlotsQCameraZoomControl::currentDigitalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentDigitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraZoomControl::currentOpticalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentOpticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraZoomControl::maximumDigitalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumDigitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraZoomControl::maximumOpticalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumOpticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraZoomControl::requestedDigitalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestedDigitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraZoomControl::requestedOpticalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestedOpticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

HB_FUNC( QCAMERAZOOMCONTROL_ONCURRENTDIGITALZOOMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraZoomControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentDigitalZoomChanged(qreal)", "currentDigitalZoomChanged(qreal)" ) );
}

HB_FUNC( QCAMERAZOOMCONTROL_ONCURRENTOPTICALZOOMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraZoomControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentOpticalZoomChanged(qreal)", "currentOpticalZoomChanged(qreal)" ) );
}

HB_FUNC( QCAMERAZOOMCONTROL_ONMAXIMUMDIGITALZOOMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraZoomControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "maximumDigitalZoomChanged(qreal)", "maximumDigitalZoomChanged(qreal)" ) );
}

HB_FUNC( QCAMERAZOOMCONTROL_ONMAXIMUMOPTICALZOOMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraZoomControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "maximumOpticalZoomChanged(qreal)", "maximumOpticalZoomChanged(qreal)" ) );
}

HB_FUNC( QCAMERAZOOMCONTROL_ONREQUESTEDDIGITALZOOMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraZoomControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "requestedDigitalZoomChanged(qreal)", "requestedDigitalZoomChanged(qreal)" ) );
}

HB_FUNC( QCAMERAZOOMCONTROL_ONREQUESTEDOPTICALZOOMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraZoomControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "requestedOpticalZoomChanged(qreal)", "requestedOpticalZoomChanged(qreal)" ) );
}

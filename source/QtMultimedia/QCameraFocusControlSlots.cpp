/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCameraFocusControlSlots.h"


static SlotsQCameraFocusControl * s = NULL;

SlotsQCameraFocusControl::SlotsQCameraFocusControl(QObject *parent) : QObject(parent)
{
}

SlotsQCameraFocusControl::~SlotsQCameraFocusControl()
{
}

void SlotsQCameraFocusControl::customFocusPointChanged(const QPointF & point)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "customFocusPointChanged(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppoint );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}

void SlotsQCameraFocusControl::focusModeChanged(QCameraFocus::FocusModes mode)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusModeChanged(QCameraFocus::FocusModes)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void SlotsQCameraFocusControl::focusPointModeChanged(QCameraFocus::FocusPointMode mode)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusPointModeChanged(QCameraFocus::FocusPointMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void SlotsQCameraFocusControl::focusZonesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusZonesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QCAMERAFOCUSCONTROL_ONCUSTOMFOCUSPOINTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocusControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "customFocusPointChanged(QPointF)", "customFocusPointChanged(QPointF)" ) );
}

HB_FUNC( QCAMERAFOCUSCONTROL_ONFOCUSMODECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocusControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "focusModeChanged(QCameraFocus::FocusModes)", "focusModeChanged(QCameraFocus::FocusModes)" ) );
}

HB_FUNC( QCAMERAFOCUSCONTROL_ONFOCUSPOINTMODECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocusControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "focusPointModeChanged(QCameraFocus::FocusPointMode)", "focusPointModeChanged(QCameraFocus::FocusPointMode)" ) );
}

HB_FUNC( QCAMERAFOCUSCONTROL_ONFOCUSZONESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocusControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "focusZonesChanged()", "focusZonesChanged()" ) );
}

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "Q3DCameraSlots.h"

Q3DCameraSlots::Q3DCameraSlots( QObject *parent ) : QObject( parent )
{
}

Q3DCameraSlots::~Q3DCameraSlots()
{
}

void Q3DCameraSlots::cameraPresetChanged( Q3DCamera::CameraPreset preset )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "cameraPresetChanged(Q3DCamera::CameraPreset)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DCAMERA" );
    PHB_ITEM ppreset = hb_itemPutNI( NULL, (int) preset );

    hb_vmEvalBlockV( cb, 2, psender, ppreset );

    hb_itemRelease( psender );
    hb_itemRelease( ppreset );
  }
}

void Q3DCameraSlots::maxZoomLevelChanged( float zoomLevel )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "maxZoomLevelChanged(float)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DCAMERA" );
    PHB_ITEM pzoomLevel = hb_itemPutND( NULL, zoomLevel );

    hb_vmEvalBlockV( cb, 2, psender, pzoomLevel );

    hb_itemRelease( psender );
    hb_itemRelease( pzoomLevel );
  }
}

void Q3DCameraSlots::minZoomLevelChanged( float zoomLevel )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "minZoomLevelChanged(float)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DCAMERA" );
    PHB_ITEM pzoomLevel = hb_itemPutND( NULL, zoomLevel );

    hb_vmEvalBlockV( cb, 2, psender, pzoomLevel );

    hb_itemRelease( psender );
    hb_itemRelease( pzoomLevel );
  }
}

void Q3DCameraSlots::targetChanged( const QVector3D & target )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "targetChanged(QVector3D)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DCAMERA" );
    PHB_ITEM ptarget = Qt5xHb::Signals_return_object( (void *) &target, "QVECTOR3D" );

    hb_vmEvalBlockV( cb, 2, psender, ptarget );

    hb_itemRelease( psender );
    hb_itemRelease( ptarget );
  }
}

void Q3DCameraSlots::wrapXRotationChanged( bool isEnabled )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "wrapXRotationChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DCAMERA" );
    PHB_ITEM pisEnabled = hb_itemPutL( NULL, isEnabled );

    hb_vmEvalBlockV( cb, 2, psender, pisEnabled );

    hb_itemRelease( psender );
    hb_itemRelease( pisEnabled );
  }
}

void Q3DCameraSlots::wrapYRotationChanged( bool isEnabled )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "wrapYRotationChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DCAMERA" );
    PHB_ITEM pisEnabled = hb_itemPutL( NULL, isEnabled );

    hb_vmEvalBlockV( cb, 2, psender, pisEnabled );

    hb_itemRelease( psender );
    hb_itemRelease( pisEnabled );
  }
}

void Q3DCameraSlots::xRotationChanged( float rotation )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "xRotationChanged(float)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DCAMERA" );
    PHB_ITEM protation = hb_itemPutND( NULL, rotation );

    hb_vmEvalBlockV( cb, 2, psender, protation );

    hb_itemRelease( psender );
    hb_itemRelease( protation );
  }
}

void Q3DCameraSlots::yRotationChanged( float rotation )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "yRotationChanged(float)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DCAMERA" );
    PHB_ITEM protation = hb_itemPutND( NULL, rotation );

    hb_vmEvalBlockV( cb, 2, psender, protation );

    hb_itemRelease( psender );
    hb_itemRelease( protation );
  }
}

void Q3DCameraSlots::zoomLevelChanged( float zoomLevel )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "zoomLevelChanged(float)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DCAMERA" );
    PHB_ITEM pzoomLevel = hb_itemPutND( NULL, zoomLevel );

    hb_vmEvalBlockV( cb, 2, psender, pzoomLevel );

    hb_itemRelease( psender );
    hb_itemRelease( pzoomLevel );
  }
}

void Q3DCameraSlots_connect_signal( const QString & signal, const QString & slot )
{
  Q3DCamera * obj = (Q3DCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Q3DCameraSlots * s = QCoreApplication::instance()->findChild<Q3DCameraSlots *>();

    if( s == NULL )
    {
      s = new Q3DCameraSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}

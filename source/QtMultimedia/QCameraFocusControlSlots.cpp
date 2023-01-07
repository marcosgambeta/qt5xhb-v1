/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCameraFocusControlSlots.h"

QCameraFocusControlSlots::QCameraFocusControlSlots( QObject *parent ) : QObject( parent )
{
}

QCameraFocusControlSlots::~QCameraFocusControlSlots()
{
}

void QCameraFocusControlSlots::customFocusPointChanged( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "customFocusPointChanged(QPointF)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCAMERAFOCUSCONTROL");
    PHB_ITEM ppoint = Qt5xHb::Signals_return_object( (void *) &point, "QPOINTF" );

    hb_vmEvalBlockV( cb, 2, psender, ppoint );

    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}

void QCameraFocusControlSlots::focusModeChanged( QCameraFocus::FocusModes mode )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "focusModeChanged(QCameraFocus::FocusModes)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCAMERAFOCUSCONTROL");
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );

    hb_vmEvalBlockV( cb, 2, psender, pmode );

    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void QCameraFocusControlSlots::focusPointModeChanged( QCameraFocus::FocusPointMode mode )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "focusPointModeChanged(QCameraFocus::FocusPointMode)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCAMERAFOCUSCONTROL");
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );

    hb_vmEvalBlockV( cb, 2, psender, pmode );

    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void QCameraFocusControlSlots::focusZonesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "focusZonesChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCAMERAFOCUSCONTROL");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QCameraFocusControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QCameraFocusControlSlots * s = QCoreApplication::instance()->findChild<QCameraFocusControlSlots *>();

    if( s == NULL )
    {
      s = new QCameraFocusControlSlots();
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

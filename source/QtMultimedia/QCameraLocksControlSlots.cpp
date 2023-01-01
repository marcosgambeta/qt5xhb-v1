/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCameraLocksControlSlots.h"

QCameraLocksControlSlots::QCameraLocksControlSlots( QObject *parent ) : QObject( parent )
{
}

QCameraLocksControlSlots::~QCameraLocksControlSlots()
{
}

void QCameraLocksControlSlots::lockStatusChanged( QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCAMERALOCKSCONTROL" );
    PHB_ITEM plock = hb_itemPutNI( NULL, (int) lock );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    PHB_ITEM preason = hb_itemPutNI( NULL, (int) reason );

    hb_vmEvalBlockV( cb, 4, psender, plock, pstatus, preason );

    hb_itemRelease( psender );
    hb_itemRelease( plock );
    hb_itemRelease( pstatus );
    hb_itemRelease( preason );
  }
}

void QCameraLocksControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCameraLocksControl * obj = (QCameraLocksControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QCameraLocksControlSlots * s = QCoreApplication::instance()->findChild<QCameraLocksControlSlots *>();

    if( s == NULL )
    {
      s = new QCameraLocksControlSlots();
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

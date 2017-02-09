/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

HB_FUNC( QCAMERALOCKSCONTROL_ONLOCKSTATUSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQCameraLocksControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)), s, SLOT(lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)";
    ret = object->disconnect(object, SIGNAL(lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)), s, SLOT(lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}


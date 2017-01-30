/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QBluetoothLocalDeviceSlots.h"


static SlotsQBluetoothLocalDevice * s = NULL;

SlotsQBluetoothLocalDevice::SlotsQBluetoothLocalDevice(QObject *parent) : QObject(parent)
{
}

SlotsQBluetoothLocalDevice::~SlotsQBluetoothLocalDevice()
{
}

void SlotsQBluetoothLocalDevice::hostModeStateChanged(QBluetoothLocalDevice::HostMode state)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hostModeStateChanged(QBluetoothLocalDevice::HostMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
#endif
}

void SlotsQBluetoothLocalDevice::pairingFinished(const QBluetoothAddress &address, QBluetoothLocalDevice::Pairing pairing)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paddress = hb_itemPutPtr( NULL, (QBluetoothAddress *) &address );
    PHB_ITEM ppairing = hb_itemPutNI( NULL, (int) pairing );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, paddress, ppairing );
    hb_itemRelease( psender );
    hb_itemRelease( paddress );
    hb_itemRelease( ppairing );
  }
#endif
}

void SlotsQBluetoothLocalDevice::pairingDisplayPinCode(const QBluetoothAddress &address, QString pin)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pairingDisplayPinCode(QBluetoothAddress,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paddress = hb_itemPutPtr( NULL, (QBluetoothAddress *) &address );
    PHB_ITEM ppin = hb_itemPutC( NULL, (const char *) pin.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, paddress, ppin );
    hb_itemRelease( psender );
    hb_itemRelease( paddress );
    hb_itemRelease( ppin );
  }
#endif
}

void SlotsQBluetoothLocalDevice::pairingDisplayConfirmation(const QBluetoothAddress &address, QString pin)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pairingDisplayConfirmation(QBluetoothAddress,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paddress = hb_itemPutPtr( NULL, (QBluetoothAddress *) &address );
    PHB_ITEM ppin = hb_itemPutC( NULL, (const char *) pin.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, paddress, ppin );
    hb_itemRelease( psender );
    hb_itemRelease( paddress );
    hb_itemRelease( ppin );
  }
#endif
}

void SlotsQBluetoothLocalDevice::error(QBluetoothLocalDevice::Error error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QBluetoothLocalDevice::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
#endif
}

HB_FUNC( QBLUETOOTHLOCALDEVICE_ONHOSTMODESTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothLocalDevice(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "hostModeStateChanged(QBluetoothLocalDevice::HostMode)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(hostModeStateChanged(QBluetoothLocalDevice::HostMode)), s, SLOT(hostModeStateChanged(QBluetoothLocalDevice::HostMode)) );
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
    QString signal = "hostModeStateChanged(QBluetoothLocalDevice::HostMode)";
    ret = object->disconnect(object, SIGNAL(hostModeStateChanged(QBluetoothLocalDevice::HostMode)), s, SLOT(hostModeStateChanged(QBluetoothLocalDevice::HostMode)) );
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

HB_FUNC( QBLUETOOTHLOCALDEVICE_ONPAIRINGFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothLocalDevice(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)), s, SLOT(pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)) );
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
    QString signal = "pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)";
    ret = object->disconnect(object, SIGNAL(pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)), s, SLOT(pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)) );
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

HB_FUNC( QBLUETOOTHLOCALDEVICE_ONPAIRINGDISPLAYPINCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothLocalDevice(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "pairingDisplayPinCode(QBluetoothAddress,QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(pairingDisplayPinCode(QBluetoothAddress,QString)), s, SLOT(pairingDisplayPinCode(QBluetoothAddress,QString)) );
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
    QString signal = "pairingDisplayPinCode(QBluetoothAddress,QString)";
    ret = object->disconnect(object, SIGNAL(pairingDisplayPinCode(QBluetoothAddress,QString)), s, SLOT(pairingDisplayPinCode(QBluetoothAddress,QString)) );
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

HB_FUNC( QBLUETOOTHLOCALDEVICE_ONPAIRINGDISPLAYCONFIRMATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothLocalDevice(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "pairingDisplayConfirmation(QBluetoothAddress,QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(pairingDisplayConfirmation(QBluetoothAddress,QString)), s, SLOT(pairingDisplayConfirmation(QBluetoothAddress,QString)) );
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
    QString signal = "pairingDisplayConfirmation(QBluetoothAddress,QString)";
    ret = object->disconnect(object, SIGNAL(pairingDisplayConfirmation(QBluetoothAddress,QString)), s, SLOT(pairingDisplayConfirmation(QBluetoothAddress,QString)) );
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

HB_FUNC( QBLUETOOTHLOCALDEVICE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothLocalDevice(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "error(QBluetoothLocalDevice::Error)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(error(QBluetoothLocalDevice::Error)), s, SLOT(error(QBluetoothLocalDevice::Error)) );
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
    QString signal = "error(QBluetoothLocalDevice::Error)";
    ret = object->disconnect(object, SIGNAL(error(QBluetoothLocalDevice::Error)), s, SLOT(error(QBluetoothLocalDevice::Error)) );
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


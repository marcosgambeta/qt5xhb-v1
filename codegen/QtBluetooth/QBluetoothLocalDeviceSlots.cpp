%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

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

  hb_retl( Signals_connection_disconnection ( s, "hostModeStateChanged(QBluetoothLocalDevice::HostMode)", "hostModeStateChanged(QBluetoothLocalDevice::HostMode)" ) );
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

  hb_retl( Signals_connection_disconnection ( s, "pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)", "pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)" ) );
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

  hb_retl( Signals_connection_disconnection ( s, "pairingDisplayPinCode(QBluetoothAddress,QString)", "pairingDisplayPinCode(QBluetoothAddress,QString)" ) );
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

  hb_retl( Signals_connection_disconnection ( s, "pairingDisplayConfirmation(QBluetoothAddress,QString)", "pairingDisplayConfirmation(QBluetoothAddress,QString)" ) );
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

  hb_retl( Signals_connection_disconnection ( s, "error(QBluetoothLocalDevice::Error)", "error(QBluetoothLocalDevice::Error)" ) );
#else
  hb_retl(false);
#endif
}

$endSlotsClass

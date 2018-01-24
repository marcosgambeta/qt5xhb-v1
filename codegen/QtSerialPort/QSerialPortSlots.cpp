/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QSerialPortSlots.h"


static SlotsQSerialPort * s = NULL;

SlotsQSerialPort::SlotsQSerialPort(QObject *parent) : QObject(parent)
{
}

SlotsQSerialPort::~SlotsQSerialPort()
{
}

void SlotsQSerialPort::baudRateChanged(qint32 baudRate, QSerialPort::Directions dir)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "baudRateChanged(qint32,QSerialPort::Directions)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbaudRate = hb_itemPutNI( NULL, baudRate );
    PHB_ITEM pdir = hb_itemPutNI( NULL, (int) dir );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pbaudRate, pdir );
    hb_itemRelease( psender );
    hb_itemRelease( pbaudRate );
    hb_itemRelease( pdir );
  }
#endif
}

void SlotsQSerialPort::dataBitsChanged(QSerialPort::DataBits dataBits)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataBitsChanged(QSerialPort::DataBits)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdataBits = hb_itemPutNI( NULL, (int) dataBits );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdataBits );
    hb_itemRelease( psender );
    hb_itemRelease( pdataBits );
  }
#endif
}

void SlotsQSerialPort::parityChanged(QSerialPort::Parity parity)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "parityChanged(QSerialPort::Parity)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparity = hb_itemPutNI( NULL, (int) parity );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pparity );
    hb_itemRelease( psender );
    hb_itemRelease( pparity );
  }
#endif
}

void SlotsQSerialPort::stopBitsChanged(QSerialPort::StopBits stopBits)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stopBitsChanged(QSerialPort::StopBits)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstopBits = hb_itemPutNI( NULL, (int) stopBits );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstopBits );
    hb_itemRelease( psender );
    hb_itemRelease( pstopBits );
  }
#endif
}

void SlotsQSerialPort::flowControlChanged(QSerialPort::FlowControl flow)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "flowControlChanged(QSerialPort::FlowControl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pflow = hb_itemPutNI( NULL, (int) flow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pflow );
    hb_itemRelease( psender );
    hb_itemRelease( pflow );
  }
#endif
}

void SlotsQSerialPort::dataErrorPolicyChanged(QSerialPort::DataErrorPolicy policy)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppolicy = hb_itemPutNI( NULL, (int) policy );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppolicy );
    hb_itemRelease( psender );
    hb_itemRelease( ppolicy );
  }
#endif
}

void SlotsQSerialPort::dataTerminalReadyChanged(bool set)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataTerminalReadyChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pset = hb_itemPutL( NULL, set );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pset );
    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
#endif
}

void SlotsQSerialPort::requestToSendChanged(bool set)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestToSendChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pset = hb_itemPutL( NULL, set );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pset );
    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
#endif
}

void SlotsQSerialPort::error(QSerialPort::SerialPortError serialPortError)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QSerialPort::SerialPortError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pserialPortError = hb_itemPutNI( NULL, (int) serialPortError );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pserialPortError );
    hb_itemRelease( psender );
    hb_itemRelease( pserialPortError );
  }
#endif
}

void SlotsQSerialPort::settingsRestoredOnCloseChanged(bool restore)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "settingsRestoredOnCloseChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prestore = hb_itemPutL( NULL, restore );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prestore );
    hb_itemRelease( psender );
    hb_itemRelease( prestore );
  }
#endif
}

HB_FUNC( QSERIALPORT_ONBAUDRATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "baudRateChanged(qint32,QSerialPort::Directions)", "baudRateChanged(qint32,QSerialPort::Directions)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSERIALPORT_ONDATABITSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "dataBitsChanged(QSerialPort::DataBits)", "dataBitsChanged(QSerialPort::DataBits)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSERIALPORT_ONPARITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "parityChanged(QSerialPort::Parity)", "parityChanged(QSerialPort::Parity)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSERIALPORT_ONSTOPBITSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stopBitsChanged(QSerialPort::StopBits)", "stopBitsChanged(QSerialPort::StopBits)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSERIALPORT_ONFLOWCONTROLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "flowControlChanged(QSerialPort::FlowControl)", "flowControlChanged(QSerialPort::FlowControl)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSERIALPORT_ONDATAERRORPOLICYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)", "dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSERIALPORT_ONDATATERMINALREADYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "dataTerminalReadyChanged(bool)", "dataTerminalReadyChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSERIALPORT_ONREQUESTTOSENDCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "requestToSendChanged(bool)", "requestToSendChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSERIALPORT_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QSerialPort::SerialPortError)", "error(QSerialPort::SerialPortError)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSERIALPORT_ONSETTINGSRESTOREDONCLOSECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "settingsRestoredOnCloseChanged(bool)", "settingsRestoredOnCloseChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}

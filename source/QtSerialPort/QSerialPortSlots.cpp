/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "baudRateChanged(qint32,QSerialPort::Directions)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(baudRateChanged(qint32,QSerialPort::Directions)), s, SLOT(baudRateChanged(qint32,QSerialPort::Directions)) );
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
    QString signal = "baudRateChanged(qint32,QSerialPort::Directions)";
    ret = object->disconnect(object, SIGNAL(baudRateChanged(qint32,QSerialPort::Directions)), s, SLOT(baudRateChanged(qint32,QSerialPort::Directions)) );
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

HB_FUNC( QSERIALPORT_ONDATABITSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "dataBitsChanged(QSerialPort::DataBits)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(dataBitsChanged(QSerialPort::DataBits)), s, SLOT(dataBitsChanged(QSerialPort::DataBits)) );
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
    QString signal = "dataBitsChanged(QSerialPort::DataBits)";
    ret = object->disconnect(object, SIGNAL(dataBitsChanged(QSerialPort::DataBits)), s, SLOT(dataBitsChanged(QSerialPort::DataBits)) );
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

HB_FUNC( QSERIALPORT_ONPARITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "parityChanged(QSerialPort::Parity)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(parityChanged(QSerialPort::Parity)), s, SLOT(parityChanged(QSerialPort::Parity)) );
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
    QString signal = "parityChanged(QSerialPort::Parity)";
    ret = object->disconnect(object, SIGNAL(parityChanged(QSerialPort::Parity)), s, SLOT(parityChanged(QSerialPort::Parity)) );
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

HB_FUNC( QSERIALPORT_ONSTOPBITSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "stopBitsChanged(QSerialPort::StopBits)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(stopBitsChanged(QSerialPort::StopBits)), s, SLOT(stopBitsChanged(QSerialPort::StopBits)) );
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
    QString signal = "stopBitsChanged(QSerialPort::StopBits)";
    ret = object->disconnect(object, SIGNAL(stopBitsChanged(QSerialPort::StopBits)), s, SLOT(stopBitsChanged(QSerialPort::StopBits)) );
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

HB_FUNC( QSERIALPORT_ONFLOWCONTROLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "flowControlChanged(QSerialPort::FlowControl)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(flowControlChanged(QSerialPort::FlowControl)), s, SLOT(flowControlChanged(QSerialPort::FlowControl)) );
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
    QString signal = "flowControlChanged(QSerialPort::FlowControl)";
    ret = object->disconnect(object, SIGNAL(flowControlChanged(QSerialPort::FlowControl)), s, SLOT(flowControlChanged(QSerialPort::FlowControl)) );
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

HB_FUNC( QSERIALPORT_ONDATAERRORPOLICYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)), s, SLOT(dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)) );
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
    QString signal = "dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)";
    ret = object->disconnect(object, SIGNAL(dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)), s, SLOT(dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)) );
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

HB_FUNC( QSERIALPORT_ONDATATERMINALREADYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "dataTerminalReadyChanged(bool)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(dataTerminalReadyChanged(bool)), s, SLOT(dataTerminalReadyChanged(bool)) );
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
    QString signal = "dataTerminalReadyChanged(bool)";
    ret = object->disconnect(object, SIGNAL(dataTerminalReadyChanged(bool)), s, SLOT(dataTerminalReadyChanged(bool)) );
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

HB_FUNC( QSERIALPORT_ONREQUESTTOSENDCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "requestToSendChanged(bool)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(requestToSendChanged(bool)), s, SLOT(requestToSendChanged(bool)) );
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
    QString signal = "requestToSendChanged(bool)";
    ret = object->disconnect(object, SIGNAL(requestToSendChanged(bool)), s, SLOT(requestToSendChanged(bool)) );
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

HB_FUNC( QSERIALPORT_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "error(QSerialPort::SerialPortError)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(error(QSerialPort::SerialPortError)), s, SLOT(error(QSerialPort::SerialPortError)) );
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
    QString signal = "error(QSerialPort::SerialPortError)";
    ret = object->disconnect(object, SIGNAL(error(QSerialPort::SerialPortError)), s, SLOT(error(QSerialPort::SerialPortError)) );
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

HB_FUNC( QSERIALPORT_ONSETTINGSRESTOREDONCLOSECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSerialPort(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "settingsRestoredOnCloseChanged(bool)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(settingsRestoredOnCloseChanged(bool)), s, SLOT(settingsRestoredOnCloseChanged(bool)) );
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
    QString signal = "settingsRestoredOnCloseChanged(bool)";
    ret = object->disconnect(object, SIGNAL(settingsRestoredOnCloseChanged(bool)), s, SLOT(settingsRestoredOnCloseChanged(bool)) );
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


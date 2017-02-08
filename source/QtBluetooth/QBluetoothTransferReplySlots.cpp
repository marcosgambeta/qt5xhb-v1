/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QBluetoothTransferReplySlots.h"


static SlotsQBluetoothTransferReply * s = NULL;

SlotsQBluetoothTransferReply::SlotsQBluetoothTransferReply(QObject *parent) : QObject(parent)
{
}

SlotsQBluetoothTransferReply::~SlotsQBluetoothTransferReply()
{
}

void SlotsQBluetoothTransferReply::finished(QBluetoothTransferReply * r)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QBluetoothTransferReply*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pr = hb_itemPutPtr( NULL, (QBluetoothTransferReply *) r );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pr );
    hb_itemRelease( psender );
    hb_itemRelease( pr );
  }
#endif
}

void SlotsQBluetoothTransferReply::transferProgress(qint64 bytesTransferred, qint64 bytesTotal)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "transferProgress(qint64,qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbytesTransferred = hb_itemPutNI( NULL, bytesTransferred );
    PHB_ITEM pbytesTotal = hb_itemPutNI( NULL, bytesTotal );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pbytesTransferred, pbytesTotal );
    hb_itemRelease( psender );
    hb_itemRelease( pbytesTransferred );
    hb_itemRelease( pbytesTotal );
  }
#endif
}

HB_FUNC( QBLUETOOTHTRANSFERREPLY_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothTransferReply(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "finished(QBluetoothTransferReply*)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(finished(QBluetoothTransferReply*)), s, SLOT(finished(QBluetoothTransferReply*)) );
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
    QString signal = "finished(QBluetoothTransferReply*)";
    ret = object->disconnect(object, SIGNAL(finished(QBluetoothTransferReply*)), s, SLOT(finished(QBluetoothTransferReply*)) );
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

HB_FUNC( QBLUETOOTHTRANSFERREPLY_ONTRANSFERPROGRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothTransferReply(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "transferProgress(qint64,qint64)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(transferProgress(qint64,qint64)), s, SLOT(transferProgress(qint64,qint64)) );
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
    QString signal = "transferProgress(qint64,qint64)";
    ret = object->disconnect(object, SIGNAL(transferProgress(qint64,qint64)), s, SLOT(transferProgress(qint64,qint64)) );
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


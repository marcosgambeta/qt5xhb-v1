/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QBluetoothSocketSlots.h"


static SlotsQBluetoothSocket * s = NULL;

SlotsQBluetoothSocket::SlotsQBluetoothSocket(QObject *parent) : QObject(parent)
{
}

SlotsQBluetoothSocket::~SlotsQBluetoothSocket()
{
}

void SlotsQBluetoothSocket::connected()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "connected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQBluetoothSocket::disconnected()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "disconnected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQBluetoothSocket::error(QBluetoothSocket::SocketError error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QBluetoothSocket::SocketError)" );
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

void SlotsQBluetoothSocket::stateChanged(QBluetoothSocket::SocketState state)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QBluetoothSocket::SocketState)" );
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

HB_FUNC( QBLUETOOTHSOCKET_ONCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "connected()", "connected()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QBLUETOOTHSOCKET_ONDISCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "disconnected()", "disconnected()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QBLUETOOTHSOCKET_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QBluetoothSocket::SocketError)", "error(QBluetoothSocket::SocketError)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QBLUETOOTHSOCKET_ONSTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QBluetoothSocket::SocketState)", "stateChanged(QBluetoothSocket::SocketState)" ) );
#else
  hb_retl(false);
#endif
}

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QLocalSocketSlots.h"


static SlotsQLocalSocket * s = NULL;

SlotsQLocalSocket::SlotsQLocalSocket(QObject *parent) : QObject(parent)
{
}

SlotsQLocalSocket::~SlotsQLocalSocket()
{
}

void SlotsQLocalSocket::connected ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "connected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQLocalSocket::disconnected ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "disconnected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQLocalSocket::error ( QLocalSocket::LocalSocketError socketError )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QLocalSocket::LocalSocketError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psocketError = hb_itemPutNI( NULL, (int) socketError );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psocketError );
    hb_itemRelease( psender );
    hb_itemRelease( psocketError );
  }
}

void SlotsQLocalSocket::stateChanged ( QLocalSocket::LocalSocketState socketState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QLocalSocket::LocalSocketState)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psocketState = hb_itemPutNI( NULL, (int) socketState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psocketState );
    hb_itemRelease( psender );
    hb_itemRelease( psocketState );
  }
}

HB_FUNC( QLOCALSOCKET_ONCONNECTED )
{
  if( s == NULL )
  {
    s = new SlotsQLocalSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "connected()", "connected()" ) );
}

HB_FUNC( QLOCALSOCKET_ONDISCONNECTED )
{
  if( s == NULL )
  {
    s = new SlotsQLocalSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "disconnected()", "disconnected()" ) );
}

HB_FUNC( QLOCALSOCKET_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQLocalSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QLocalSocket::LocalSocketError)", "error(QLocalSocket::LocalSocketError)" ) );
}

HB_FUNC( QLOCALSOCKET_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQLocalSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QLocalSocket::LocalSocketState)", "stateChanged(QLocalSocket::LocalSocketState)" ) );
}

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QBluetoothTransferManagerSlots.h"

QBluetoothTransferManagerSlots::QBluetoothTransferManagerSlots(QObject *parent) : QObject(parent)
{
}

QBluetoothTransferManagerSlots::~QBluetoothTransferManagerSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothTransferManagerSlots::finished( QBluetoothTransferReply * reply )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QBluetoothTransferReply*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBLUETOOTHTRANSFERMANAGER" );
    PHB_ITEM preply = Signals_return_qobject( (QObject *) reply, "QBLUETOOTHTRANSFERREPLY" );
    hb_vmEvalBlockV( cb, 2, psender, preply );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
}
#endif

void QBluetoothTransferManagerSlots_connect_signal ( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferManager * obj = (QBluetoothTransferManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QBluetoothTransferManagerSlots * s = QCoreApplication::instance()->findChild<QBluetoothTransferManagerSlots *>();

    if( s == NULL )
    {
      s = new QBluetoothTransferManagerSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

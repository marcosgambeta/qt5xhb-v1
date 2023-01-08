/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractOAuthReplyHandlerSlots.h"

QAbstractOAuthReplyHandlerSlots::QAbstractOAuthReplyHandlerSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractOAuthReplyHandlerSlots::~QAbstractOAuthReplyHandlerSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QAbstractOAuthReplyHandlerSlots::callbackDataReceived( const QByteArray & data )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "callbackDataReceived(QByteArray)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTOAUTHREPLYHANDLER");
    PHB_ITEM pdata = Qt5xHb::Signals_return_object( (void *) &data, "QBYTEARRAY" );

    hb_vmEvalBlockV( cb, 2, psender, pdata );

    hb_itemRelease( psender );
    hb_itemRelease( pdata );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QAbstractOAuthReplyHandlerSlots::replyDataReceived( const QByteArray & data )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "replyDataReceived(QByteArray)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTOAUTHREPLYHANDLER");
    PHB_ITEM pdata = Qt5xHb::Signals_return_object( (void *) &data, "QBYTEARRAY" );

    hb_vmEvalBlockV( cb, 2, psender, pdata );

    hb_itemRelease( psender );
    hb_itemRelease( pdata );
  }
}
#endif

void QAbstractOAuthReplyHandlerSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandler * obj = (QAbstractOAuthReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAbstractOAuthReplyHandlerSlots * s = QCoreApplication::instance()->findChild<QAbstractOAuthReplyHandlerSlots*>();

    if( s == NULL )
    {
      s = new QAbstractOAuthReplyHandlerSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

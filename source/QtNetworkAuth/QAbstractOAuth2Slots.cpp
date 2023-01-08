/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractOAuth2Slots.h"

QAbstractOAuth2Slots::QAbstractOAuth2Slots( QObject *parent ) : QObject( parent )
{
}

QAbstractOAuth2Slots::~QAbstractOAuth2Slots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QAbstractOAuth2Slots::clientIdentifierSharedKeyChanged( const QString & clientIdentifierSharedKey )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "clientIdentifierSharedKeyChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTOAUTH2");
    PHB_ITEM pclientIdentifierSharedKey = hb_itemPutC( NULL, QSTRINGTOSTRING(clientIdentifierSharedKey) );

    hb_vmEvalBlockV( cb, 2, psender, pclientIdentifierSharedKey );

    hb_itemRelease( psender );
    hb_itemRelease( pclientIdentifierSharedKey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QAbstractOAuth2Slots::error( const QString & error, const QString & errorDescription, const QUrl & uri )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "error(QString,QString,QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTOAUTH2");
    PHB_ITEM perror = hb_itemPutC( NULL, QSTRINGTOSTRING(error) );
    PHB_ITEM perrorDescription = hb_itemPutC( NULL, QSTRINGTOSTRING(errorDescription) );
    PHB_ITEM puri = Qt5xHb::Signals_return_object( (void *) &uri, "QURL" );

    hb_vmEvalBlockV( cb, 4, psender, perror, perrorDescription, puri );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorDescription );
    hb_itemRelease( puri );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QAbstractOAuth2Slots::expirationAtChanged( const QDateTime & expiration )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "expirationAtChanged(QDateTime)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTOAUTH2");
    PHB_ITEM pexpiration = Qt5xHb::Signals_return_object( (void *) &expiration, "QDATETIME" );

    hb_vmEvalBlockV( cb, 2, psender, pexpiration );

    hb_itemRelease( psender );
    hb_itemRelease( pexpiration );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QAbstractOAuth2Slots::responseTypeChanged( const QString & responseType )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "responseTypeChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTOAUTH2");
    PHB_ITEM presponseType = hb_itemPutC( NULL, QSTRINGTOSTRING(responseType) );

    hb_vmEvalBlockV( cb, 2, psender, presponseType );

    hb_itemRelease( psender );
    hb_itemRelease( presponseType );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QAbstractOAuth2Slots::scopeChanged( const QString & scope )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "scopeChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTOAUTH2");
    PHB_ITEM pscope = hb_itemPutC( NULL, QSTRINGTOSTRING(scope) );

    hb_vmEvalBlockV( cb, 2, psender, pscope );

    hb_itemRelease( psender );
    hb_itemRelease( pscope );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QAbstractOAuth2Slots::stateChanged( const QString & state )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stateChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTOAUTH2");
    PHB_ITEM pstate = hb_itemPutC( NULL, QSTRINGTOSTRING(state) );

    hb_vmEvalBlockV( cb, 2, psender, pstate );

    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QAbstractOAuth2Slots::userAgentChanged( const QString & userAgent )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "userAgentChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTOAUTH2");
    PHB_ITEM puserAgent = hb_itemPutC( NULL, QSTRINGTOSTRING(userAgent) );

    hb_vmEvalBlockV( cb, 2, psender, puserAgent );

    hb_itemRelease( psender );
    hb_itemRelease( puserAgent );
  }
}
#endif

void QAbstractOAuth2Slots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth2 * obj = (QAbstractOAuth2 *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAbstractOAuth2Slots * s = QCoreApplication::instance()->findChild<QAbstractOAuth2Slots*>();

    if( s == NULL )
    {
      s = new QAbstractOAuth2Slots();
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

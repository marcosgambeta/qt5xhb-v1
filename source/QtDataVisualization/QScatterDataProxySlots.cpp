/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QScatterDataProxySlots.h"

QScatterDataProxySlots::QScatterDataProxySlots(QObject *parent) : QObject(parent)
{
}

QScatterDataProxySlots::~QScatterDataProxySlots()
{
}
void QScatterDataProxySlots::arrayReset()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "arrayReset()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCATTERDATAPROXY" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QScatterDataProxySlots::itemCountChanged( int count )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemCountChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCATTERDATAPROXY" );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcount );
    hb_itemRelease( psender );
    hb_itemRelease( pcount );
  }
}
void QScatterDataProxySlots::itemsAdded( int startIndex, int count )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemsAdded(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCATTERDATAPROXY" );
    PHB_ITEM pstartIndex = hb_itemPutNI( NULL, startIndex );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstartIndex, pcount );
    hb_itemRelease( psender );
    hb_itemRelease( pstartIndex );
    hb_itemRelease( pcount );
  }
}
void QScatterDataProxySlots::itemsChanged( int startIndex, int count )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemsChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCATTERDATAPROXY" );
    PHB_ITEM pstartIndex = hb_itemPutNI( NULL, startIndex );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstartIndex, pcount );
    hb_itemRelease( psender );
    hb_itemRelease( pstartIndex );
    hb_itemRelease( pcount );
  }
}
void QScatterDataProxySlots::itemsInserted( int startIndex, int count )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemsInserted(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCATTERDATAPROXY" );
    PHB_ITEM pstartIndex = hb_itemPutNI( NULL, startIndex );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstartIndex, pcount );
    hb_itemRelease( psender );
    hb_itemRelease( pstartIndex );
    hb_itemRelease( pcount );
  }
}
void QScatterDataProxySlots::itemsRemoved( int startIndex, int count )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemsRemoved(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCATTERDATAPROXY" );
    PHB_ITEM pstartIndex = hb_itemPutNI( NULL, startIndex );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstartIndex, pcount );
    hb_itemRelease( psender );
    hb_itemRelease( pstartIndex );
    hb_itemRelease( pcount );
  }
}
void QScatterDataProxySlots::seriesChanged( QScatter3DSeries * series )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "seriesChanged(QScatter3DSeries*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCATTERDATAPROXY" );
    PHB_ITEM pseries = Signals_return_qobject( (QObject *) series, "QSCATTER3DSERIES" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pseries );
    hb_itemRelease( psender );
    hb_itemRelease( pseries );
  }
}

void QScatterDataProxySlots_connect_signal ( const QString & signal, const QString & slot )
{
  QScatterDataProxy * obj = (QScatterDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QScatterDataProxySlots * s = QCoreApplication::instance()->findChild<QScatterDataProxySlots *>();

    if( s == NULL )
    {
      s = new QScatterDataProxySlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}

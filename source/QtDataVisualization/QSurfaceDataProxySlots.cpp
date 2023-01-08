/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSurfaceDataProxySlots.h"

QSurfaceDataProxySlots::QSurfaceDataProxySlots( QObject *parent ) : QObject( parent )
{
}

QSurfaceDataProxySlots::~QSurfaceDataProxySlots()
{
}

void QSurfaceDataProxySlots::arrayReset()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "arrayReset()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSURFACEDATAPROXY");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QSurfaceDataProxySlots::columnCountChanged( int count )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnCountChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSURFACEDATAPROXY");
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );

    hb_vmEvalBlockV( cb, 2, psender, pcount );

    hb_itemRelease( psender );
    hb_itemRelease( pcount );
  }
}

void QSurfaceDataProxySlots::itemChanged( int rowIndex, int columnIndex )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "itemChanged(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSURFACEDATAPROXY");
    PHB_ITEM prowIndex = hb_itemPutNI( NULL, rowIndex );
    PHB_ITEM pcolumnIndex = hb_itemPutNI( NULL, columnIndex );

    hb_vmEvalBlockV( cb, 3, psender, prowIndex, pcolumnIndex );

    hb_itemRelease( psender );
    hb_itemRelease( prowIndex );
    hb_itemRelease( pcolumnIndex );
  }
}

void QSurfaceDataProxySlots::rowCountChanged( int count )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowCountChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSURFACEDATAPROXY");
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );

    hb_vmEvalBlockV( cb, 2, psender, pcount );

    hb_itemRelease( psender );
    hb_itemRelease( pcount );
  }
}

void QSurfaceDataProxySlots::rowsAdded( int startIndex, int count )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowsAdded(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSURFACEDATAPROXY");
    PHB_ITEM pstartIndex = hb_itemPutNI( NULL, startIndex );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );

    hb_vmEvalBlockV( cb, 3, psender, pstartIndex, pcount );

    hb_itemRelease( psender );
    hb_itemRelease( pstartIndex );
    hb_itemRelease( pcount );
  }
}

void QSurfaceDataProxySlots::rowsChanged( int startIndex, int count )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowsChanged(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSURFACEDATAPROXY");
    PHB_ITEM pstartIndex = hb_itemPutNI( NULL, startIndex );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );

    hb_vmEvalBlockV( cb, 3, psender, pstartIndex, pcount );

    hb_itemRelease( psender );
    hb_itemRelease( pstartIndex );
    hb_itemRelease( pcount );
  }
}

void QSurfaceDataProxySlots::rowsInserted( int startIndex, int count )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowsInserted(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSURFACEDATAPROXY");
    PHB_ITEM pstartIndex = hb_itemPutNI( NULL, startIndex );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );

    hb_vmEvalBlockV( cb, 3, psender, pstartIndex, pcount );

    hb_itemRelease( psender );
    hb_itemRelease( pstartIndex );
    hb_itemRelease( pcount );
  }
}

void QSurfaceDataProxySlots::rowsRemoved( int startIndex, int count )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowsRemoved(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSURFACEDATAPROXY");
    PHB_ITEM pstartIndex = hb_itemPutNI( NULL, startIndex );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );

    hb_vmEvalBlockV( cb, 3, psender, pstartIndex, pcount );

    hb_itemRelease( psender );
    hb_itemRelease( pstartIndex );
    hb_itemRelease( pcount );
  }
}

void QSurfaceDataProxySlots::seriesChanged( QSurface3DSeries * series )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "seriesChanged(QSurface3DSeries*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSURFACEDATAPROXY");
    PHB_ITEM pseries = Qt5xHb::Signals_return_qobject(series, "QSURFACE3DSERIES");

    hb_vmEvalBlockV( cb, 2, psender, pseries );

    hb_itemRelease( psender );
    hb_itemRelease( pseries );
  }
}

void QSurfaceDataProxySlots_connect_signal( const QString & signal, const QString & slot )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QSurfaceDataProxySlots * s = QCoreApplication::instance()->findChild<QSurfaceDataProxySlots*>();

    if( s == NULL )
    {
      s = new QSurfaceDataProxySlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractItemModelSlots.h"

QAbstractItemModelSlots::QAbstractItemModelSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractItemModelSlots::~QAbstractItemModelSlots()
{
}

void QAbstractItemModelSlots::columnsAboutToBeInserted( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnsAboutToBeInserted(QModelIndex,int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM pparent = Qt5xHb::Signals_return_object( (void *) &parent, "QMODELINDEX" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 4, psender, pparent, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QAbstractItemModelSlots::columnsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM psourceParent = Qt5xHb::Signals_return_object( (void *) &sourceParent, "QMODELINDEX" );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = Qt5xHb::Signals_return_object( (void *) &destinationParent, "QMODELINDEX" );
    PHB_ITEM pdestinationColumn = hb_itemPutNI( NULL, destinationColumn );

    hb_vmEvalBlockV( cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationColumn );

    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationColumn );
  }
}

void QAbstractItemModelSlots::columnsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnsAboutToBeRemoved(QModelIndex,int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM pparent = Qt5xHb::Signals_return_object( (void *) &parent, "QMODELINDEX" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 4, psender, pparent, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QAbstractItemModelSlots::columnsInserted( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnsInserted(QModelIndex,int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM pparent = Qt5xHb::Signals_return_object( (void *) &parent, "QMODELINDEX" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 4, psender, pparent, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QAbstractItemModelSlots::columnsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnsMoved(QModelIndex,int,int,QModelIndex,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM psourceParent = Qt5xHb::Signals_return_object( (void *) &sourceParent, "QMODELINDEX" );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = Qt5xHb::Signals_return_object( (void *) &destinationParent, "QMODELINDEX" );
    PHB_ITEM pdestinationColumn = hb_itemPutNI( NULL, destinationColumn );

    hb_vmEvalBlockV( cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationColumn );

    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationColumn );
  }
}

void QAbstractItemModelSlots::columnsRemoved( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnsRemoved(QModelIndex,int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM pparent = Qt5xHb::Signals_return_object( (void *) &parent, "QMODELINDEX" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 4, psender, pparent, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QAbstractItemModelSlots::dataChanged( const QModelIndex & topLeft, const QModelIndex & bottomRight )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "dataChanged(QModelIndex,QModelIndex)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM ptopLeft = Qt5xHb::Signals_return_object( (void *) &topLeft, "QMODELINDEX" );
    PHB_ITEM pbottomRight = Qt5xHb::Signals_return_object( (void *) &bottomRight, "QMODELINDEX" );

    hb_vmEvalBlockV( cb, 3, psender, ptopLeft, pbottomRight );

    hb_itemRelease( psender );
    hb_itemRelease( ptopLeft );
    hb_itemRelease( pbottomRight );
  }
}

void QAbstractItemModelSlots::headerDataChanged( Qt::Orientation orientation, int first, int last )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "headerDataChanged(Qt::Orientation,int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );
    PHB_ITEM pfirst = hb_itemPutNI( NULL, first );
    PHB_ITEM plast = hb_itemPutNI( NULL, last );

    hb_vmEvalBlockV( cb, 4, psender, porientation, pfirst, plast );

    hb_itemRelease( psender );
    hb_itemRelease( porientation );
    hb_itemRelease( pfirst );
    hb_itemRelease( plast );
  }
}

void QAbstractItemModelSlots::layoutAboutToBeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "layoutAboutToBeChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractItemModelSlots::layoutChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "layoutChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractItemModelSlots::modelAboutToBeReset()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "modelAboutToBeReset()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractItemModelSlots::modelReset()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "modelReset()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractItemModelSlots::rowsAboutToBeInserted( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowsAboutToBeInserted(QModelIndex,int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM pparent = Qt5xHb::Signals_return_object( (void *) &parent, "QMODELINDEX" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 4, psender, pparent, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QAbstractItemModelSlots::rowsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM psourceParent = Qt5xHb::Signals_return_object( (void *) &sourceParent, "QMODELINDEX" );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = Qt5xHb::Signals_return_object( (void *) &destinationParent, "QMODELINDEX" );
    PHB_ITEM pdestinationRow = hb_itemPutNI( NULL, destinationRow );

    hb_vmEvalBlockV( cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationRow );

    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationRow );
  }
}

void QAbstractItemModelSlots::rowsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowsAboutToBeRemoved(QModelIndex,int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM pparent = Qt5xHb::Signals_return_object( (void *) &parent, "QMODELINDEX" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 4, psender, pparent, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QAbstractItemModelSlots::rowsInserted( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowsInserted(QModelIndex,int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM pparent = Qt5xHb::Signals_return_object( (void *) &parent, "QMODELINDEX" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 4, psender, pparent, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QAbstractItemModelSlots::rowsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowsMoved(QModelIndex,int,int,QModelIndex,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM psourceParent = Qt5xHb::Signals_return_object( (void *) &sourceParent, "QMODELINDEX" );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = Qt5xHb::Signals_return_object( (void *) &destinationParent, "QMODELINDEX" );
    PHB_ITEM pdestinationRow = hb_itemPutNI( NULL, destinationRow );

    hb_vmEvalBlockV( cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationRow );

    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationRow );
  }
}

void QAbstractItemModelSlots::rowsRemoved( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowsRemoved(QModelIndex,int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTITEMMODEL" );
    PHB_ITEM pparent = Qt5xHb::Signals_return_object( (void *) &parent, "QMODELINDEX" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 4, psender, pparent, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QAbstractItemModelSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractItemModelSlots * s = QCoreApplication::instance()->findChild<QAbstractItemModelSlots *>();

    if( s == NULL )
    {
      s = new QAbstractItemModelSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}

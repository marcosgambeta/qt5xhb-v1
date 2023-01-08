/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractItemDelegateSlots.h"

QAbstractItemDelegateSlots::QAbstractItemDelegateSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractItemDelegateSlots::~QAbstractItemDelegateSlots()
{
}

void QAbstractItemDelegateSlots::closeEditor( QWidget * editor, QAbstractItemDelegate::EndEditHint hint )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTITEMDELEGATE");
    PHB_ITEM peditor = Qt5xHb::Signals_return_qobject(editor, "QWIDGET");
    PHB_ITEM phint = hb_itemPutNI( NULL, (int) hint );

    hb_vmEvalBlockV( cb, 3, psender, peditor, phint );

    hb_itemRelease( psender );
    hb_itemRelease( peditor );
    hb_itemRelease( phint );
  }
}

void QAbstractItemDelegateSlots::commitData( QWidget * editor )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "commitData(QWidget*)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTITEMDELEGATE");
    PHB_ITEM peditor = Qt5xHb::Signals_return_qobject(editor, "QWIDGET");

    hb_vmEvalBlockV( cb, 2, psender, peditor );

    hb_itemRelease( psender );
    hb_itemRelease( peditor );
  }
}

void QAbstractItemDelegateSlots::sizeHintChanged( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "sizeHintChanged(QModelIndex)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTITEMDELEGATE");
    PHB_ITEM pindex = Qt5xHb::Signals_return_object( (void *) &index, "QMODELINDEX" );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QAbstractItemDelegateSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAbstractItemDelegateSlots * s = QCoreApplication::instance()->findChild<QAbstractItemDelegateSlots*>();

    if( s == NULL )
    {
      s = new QAbstractItemDelegateSlots();
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

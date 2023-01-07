/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVirtualKeyboardSelectionListModelSlots.h"

QVirtualKeyboardSelectionListModelSlots::QVirtualKeyboardSelectionListModelSlots( QObject *parent ) : QObject( parent )
{
}

QVirtualKeyboardSelectionListModelSlots::~QVirtualKeyboardSelectionListModelSlots()
{
}

void QVirtualKeyboardSelectionListModelSlots::countChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "countChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIRTUALKEYBOARDSELECTIONLISTMODEL");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QVirtualKeyboardSelectionListModelSlots::activeItemChanged( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "activeItemChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIRTUALKEYBOARDSELECTIONLISTMODEL");
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QVirtualKeyboardSelectionListModelSlots::itemSelected( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "itemSelected(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIRTUALKEYBOARDSELECTIONLISTMODEL");
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QVirtualKeyboardSelectionListModelSlots_connect_signal( const QString & signal, const QString & slot )
{
  QVirtualKeyboardSelectionListModel * obj = (QVirtualKeyboardSelectionListModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVirtualKeyboardSelectionListModelSlots * s = QCoreApplication::instance()->findChild<QVirtualKeyboardSelectionListModelSlots *>();

    if( s == NULL )
    {
      s = new QVirtualKeyboardSelectionListModelSlots();
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

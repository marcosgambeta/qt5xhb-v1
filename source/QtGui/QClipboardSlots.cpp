/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QClipboardSlots.h"

QClipboardSlots::QClipboardSlots( QObject *parent ) : QObject( parent )
{
}

QClipboardSlots::~QClipboardSlots()
{
}

void QClipboardSlots::changed( QClipboard::Mode mode )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "changed(QClipboard::Mode)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCLIPBOARD" );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );

    hb_vmEvalBlockV( cb, 2, psender, pmode );

    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void QClipboardSlots::dataChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "dataChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCLIPBOARD" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QClipboardSlots::findBufferChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "findBufferChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCLIPBOARD" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QClipboardSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "selectionChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCLIPBOARD" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QClipboardSlots_connect_signal( const QString & signal, const QString & slot )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QClipboardSlots * s = QCoreApplication::instance()->findChild<QClipboardSlots *>();

    if( s == NULL )
    {
      s = new QClipboardSlots();
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

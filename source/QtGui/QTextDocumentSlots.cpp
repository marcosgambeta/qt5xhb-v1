/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTextDocumentSlots.h"

QTextDocumentSlots::QTextDocumentSlots( QObject *parent ) : QObject( parent )
{
}

QTextDocumentSlots::~QTextDocumentSlots()
{
}

void QTextDocumentSlots::contentsChange( int from, int charsRemoves, int charsAdded )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "contentsChange(int,int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTDOCUMENT");
    PHB_ITEM pfrom = hb_itemPutNI( NULL, from );
    PHB_ITEM pcharsRemoves = hb_itemPutNI( NULL, charsRemoves );
    PHB_ITEM pcharsAdded = hb_itemPutNI( NULL, charsAdded );

    hb_vmEvalBlockV( cb, 4, psender, pfrom, pcharsRemoves, pcharsAdded );

    hb_itemRelease( psender );
    hb_itemRelease( pfrom );
    hb_itemRelease( pcharsRemoves );
    hb_itemRelease( pcharsAdded );
  }
}

void QTextDocumentSlots::contentsChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "contentsChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTDOCUMENT");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QTextDocumentSlots::undoAvailable( bool b )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "undoAvailable(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTDOCUMENT");
    PHB_ITEM pb = hb_itemPutL( NULL, b );

    hb_vmEvalBlockV( cb, 2, psender, pb );

    hb_itemRelease( psender );
    hb_itemRelease( pb );
  }
}

void QTextDocumentSlots::redoAvailable( bool b )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "redoAvailable(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTDOCUMENT");
    PHB_ITEM pb = hb_itemPutL( NULL, b );

    hb_vmEvalBlockV( cb, 2, psender, pb );

    hb_itemRelease( psender );
    hb_itemRelease( pb );
  }
}

void QTextDocumentSlots::undoCommandAdded()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "undoCommandAdded()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTDOCUMENT");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QTextDocumentSlots::modificationChanged( bool m )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "modificationChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTDOCUMENT");
    PHB_ITEM pm = hb_itemPutL( NULL, m );

    hb_vmEvalBlockV( cb, 2, psender, pm );

    hb_itemRelease( psender );
    hb_itemRelease( pm );
  }
}

void QTextDocumentSlots::cursorPositionChanged( const QTextCursor & cursor )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "cursorPositionChanged(QTextCursor)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTDOCUMENT");
    PHB_ITEM pcursor = Qt5xHb::Signals_return_object( (void *) &cursor, "QTEXTCURSOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcursor );

    hb_itemRelease( psender );
    hb_itemRelease( pcursor );
  }
}

void QTextDocumentSlots::blockCountChanged( int newBlockCount )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "blockCountChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTDOCUMENT");
    PHB_ITEM pnewBlockCount = hb_itemPutNI( NULL, newBlockCount );

    hb_vmEvalBlockV( cb, 2, psender, pnewBlockCount );

    hb_itemRelease( psender );
    hb_itemRelease( pnewBlockCount );
  }
}

void QTextDocumentSlots::documentLayoutChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "documentLayoutChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTDOCUMENT");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QTextDocumentSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTextDocument * obj = (QTextDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QTextDocumentSlots * s = QCoreApplication::instance()->findChild<QTextDocumentSlots*>();

    if( s == NULL )
    {
      s = new QTextDocumentSlots();
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

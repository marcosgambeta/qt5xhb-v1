/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QTextDocumentSlots.h"


static SlotsQTextDocument * s = NULL;

SlotsQTextDocument::SlotsQTextDocument(QObject *parent) : QObject(parent)
{
}

SlotsQTextDocument::~SlotsQTextDocument()
{
}

void SlotsQTextDocument::contentsChange(int from, int charsRemoves, int charsAdded)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsChange(int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfrom = hb_itemPutNI( NULL, from );
    PHB_ITEM pcharsRemoves = hb_itemPutNI( NULL, charsRemoves );
    PHB_ITEM pcharsAdded = hb_itemPutNI( NULL, charsAdded );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pfrom, pcharsRemoves, pcharsAdded );
    hb_itemRelease( psender );
    hb_itemRelease( pfrom );
    hb_itemRelease( pcharsRemoves );
    hb_itemRelease( pcharsAdded );
  }
}

void SlotsQTextDocument::contentsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQTextDocument::undoAvailable(bool b)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pb = hb_itemPutL( NULL, b );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pb );
    hb_itemRelease( psender );
    hb_itemRelease( pb );
  }
}

void SlotsQTextDocument::redoAvailable(bool b)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pb = hb_itemPutL( NULL, b );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pb );
    hb_itemRelease( psender );
    hb_itemRelease( pb );
  }
}

void SlotsQTextDocument::undoCommandAdded()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoCommandAdded()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQTextDocument::modificationChanged(bool m)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modificationChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pm = hb_itemPutL( NULL, m );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pm );
    hb_itemRelease( psender );
    hb_itemRelease( pm );
  }
}

void SlotsQTextDocument::cursorPositionChanged(const QTextCursor &cursor)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cursorPositionChanged(QTextCursor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcursor = hb_itemPutPtr( NULL, (QTextCursor *) &cursor );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcursor );
    hb_itemRelease( psender );
    hb_itemRelease( pcursor );
  }
}

void SlotsQTextDocument::blockCountChanged(int newBlockCount)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blockCountChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewBlockCount = hb_itemPutNI( NULL, newBlockCount );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewBlockCount );
    hb_itemRelease( psender );
    hb_itemRelease( pnewBlockCount );
  }
}

void SlotsQTextDocument::documentLayoutChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "documentLayoutChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QTEXTDOCUMENT_ONCONTENTSCHANGE )
{
  if( s == NULL )
  {
    s = new SlotsQTextDocument(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contentsChange(int,int,int)", "contentsChange(int,int,int)" ) );

}

HB_FUNC( QTEXTDOCUMENT_ONCONTENTSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTextDocument(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contentsChanged()", "contentsChanged()" ) );

}

HB_FUNC( QTEXTDOCUMENT_ONUNDOAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQTextDocument(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "undoAvailable(bool)", "undoAvailable(bool)" ) );

}

HB_FUNC( QTEXTDOCUMENT_ONREDOAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQTextDocument(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "redoAvailable(bool)", "redoAvailable(bool)" ) );

}

HB_FUNC( QTEXTDOCUMENT_ONUNDOCOMMANDADDED )
{
  if( s == NULL )
  {
    s = new SlotsQTextDocument(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "undoCommandAdded()", "undoCommandAdded()" ) );

}

HB_FUNC( QTEXTDOCUMENT_ONMODIFICATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTextDocument(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "modificationChanged(bool)", "modificationChanged(bool)" ) );

}

HB_FUNC( QTEXTDOCUMENT_ONCURSORPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTextDocument(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cursorPositionChanged(QTextCursor)", "cursorPositionChanged(QTextCursor)" ) );

}

HB_FUNC( QTEXTDOCUMENT_OBBLOCKCOUNTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTextDocument(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "blockCountChanged(int)", "blockCountChanged(int)" ) );

}

HB_FUNC( QTEXTDOCUMENT_ONDOCUMENTLAYOUTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTextDocument(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "documentLayoutChanged()", "documentLayoutChanged()" ) );

}

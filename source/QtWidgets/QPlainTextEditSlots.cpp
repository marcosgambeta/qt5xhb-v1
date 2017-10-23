/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QPlainTextEditSlots.h"


static SlotsQPlainTextEdit * s = NULL;

SlotsQPlainTextEdit::SlotsQPlainTextEdit(QObject *parent) : QObject(parent)
{
}

SlotsQPlainTextEdit::~SlotsQPlainTextEdit()
{
}

void SlotsQPlainTextEdit::blockCountChanged ( int newBlockCount )
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

void SlotsQPlainTextEdit::copyAvailable ( bool yes )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "copyAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pyes = hb_itemPutL( NULL, yes );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pyes );
    hb_itemRelease( psender );
    hb_itemRelease( pyes );
  }
}

void SlotsQPlainTextEdit::cursorPositionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cursorPositionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQPlainTextEdit::modificationChanged ( bool changed )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modificationChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchanged = hb_itemPutL( NULL, changed );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchanged );
    hb_itemRelease( psender );
    hb_itemRelease( pchanged );
  }
}

void SlotsQPlainTextEdit::redoAvailable ( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQPlainTextEdit::selectionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQPlainTextEdit::textChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQPlainTextEdit::undoAvailable ( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQPlainTextEdit::updateRequest ( const QRect & rect, int dy )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updateRequest(QRect,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prect = hb_itemPutPtr( NULL, (QRect *) &rect );
    PHB_ITEM pdy = hb_itemPutNI( NULL, dy );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prect, pdy );
    hb_itemRelease( psender );
    hb_itemRelease( prect );
    hb_itemRelease( pdy );
  }
}

HB_FUNC( QPLAINTEXTEDIT_ONBLOCKCOUNTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPlainTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "blockCountChanged(int)", "blockCountChanged(int)" ) );
}

HB_FUNC( QPLAINTEXTEDIT_ONCOPYAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQPlainTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "copyAvailable(bool)", "copyAvailable(bool)" ) );
}

HB_FUNC( QPLAINTEXTEDIT_ONCURSORPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPlainTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cursorPositionChanged()", "cursorPositionChanged()" ) );
}

HB_FUNC( QPLAINTEXTEDIT_ONMODIFICATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPlainTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "modificationChanged(bool)", "modificationChanged(bool)" ) );
}

HB_FUNC( QPLAINTEXTEDIT_ONREDOAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQPlainTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "redoAvailable(bool)", "redoAvailable(bool)" ) );
}

HB_FUNC( QPLAINTEXTEDIT_ONSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPlainTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged()", "selectionChanged()" ) );
}

HB_FUNC( QPLAINTEXTEDIT_ONTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPlainTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "textChanged()", "textChanged()" ) );
}

HB_FUNC( QPLAINTEXTEDIT_ONUNDOAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQPlainTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "undoAvailable(bool)", "undoAvailable(bool)" ) );
}

HB_FUNC( QPLAINTEXTEDIT_ONUPDATEREQUEST )
{
  if( s == NULL )
  {
    s = new SlotsQPlainTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "updateRequest(QRect,int)", "updateRequest(QRect,int)" ) );
}

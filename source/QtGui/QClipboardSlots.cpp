/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QClipboardSlots.h"


static SlotsQClipboard * s = NULL;

SlotsQClipboard::SlotsQClipboard(QObject *parent) : QObject(parent)
{
}

SlotsQClipboard::~SlotsQClipboard()
{
}

void SlotsQClipboard::changed ( QClipboard::Mode mode )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "changed(QClipboard::Mode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void SlotsQClipboard::dataChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQClipboard::findBufferChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "findBufferChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQClipboard::selectionChanged ()
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

HB_FUNC( QCLIPBOARD_ONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQClipboard(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "changed(QClipboard::Mode)", "changed(QClipboard::Mode)" ) );

}

HB_FUNC( QCLIPBOARD_ONDATACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQClipboard(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "dataChanged()", "dataChanged()" ) );

}

HB_FUNC( QCLIPBOARD_ONFINDBUFFERCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQClipboard(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "findBufferChanged()", "findBufferChanged()" ) );

}

HB_FUNC( QCLIPBOARD_ONSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQClipboard(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged()", "selectionChanged()" ) );

}

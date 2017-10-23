/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QAbstractTextDocumentLayoutSlots.h"


static SlotsQAbstractTextDocumentLayout * s = NULL;

SlotsQAbstractTextDocumentLayout::SlotsQAbstractTextDocumentLayout(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractTextDocumentLayout::~SlotsQAbstractTextDocumentLayout()
{
}

void SlotsQAbstractTextDocumentLayout::documentSizeChanged ( const QSizeF & newSize )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "documentSizeChanged(QSizeF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewSize = hb_itemPutPtr( NULL, (QSizeF *) &newSize );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewSize );
    hb_itemRelease( psender );
    hb_itemRelease( pnewSize );
  }
}

void SlotsQAbstractTextDocumentLayout::pageCountChanged ( int newPages )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pageCountChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewPages = hb_itemPutNI( NULL, newPages );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewPages );
    hb_itemRelease( psender );
    hb_itemRelease( pnewPages );
  }
}

void SlotsQAbstractTextDocumentLayout::update ( const QRectF & rect )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "update(QRectF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prect = hb_itemPutPtr( NULL, (QRectF *) &rect );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prect );
    hb_itemRelease( psender );
    hb_itemRelease( prect );
  }
}

void SlotsQAbstractTextDocumentLayout::updateBlock ( const QTextBlock & block )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updateBlock(QTextBlock)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pblock = hb_itemPutPtr( NULL, (QTextBlock *) &block );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pblock );
    hb_itemRelease( psender );
    hb_itemRelease( pblock );
  }
}

HB_FUNC( QABSTRACTTEXTDOCUMENTLAYOUT_ONDOCUMENTSIZECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractTextDocumentLayout(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "documentSizeChanged(QSizeF)", "documentSizeChanged(QSizeF)" ) );

}

HB_FUNC( QABSTRACTTEXTDOCUMENTLAYOUT_ONPAGECOUNTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractTextDocumentLayout(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "pageCountChanged(int)", "pageCountChanged(int)" ) );

}

HB_FUNC( QABSTRACTTEXTDOCUMENTLAYOUT_ONUPDATE )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractTextDocumentLayout(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "update(QRectF)", "update(QRectF)" ) );

}

HB_FUNC( QABSTRACTTEXTDOCUMENTLAYOUT_ONUPDATEBLOCK )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractTextDocumentLayout(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "updateBlock(QTextBlock)", "updateBlock(QTextBlock)" ) );

}

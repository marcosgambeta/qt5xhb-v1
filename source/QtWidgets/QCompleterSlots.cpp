/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QCompleterSlots.h"


static SlotsQCompleter * s = NULL;

SlotsQCompleter::SlotsQCompleter(QObject *parent) : QObject(parent)
{
}

SlotsQCompleter::~SlotsQCompleter()
{
}

void SlotsQCompleter::activated ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void SlotsQCompleter::activated ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQCompleter::highlighted ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "highlighted(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void SlotsQCompleter::highlighted ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "highlighted(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

HB_FUNC( QCOMPLETER_ONACTIVATED1 )
{
  if( s == NULL )
  {
    s = new SlotsQCompleter(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activated(QString)", "activated(QString)" ) );
}

HB_FUNC( QCOMPLETER_ONACTIVATED2 )
{
  if( s == NULL )
  {
    s = new SlotsQCompleter(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activated(QModelIndex)", "activated(QModelIndex)" ) );
}

HB_FUNC( QCOMPLETER_ONHIGHLIGHTED1 )
{
  if( s == NULL )
  {
    s = new SlotsQCompleter(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "highlighted(QString)", "highlighted(QString)" ) );
}

HB_FUNC( QCOMPLETER_ONHIGHLIGHTED2 )
{
  if( s == NULL )
  {
    s = new SlotsQCompleter(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "highlighted(QModelIndex)", "highlighted(QModelIndex)" ) );
}

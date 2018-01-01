/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QHelpSearchEngineSlots.h"


static SlotsQHelpSearchEngine * s = NULL;

SlotsQHelpSearchEngine::SlotsQHelpSearchEngine(QObject *parent) : QObject(parent)
{
}

SlotsQHelpSearchEngine::~SlotsQHelpSearchEngine()
{
}

void SlotsQHelpSearchEngine::indexingFinished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexingFinished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQHelpSearchEngine::indexingStarted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexingStarted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQHelpSearchEngine::searchingFinished ( int hits )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "searchingFinished(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM phits = hb_itemPutNI( NULL, hits );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, phits );
    hb_itemRelease( psender );
    hb_itemRelease( phits );
  }
}

void SlotsQHelpSearchEngine::searchingStarted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "searchingStarted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QHELPSEARCHENGINE_ONINDEXINGFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpSearchEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "indexingFinished()", "indexingFinished()" ) );
}

HB_FUNC( QHELPSEARCHENGINE_ONINDEXINGSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpSearchEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "indexingStarted()", "indexingStarted()" ) );
}

HB_FUNC( QHELPSEARCHENGINE_ONSEARCHINGFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpSearchEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "searchingFinished(int)", "searchingFinished(int)" ) );
}

HB_FUNC( QHELPSEARCHENGINE_ONSEARCHINGSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpSearchEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "searchingStarted()", "searchingStarted()" ) );
}

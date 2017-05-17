/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QHelpEngineCoreSlots.h"


static SlotsQHelpEngineCore * s = NULL;

SlotsQHelpEngineCore::SlotsQHelpEngineCore(QObject *parent) : QObject(parent)
{
}

SlotsQHelpEngineCore::~SlotsQHelpEngineCore()
{
}

void SlotsQHelpEngineCore::currentFilterChanged ( const QString & newFilter )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentFilterChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewFilter = hb_itemPutC( NULL, RQSTRING(newFilter) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewFilter );
    hb_itemRelease( psender );
    hb_itemRelease( pnewFilter );
  }
}

void SlotsQHelpEngineCore::setupFinished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "setupFinished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQHelpEngineCore::setupStarted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "setupStarted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQHelpEngineCore::warning ( const QString & msg )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "warning(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmsg = hb_itemPutC( NULL, RQSTRING(msg) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmsg );
    hb_itemRelease( psender );
    hb_itemRelease( pmsg );
  }
}

HB_FUNC( QHELPENGINECORE_ONCURRENTFILTERCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpEngineCore(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentFilterChanged(QString)", "currentFilterChanged(QString)" ) );
}

HB_FUNC( QHELPENGINECORE_ONSETUPFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpEngineCore(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "setupFinished()", "setupFinished()" ) );
}

HB_FUNC( QHELPENGINECORE_ONSETUPSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpEngineCore(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "setupStarted()", "setupStarted()" ) );
}

HB_FUNC( QHELPENGINECORE_ONWARNING )
{
  if( s == NULL )
  {
    s = new SlotsQHelpEngineCore(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "warning(QString)", "warning(QString)" ) );
}

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QActionSlots.h"


static SlotsQAction * s = NULL;

SlotsQAction::SlotsQAction(QObject *parent) : QObject(parent)
{
}

SlotsQAction::~SlotsQAction()
{
}

void SlotsQAction::changed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "changed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAction::hovered()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAction::toggled( bool checked )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "toggled(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

void SlotsQAction::triggered( bool checked )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "triggered(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

HB_FUNC( QACTION_ONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAction(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "changed()", "changed()" ) );
}

HB_FUNC( QACTION_ONHOVERED )
{
  if( s == NULL )
  {
    s = new SlotsQAction(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "hovered()", "hovered()" ) );
}

HB_FUNC( QACTION_ONTOGGLED )
{
  if( s == NULL )
  {
    s = new SlotsQAction(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "toggled(bool)", "toggled(bool)" ) );
}

HB_FUNC( QACTION_ONTRIGGERED )
{
  if( s == NULL )
  {
    s = new SlotsQAction(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "triggered(bool)", "triggered(bool)" ) );
}

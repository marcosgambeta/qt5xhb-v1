/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QActionGroupSlots.h"


static SlotsQActionGroup * s = NULL;

SlotsQActionGroup::SlotsQActionGroup(QObject *parent) : QObject(parent)
{
}

SlotsQActionGroup::~SlotsQActionGroup()
{
}

void SlotsQActionGroup::hovered ( QAction * action )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered(QAction*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paction = hb_itemPutPtr( NULL, (QAction *) action );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paction );
    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void SlotsQActionGroup::triggered ( QAction * action )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "triggered(QAction*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paction = hb_itemPutPtr( NULL, (QAction *) action );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paction );
    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

HB_FUNC( QACTIONGROUP_ONHOVERED )
{
  if( s == NULL )
  {
    s = new SlotsQActionGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "hovered(QAction*)", "hovered(QAction*)" ) );
}

HB_FUNC( QACTIONGROUP_ONTRIGGERED )
{
  if( s == NULL )
  {
    s = new SlotsQActionGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "triggered(QAction*)", "triggered(QAction*)" ) );
}

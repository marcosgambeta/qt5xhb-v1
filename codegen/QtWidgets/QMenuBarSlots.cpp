%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QMenuBarSlots.h"


static SlotsQMenuBar * s = NULL;

SlotsQMenuBar::SlotsQMenuBar(QObject *parent) : QObject(parent)
{
}

SlotsQMenuBar::~SlotsQMenuBar()
{
}

void SlotsQMenuBar::hovered ( QAction * action )
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

void SlotsQMenuBar::triggered ( QAction * action )
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

HB_FUNC( QMENUBAR_ONHOVERED )
{
  if( s == NULL )
  {
    s = new SlotsQMenuBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "hovered(QAction*)", "hovered(QAction*)" ) );
}

HB_FUNC( QMENUBAR_ONTRIGGERED )
{
  if( s == NULL )
  {
    s = new SlotsQMenuBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "triggered(QAction*)", "triggered(QAction*)" ) );
}

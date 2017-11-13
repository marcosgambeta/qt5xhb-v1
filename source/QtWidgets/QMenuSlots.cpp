/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QMenuSlots.h"


static SlotsQMenu * s = NULL;

SlotsQMenu::SlotsQMenu(QObject *parent) : QObject(parent)
{
}

SlotsQMenu::~SlotsQMenu()
{
}

void SlotsQMenu::aboutToHide ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToHide()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMenu::aboutToShow ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToShow()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMenu::hovered ( QAction * action )
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

void SlotsQMenu::triggered ( QAction * action )
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

HB_FUNC( QMENU_ONABOUTTOHIDE )
{
  if( s == NULL )
  {
    s = new SlotsQMenu(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToHide()", "aboutToHide()" ) );
}

HB_FUNC( QMENU_ONABOUTTOSHOW )
{
  if( s == NULL )
  {
    s = new SlotsQMenu(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToShow()", "aboutToShow()" ) );
}

HB_FUNC( QMENU_ONHOVERED )
{
  if( s == NULL )
  {
    s = new SlotsQMenu(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "hovered(QAction*)", "hovered(QAction*)" ) );
}

HB_FUNC( QMENU_ONTRIGGERED )
{
  if( s == NULL )
  {
    s = new SlotsQMenu(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "triggered(QAction*)", "triggered(QAction*)" ) );
}

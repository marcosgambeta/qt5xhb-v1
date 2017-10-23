/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QDesktopWidgetSlots.h"


static SlotsQDesktopWidget * s = NULL;

SlotsQDesktopWidget::SlotsQDesktopWidget(QObject *parent) : QObject(parent)
{
}

SlotsQDesktopWidget::~SlotsQDesktopWidget()
{
}

void SlotsQDesktopWidget::resized ( int screen )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "resized(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pscreen = hb_itemPutNI( NULL, screen );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pscreen );
    hb_itemRelease( psender );
    hb_itemRelease( pscreen );
  }
}

void SlotsQDesktopWidget::screenCountChanged ( int newCount )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "screenCountChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewCount = hb_itemPutNI( NULL, newCount );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewCount );
    hb_itemRelease( psender );
    hb_itemRelease( pnewCount );
  }
}

void SlotsQDesktopWidget::workAreaResized ( int screen )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "workAreaResized(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pscreen = hb_itemPutNI( NULL, screen );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pscreen );
    hb_itemRelease( psender );
    hb_itemRelease( pscreen );
  }
}

HB_FUNC( QDESKTOPWIDGET_ONRESIZED )
{
  if( s == NULL )
  {
    s = new SlotsQDesktopWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "resized(int)", "resized(int)" ) );
}

HB_FUNC( QDESKTOPWIDGET_ONSCREENCOUNTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDesktopWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "screenCountChanged(int)", "screenCountChanged(int)" ) );
}

HB_FUNC( QDESKTOPWIDGET_ONWORKAREARESIZED )
{
  if( s == NULL )
  {
    s = new SlotsQDesktopWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "workAreaResized(int)", "workAreaResized(int)" ) );
}

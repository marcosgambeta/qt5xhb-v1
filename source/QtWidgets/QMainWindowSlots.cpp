/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QMainWindowSlots.h"


static SlotsQMainWindow * s = NULL;

SlotsQMainWindow::SlotsQMainWindow(QObject *parent) : QObject(parent)
{
}

SlotsQMainWindow::~SlotsQMainWindow()
{
}

void SlotsQMainWindow::iconSizeChanged ( const QSize & iconSize )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "iconSizeChanged(QSize)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM piconSize = hb_itemPutPtr( NULL, (QSize *) &iconSize );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, piconSize );
    hb_itemRelease( psender );
    hb_itemRelease( piconSize );
  }
}

void SlotsQMainWindow::toolButtonStyleChanged ( Qt::ToolButtonStyle toolButtonStyle )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "toolButtonStyleChanged(Qt::ToolButtonStyle)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptoolButtonStyle = hb_itemPutNI( NULL, (int) toolButtonStyle );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptoolButtonStyle );
    hb_itemRelease( psender );
    hb_itemRelease( ptoolButtonStyle );
  }
}

HB_FUNC( QMAINWINDOW_ONICONSIZECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMainWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "iconSizeChanged(QSize)", "iconSizeChanged(QSize)" ) );
}

HB_FUNC( QMAINWINDOW_ONTOOLBUTTONSTYLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMainWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "toolButtonStyleChanged(Qt::ToolButtonStyle)", "toolButtonStyleChanged(Qt::ToolButtonStyle)" ) );
}

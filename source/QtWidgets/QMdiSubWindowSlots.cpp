/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMdiSubWindowSlots.h"


static SlotsQMdiSubWindow * s = NULL;

SlotsQMdiSubWindow::SlotsQMdiSubWindow(QObject *parent) : QObject(parent)
{
}

SlotsQMdiSubWindow::~SlotsQMdiSubWindow()
{
}

void SlotsQMdiSubWindow::aboutToActivate ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToActivate()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMdiSubWindow::windowStateChanged ( Qt::WindowStates oldState, Qt::WindowStates newState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowStateChanged(Qt::WindowStates,Qt::WindowStates)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM poldState = hb_itemPutNI( NULL, (int) oldState );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, poldState, pnewState );
    hb_itemRelease( psender );
    hb_itemRelease( poldState );
    hb_itemRelease( pnewState );
  }
}

HB_FUNC( QMDISUBWINDOW_ONABOUTTOACTIVATE )
{
  if( s == NULL )
  {
    s = new SlotsQMdiSubWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToActivate()", "aboutToActivate()" ) );
}

HB_FUNC( QMDISUBWINDOW_ONWINDOWSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMdiSubWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "windowStateChanged(Qt::WindowStates,Qt::WindowStates)", "windowStateChanged(Qt::WindowStates,Qt::WindowStates)" ) );
}

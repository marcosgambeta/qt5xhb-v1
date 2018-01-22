%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QMdiAreaSlots.h"

static SlotsQMdiArea * s = NULL;

SlotsQMdiArea::SlotsQMdiArea(QObject *parent) : QObject(parent)
{
}

SlotsQMdiArea::~SlotsQMdiArea()
{
}

void SlotsQMdiArea::subWindowActivated ( QMdiSubWindow * window )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "subWindowActivated(QMdiSubWindow*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pwindow = hb_itemPutPtr( NULL, (QMdiSubWindow *) window );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwindow );
    hb_itemRelease( psender );
    hb_itemRelease( pwindow );
  }
}

HB_FUNC( QMDIAREA_ONSUBWINDOWACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQMdiArea(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "subWindowActivated(QMdiSubWindow*)", "subWindowActivated(QMdiSubWindow*)" ) );
}

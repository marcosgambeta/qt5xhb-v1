/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QOffscreenSurfaceSlots.h"


static SlotsQOffscreenSurface * s = NULL;

SlotsQOffscreenSurface::SlotsQOffscreenSurface(QObject *parent) : QObject(parent)
{
}

SlotsQOffscreenSurface::~SlotsQOffscreenSurface()
{
}

void SlotsQOffscreenSurface::screenChanged(QScreen *screen)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "screenChanged(QScreen*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pscreen = hb_itemPutPtr( NULL, (QScreen *) screen );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pscreen );
    hb_itemRelease( psender );
    hb_itemRelease( pscreen );
  }
}

HB_FUNC( QOFFSCREENSURFACE_ONSCREENCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQOffscreenSurface(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "screenChanged(QScreen*)", "screenChanged(QScreen*)" ) );

}

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QWebChannelSlots.h"


static SlotsQWebChannel * s = NULL;

SlotsQWebChannel::SlotsQWebChannel(QObject *parent) : QObject(parent)
{
}

SlotsQWebChannel::~SlotsQWebChannel()
{
}

void SlotsQWebChannel::blockUpdatesChanged(bool block)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blockUpdatesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pblock = hb_itemPutL( NULL, block );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pblock );
    hb_itemRelease( psender );
    hb_itemRelease( pblock );
  }
#endif
}

HB_FUNC( QWEBCHANNEL_OBBLOCKUPDATESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebChannel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "blockUpdatesChanged(bool)", "blockUpdatesChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}

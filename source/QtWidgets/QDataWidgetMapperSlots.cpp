/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QDataWidgetMapperSlots.h"


static SlotsQDataWidgetMapper * s = NULL;

SlotsQDataWidgetMapper::SlotsQDataWidgetMapper(QObject *parent) : QObject(parent)
{
}

SlotsQDataWidgetMapper::~SlotsQDataWidgetMapper()
{
}

void SlotsQDataWidgetMapper::currentIndexChanged ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentIndexChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

HB_FUNC( QDATAWIDGETMAPPER_ONCURRENTINDEXCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDataWidgetMapper(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentIndexChanged(int)", "currentIndexChanged(int)" ) );
}

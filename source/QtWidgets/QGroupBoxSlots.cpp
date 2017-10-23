/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGroupBoxSlots.h"


static SlotsQGroupBox * s = NULL;

SlotsQGroupBox::SlotsQGroupBox(QObject *parent) : QObject(parent)
{
}

SlotsQGroupBox::~SlotsQGroupBox()
{
}

void SlotsQGroupBox::clicked ( bool checked )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

void SlotsQGroupBox::toggled ( bool on )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "toggled(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pon = hb_itemPutL( NULL, on );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pon );
    hb_itemRelease( psender );
    hb_itemRelease( pon );
  }
}

HB_FUNC( QGROUPBOX_ONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQGroupBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "clicked(bool)", "clicked(bool)" ) );
}

HB_FUNC( QGROUPBOX_ONTOGGLED )
{
  if( s == NULL )
  {
    s = new SlotsQGroupBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "toggled(bool)", "toggled(bool)" ) );
}

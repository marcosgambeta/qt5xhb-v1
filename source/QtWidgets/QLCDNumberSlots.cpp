/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QLCDNumberSlots.h"


static SlotsQLCDNumber * s = NULL;

SlotsQLCDNumber::SlotsQLCDNumber(QObject *parent) : QObject(parent)
{
}

SlotsQLCDNumber::~SlotsQLCDNumber()
{
}

void SlotsQLCDNumber::overflow ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "overflow()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QLCDNUMBER_ONOVERFLOW )
{
  if( s == NULL )
  {
    s = new SlotsQLCDNumber(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "overflow()", "overflow()" ) );
}

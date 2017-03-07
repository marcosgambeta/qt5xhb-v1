/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMediaAvailabilityControlSlots.h"


static SlotsQMediaAvailabilityControl * s = NULL;

SlotsQMediaAvailabilityControl::SlotsQMediaAvailabilityControl(QObject *parent) : QObject(parent)
{
}

SlotsQMediaAvailabilityControl::~SlotsQMediaAvailabilityControl()
{
}

void SlotsQMediaAvailabilityControl::availabilityChanged(QMultimedia::AvailabilityStatus availability)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availabilityChanged(QMultimedia::AvailabilityStatus)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailability = hb_itemPutNI( NULL, (int) availability );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailability );
    hb_itemRelease( psender );
    hb_itemRelease( pavailability );
  }
}

HB_FUNC( QMEDIAAVAILABILITYCONTROL_ONAVAILABILITYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaAvailabilityControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "availabilityChanged(QMultimedia::AvailabilityStatus)", "availabilityChanged(QMultimedia::AvailabilityStatus)" ) );
}

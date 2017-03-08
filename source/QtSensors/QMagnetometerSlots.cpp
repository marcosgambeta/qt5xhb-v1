/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMagnetometerSlots.h"


static SlotsQMagnetometer * s = NULL;

SlotsQMagnetometer::SlotsQMagnetometer(QObject *parent) : QObject(parent)
{
}

SlotsQMagnetometer::~SlotsQMagnetometer()
{
}

void SlotsQMagnetometer::returnGeoValuesChanged(bool returnGeoValues)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "returnGeoValuesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preturnGeoValues = hb_itemPutL( NULL, returnGeoValues );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preturnGeoValues );
    hb_itemRelease( psender );
    hb_itemRelease( preturnGeoValues );
  }
#endif
}

HB_FUNC( QMAGNETOMETER_ONRETURNGEOVALUESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQMagnetometer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "returnGeoValuesChanged(bool)", "returnGeoValuesChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}

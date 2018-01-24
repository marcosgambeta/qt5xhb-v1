/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QQmlPropertyMapSlots.h"


static SlotsQQmlPropertyMap * s = NULL;

SlotsQQmlPropertyMap::SlotsQQmlPropertyMap(QObject *parent) : QObject(parent)
{
}

SlotsQQmlPropertyMap::~SlotsQQmlPropertyMap()
{
}

void SlotsQQmlPropertyMap::valueChanged(const QString & key, const QVariant & value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(QString,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pkey = hb_itemPutC( NULL, QSTRINGTOSTRING(key) );
    PHB_ITEM pvalue = hb_itemPutPtr( NULL, (QVariant *) &value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pkey, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pkey );
    hb_itemRelease( pvalue );
  }
}

HB_FUNC( QQMLPROPERTYMAP_ONVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQmlPropertyMap(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged(QString,QVariant)", "valueChanged(QString,QVariant)" ) );
}

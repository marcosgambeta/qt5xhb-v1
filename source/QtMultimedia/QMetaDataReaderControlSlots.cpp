/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QMetaDataReaderControlSlots.h"


static SlotsQMetaDataReaderControl * s = NULL;

SlotsQMetaDataReaderControl::SlotsQMetaDataReaderControl(QObject *parent) : QObject(parent)
{
}

SlotsQMetaDataReaderControl::~SlotsQMetaDataReaderControl()
{
}

void SlotsQMetaDataReaderControl::metaDataChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "metaDataChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMetaDataReaderControl::metaDataChanged(const QString &key, const QVariant &value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "metaDataChanged(QString,QVariant)" );
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

void SlotsQMetaDataReaderControl::metaDataAvailableChanged(bool available)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "metaDataAvailableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

HB_FUNC( QMETADATAREADERCONTROL_ONMETADATACHANGED1 )
{
  if( s == NULL )
  {
    s = new SlotsQMetaDataReaderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataChanged()", "metaDataChanged()" ) );
}

HB_FUNC( QMETADATAREADERCONTROL_ONMETADATACHANGED2 )
{
  if( s == NULL )
  {
    s = new SlotsQMetaDataReaderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataChanged(QString,QVariant)", "metaDataChanged(QString,QVariant)" ) );
}

HB_FUNC( QMETADATAREADERCONTROL_ONMETADATAAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMetaDataReaderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataAvailableChanged(bool)", "metaDataAvailableChanged(bool)" ) );
}

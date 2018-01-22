%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QMediaObjectSlots.h"

static SlotsQMediaObject * s = NULL;

SlotsQMediaObject::SlotsQMediaObject(QObject *parent) : QObject(parent)
{
}

SlotsQMediaObject::~SlotsQMediaObject()
{
}

void SlotsQMediaObject::availabilityChanged(bool available)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availabilityChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQMediaObject::availabilityChanged(QMultimedia::AvailabilityStatus availability)
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

void SlotsQMediaObject::metaDataAvailableChanged(bool available)
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

void SlotsQMediaObject::metaDataChanged()
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

void SlotsQMediaObject::metaDataChanged(const QString & key, const QVariant & value)
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

void SlotsQMediaObject::notifyIntervalChanged(int milliseconds)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "notifyIntervalChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmilliseconds = hb_itemPutNI( NULL, milliseconds );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmilliseconds );
    hb_itemRelease( psender );
    hb_itemRelease( pmilliseconds );
  }
}

HB_FUNC( QMEDIAOBJECT_ONAVAILABILITYCHANGED1 )
{
  if( s == NULL )
  {
    s = new SlotsQMediaObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "availabilityChanged(bool)", "availabilityChanged(bool)" ) );
}

HB_FUNC( QMEDIAOBJECT_ONAVAILABILITYCHANGED2 )
{
  if( s == NULL )
  {
    s = new SlotsQMediaObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "availabilityChanged(QMultimedia::AvailabilityStatus)", "availabilityChanged(QMultimedia::AvailabilityStatus)" ) );
}

HB_FUNC( QMEDIAOBJECT_ONMETADATAAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataAvailableChanged(bool)", "metaDataAvailableChanged(bool)" ) );
}

HB_FUNC( QMEDIAOBJECT_ONMETADATACHANGED1 )
{
  if( s == NULL )
  {
    s = new SlotsQMediaObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataChanged()", "metaDataChanged()" ) );
}

HB_FUNC( QMEDIAOBJECT_ONMETADATACHANGED2 )
{
  if( s == NULL )
  {
    s = new SlotsQMediaObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataChanged(QString,QVariant)", "metaDataChanged(QString,QVariant)" ) );
}

HB_FUNC( QMEDIAOBJECT_ONNOTIFYINTERVALCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "notifyIntervalChanged(int)", "notifyIntervalChanged(int)" ) );
}

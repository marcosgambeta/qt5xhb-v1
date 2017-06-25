/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMetaDataWriterControlSlots.h"


static SlotsQMetaDataWriterControl * s = NULL;

SlotsQMetaDataWriterControl::SlotsQMetaDataWriterControl(QObject *parent) : QObject(parent)
{
}

SlotsQMetaDataWriterControl::~SlotsQMetaDataWriterControl()
{
}

void SlotsQMetaDataWriterControl::metaDataChanged()
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

void SlotsQMetaDataWriterControl::metaDataChanged(const QString &key, const QVariant &value)
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

void SlotsQMetaDataWriterControl::writableChanged(bool writable)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "writableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pwritable = hb_itemPutL( NULL, writable );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwritable );
    hb_itemRelease( psender );
    hb_itemRelease( pwritable );
  }
}

void SlotsQMetaDataWriterControl::metaDataAvailableChanged(bool available)
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

HB_FUNC( QMETADATAWRITERCONTROL_ONMETADATACHANGED1 )
{
  if( s == NULL )
  {
    s = new SlotsQMetaDataWriterControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataChanged()", "metaDataChanged()" ) );
}

HB_FUNC( QMETADATAWRITERCONTROL_ONMETADATACHANGED2 )
{
  if( s == NULL )
  {
    s = new SlotsQMetaDataWriterControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataChanged(QString,QVariant)", "metaDataChanged(QString,QVariant)" ) );
}

HB_FUNC( QMETADATAWRITERCONTROL_ONWRITABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMetaDataWriterControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "writableChanged(bool)", "writableChanged(bool)" ) );
}

HB_FUNC( QMETADATAWRITERCONTROL_ONMETADATAAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMetaDataWriterControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataAvailableChanged(bool)", "metaDataAvailableChanged(bool)" ) );
}

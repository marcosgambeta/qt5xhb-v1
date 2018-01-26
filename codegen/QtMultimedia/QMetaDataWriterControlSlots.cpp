%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|metaDataChanged()

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

$beginGroup
$signalMethod=|metaDataChanged()
$signalMethod=|metaDataChanged(QString,QVariant)
$endGroup
$signalMethod=|writableChanged(bool)
$signalMethod=|metaDataAvailableChanged(bool)
$endSlotsClass

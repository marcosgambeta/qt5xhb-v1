%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQSqlTableModel::beforeDelete ( int row )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeDelete(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prow );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
  }
}

void SlotsQSqlTableModel::beforeInsert ( QSqlRecord & record )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeInsert(QSqlRecord)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM precord = hb_itemPutPtr( NULL, (QSqlRecord *) &record );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, precord );
    hb_itemRelease( psender );
    hb_itemRelease( precord );
  }
}

void SlotsQSqlTableModel::beforeUpdate ( int row, QSqlRecord & record )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeUpdate(int,QSqlRecord)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM precord = hb_itemPutPtr( NULL, (QSqlRecord *) &record );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, precord );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( precord );
  }
}

void SlotsQSqlTableModel::primeInsert ( int row, QSqlRecord & record )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "primeInsert(int,QSqlRecord)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM precord = hb_itemPutPtr( NULL, (QSqlRecord *) &record );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, precord );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( precord );
  }
}

$signalMethod=|beforeDelete(int)
$signalMethod=|beforeInsert(QSqlRecord)
$signalMethod=|beforeUpdate(int,QSqlRecord)
$signalMethod=|primeInsert(int,QSqlRecord)

$endSlotsClass

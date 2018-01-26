%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQDateTimeEdit::dateChanged( const QDate & date )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dateChanged(QDate)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdate = hb_itemPutPtr( NULL, (QDate *) &date );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdate );
    hb_itemRelease( psender );
    hb_itemRelease( pdate );
  }
}

void SlotsQDateTimeEdit::dateTimeChanged( const QDateTime & datetime )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dateTimeChanged(QDateTime)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdatetime = hb_itemPutPtr( NULL, (QDateTime *) &datetime );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdatetime );
    hb_itemRelease( psender );
    hb_itemRelease( pdatetime );
  }
}

void SlotsQDateTimeEdit::timeChanged( const QTime & time )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "timeChanged(QTime)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptime = hb_itemPutPtr( NULL, (QTime *) &time );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptime );
    hb_itemRelease( psender );
    hb_itemRelease( ptime );
  }
}

$signalMethod=|dateChanged(QDate)
$signalMethod=|dateTimeChanged(QDateTime)
$signalMethod=|timeChanged(QTime)

$endSlotsClass

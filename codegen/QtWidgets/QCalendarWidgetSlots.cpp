%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQCalendarWidget::activated ( const QDate & date )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QDate)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdate = hb_itemPutPtr( NULL, (QDate *) &date );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdate );
    hb_itemRelease( psender );
    hb_itemRelease( pdate );
  }
}

void SlotsQCalendarWidget::clicked ( const QDate & date )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QDate)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdate = hb_itemPutPtr( NULL, (QDate *) &date );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdate );
    hb_itemRelease( psender );
    hb_itemRelease( pdate );
  }
}

void SlotsQCalendarWidget::currentPageChanged ( int year, int month )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentPageChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pyear = hb_itemPutNI( NULL, year );
    PHB_ITEM pmonth = hb_itemPutNI( NULL, month );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pyear, pmonth );
    hb_itemRelease( psender );
    hb_itemRelease( pyear );
    hb_itemRelease( pmonth );
  }
}

void SlotsQCalendarWidget::selectionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

$signalMethod=|activated(QDate)
$signalMethod=|clicked(QDate)
$signalMethod=|currentPageChanged(int,int)
$signalMethod=|selectionChanged()

$endSlotsClass

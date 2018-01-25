%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQStackedLayout::setCurrentIndex ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "setCurrentIndex(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQStackedLayout::setCurrentWidget (QWidget * widget )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "setCurrentWidget(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pwidget = hb_itemPutPtr( NULL, (QWidget *) widget );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwidget );
    hb_itemRelease( psender );
    hb_itemRelease( pwidget );
  }
}

$signalMethod=|setCurrentIndex(int)
$signalMethod=|setCurrentWidget(QWidget*)

$endSlotsClass

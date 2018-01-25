%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQButtonGroup::buttonClicked ( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonClicked(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbutton = hb_itemPutPtr( NULL, (QAbstractButton *) button );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}

void SlotsQButtonGroup::buttonClicked ( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

void SlotsQButtonGroup::buttonPressed ( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonPressed(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbutton = hb_itemPutPtr( NULL, (QAbstractButton *) button );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}

void SlotsQButtonGroup::buttonPressed ( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonPressed(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

void SlotsQButtonGroup::buttonReleased ( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonReleased(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbutton = hb_itemPutPtr( NULL, (QAbstractButton *) button );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}

void SlotsQButtonGroup::buttonReleased ( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonReleased(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

$beginGroup
$signalMethod=|buttonClicked(QAbstractButton*)
$signalMethod=|buttonClicked(int)
$endGroup
$beginGroup
$signalMethod=|buttonPressed(QAbstractButton*)
$signalMethod=|buttonPressed(int)
$endGroup
$beginGroup
$signalMethod=|buttonReleased(QAbstractButton*)
$signalMethod=|buttonReleased(int)
$endGroup

$endSlotsClass

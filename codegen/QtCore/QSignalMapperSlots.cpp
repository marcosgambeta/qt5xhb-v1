%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQSignalMapper::mapped(int arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutNI( NULL, arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void SlotsQSignalMapper::mapped(const QString &arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutC( NULL, QSTRINGTOSTRING(arg) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void SlotsQSignalMapper::mapped(QWidget *arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutPtr( NULL, (QWidget *) arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void SlotsQSignalMapper::mapped(QObject *arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(QObject*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutPtr( NULL, (QObject *) arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

$beginGroup
$signalMethod=|mapped(int)
$signalMethod=|mapped(QString)
$signalMethod=|mapped(QWidget*)
$signalMethod=|mapped(QObject*)
$endGroup

$endSlotsClass

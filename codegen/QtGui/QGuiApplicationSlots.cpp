%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQGuiApplication::focusObjectChanged(QObject * focusObject)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusObjectChanged(QObject*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfocusObject = hb_itemPutPtr( NULL, (QObject *) focusObject );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfocusObject );
    hb_itemRelease( psender );
    hb_itemRelease( pfocusObject );
  }
}

void SlotsQGuiApplication::focusWindowChanged(QWindow * focusWindow)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusWindowChanged(QWindow*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfocusWindow = hb_itemPutPtr( NULL, (QWindow *) focusWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfocusWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pfocusWindow );
  }
}

$slot=|fontDatabaseChanged()

$slot=|lastWindowClosed()

void SlotsQGuiApplication::screenAdded(QScreen * screen)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "screenAdded(QScreen*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pscreen = hb_itemPutPtr( NULL, (QScreen *) screen );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pscreen );
    hb_itemRelease( psender );
    hb_itemRelease( pscreen );
  }
}

$signalMethod=|focusObjectChanged(QObject*)
$signalMethod=|focusWindowChanged(QWindow*)
$signalMethod=|fontDatabaseChanged()
$signalMethod=|lastWindowClosed()
$signalMethod=|screenAdded(QScreen*)

$endSlotsClass

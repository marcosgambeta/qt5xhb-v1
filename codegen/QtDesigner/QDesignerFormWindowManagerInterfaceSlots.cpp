%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQDesignerFormWindowManagerInterface::activeFormWindowChanged( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeFormWindowChanged(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformWindow = hb_itemPutPtr( NULL, (QDesignerFormWindowInterface *) formWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}

void SlotsQDesignerFormWindowManagerInterface::formWindowAdded( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formWindowAdded(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformWindow = hb_itemPutPtr( NULL, (QDesignerFormWindowInterface *) formWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}

void SlotsQDesignerFormWindowManagerInterface::formWindowRemoved( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formWindowRemoved(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformWindow = hb_itemPutPtr( NULL, (QDesignerFormWindowInterface *) formWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}

$signalMethod=|activeFormWindowChanged(QDesignerFormWindowInterface*)
$signalMethod=|formWindowAdded(QDesignerFormWindowInterface*)
$signalMethod=|formWindowRemoved(QDesignerFormWindowInterface*)

$endSlotsClass

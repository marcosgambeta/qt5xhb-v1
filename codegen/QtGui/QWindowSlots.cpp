%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQWindow::contentOrientationChanged(Qt::ScreenOrientation orientation)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentOrientationChanged(Qt::ScreenOrientation)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, porientation );
    hb_itemRelease( psender );
    hb_itemRelease( porientation );
  }
}

void SlotsQWindow::focusObjectChanged(QObject * focusObject)
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

void SlotsQWindow::heightChanged(int arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "heightChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutNI( NULL, arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void SlotsQWindow::screenChanged(QScreen * screen)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "screenChanged(QScreen*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pscreen = hb_itemPutPtr( NULL, (QScreen *) screen );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pscreen );
    hb_itemRelease( psender );
    hb_itemRelease( pscreen );
  }
}

void SlotsQWindow::visibleChanged(bool arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "visibleChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutL( NULL, arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void SlotsQWindow::widthChanged(int arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "widthChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutNI( NULL, arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void SlotsQWindow::windowModalityChanged(Qt::WindowModality windowModality)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowModalityChanged(Qt::WindowModality)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pwindowModality = hb_itemPutNI( NULL, (int) windowModality );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwindowModality );
    hb_itemRelease( psender );
    hb_itemRelease( pwindowModality );
  }
}

void SlotsQWindow::xChanged(int arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "xChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutNI( NULL, arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void SlotsQWindow::yChanged(int arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "yChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutNI( NULL, arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

$signalMethod=|contentOrientationChanged(Qt::ScreenOrientation)
$signalMethod=|focusObjectChanged(QObject*)
$signalMethod=|heightChanged(int)
$signalMethod=|screenChanged(QScreen*)
$signalMethod=|visibleChanged(bool)
$signalMethod=|widthChanged(int)
$signalMethod=|windowModalityChanged(Qt::WindowModality)
$signalMethod=|xChanged(int)
$signalMethod=|yChanged(int)

$endSlotsClass

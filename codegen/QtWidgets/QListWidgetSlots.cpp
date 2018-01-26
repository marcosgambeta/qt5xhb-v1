%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQListWidget::currentItemChanged( QListWidgetItem * current, QListWidgetItem * previous )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentItemChanged(QListWidgetItem*,QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QListWidgetItem *) current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QListWidgetItem *) previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void SlotsQListWidget::currentRowChanged( int currentRow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentRowChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrentRow = hb_itemPutNI( NULL, currentRow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcurrentRow );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrentRow );
  }
}

void SlotsQListWidget::currentTextChanged( const QString & currentText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrentText = hb_itemPutC( NULL, QSTRINGTOSTRING(currentText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcurrentText );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrentText );
  }
}

void SlotsQListWidget::itemActivated( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemActivated(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemChanged( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemChanged(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemClicked( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemClicked(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemDoubleClicked( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemDoubleClicked(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemEntered( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemEntered(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemPressed( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemPressed(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

$slot=|itemSelectionChanged()

$signalMethod=|currentItemChanged(QListWidgetItem*,QListWidgetItem*)
$signalMethod=|currentRowChanged(int)
$signalMethod=|currentTextChanged(QString)
$signalMethod=|itemActivated(QListWidgetItem*)
$signalMethod=|itemChanged(QListWidgetItem*)
$signalMethod=|itemClicked(QListWidgetItem*)
$signalMethod=|itemDoubleClicked(QListWidgetItem*)
$signalMethod=|itemEntered(QListWidgetItem*)
$signalMethod=|itemPressed(QListWidgetItem*)
$signalMethod=|itemSelectionChanged()

$endSlotsClass

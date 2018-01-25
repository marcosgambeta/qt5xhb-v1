%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQTableWidget::cellActivated ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellActivated(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::cellChanged ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::cellClicked ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellClicked(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::cellDoubleClicked ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellDoubleClicked(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::cellEntered ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellEntered(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::cellPressed ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellPressed(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::currentCellChanged ( int currentRow, int currentColumn, int previousRow, int previousColumn )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentCellChanged(int,int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrentRow = hb_itemPutNI( NULL, currentRow );
    PHB_ITEM pcurrentColumn = hb_itemPutNI( NULL, currentColumn );
    PHB_ITEM ppreviousRow = hb_itemPutNI( NULL, previousRow );
    PHB_ITEM ppreviousColumn = hb_itemPutNI( NULL, previousColumn );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 5, psender, pcurrentRow, pcurrentColumn, ppreviousRow, ppreviousColumn );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrentRow );
    hb_itemRelease( pcurrentColumn );
    hb_itemRelease( ppreviousRow );
    hb_itemRelease( ppreviousColumn );
  }
}

void SlotsQTableWidget::currentItemChanged ( QTableWidgetItem * current, QTableWidgetItem * previous )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentItemChanged(QTableWidgetItem*,QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QTableWidgetItem *) current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QTableWidgetItem *) previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void SlotsQTableWidget::itemActivated ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemActivated(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemChanged ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemChanged(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemClicked ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemClicked(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemDoubleClicked ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemDoubleClicked(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemEntered ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemEntered(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemPressed ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemPressed(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemSelectionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemSelectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

$signalMethod=|cellActivated(int,int)
$signalMethod=|cellChanged(int,int)
$signalMethod=|cellClicked(int,int)
$signalMethod=|cellDoubleClicked(int,int)
$signalMethod=|cellEntered(int,int)
$signalMethod=|cellPressed(int,int)
$signalMethod=|currentCellChanged(int,int,int,int)
$signalMethod=|currentItemChanged(QTableWidgetItem*,QTableWidgetItem*)
$signalMethod=|itemActivated(QTableWidgetItem*)
$signalMethod=|itemChanged(QTableWidgetItem*)
$signalMethod=|itemClicked(QTableWidgetItem*)
$signalMethod=|itemDoubleClicked(QTableWidgetItem*)
$signalMethod=|itemEntered(QTableWidgetItem*)
$signalMethod=|itemPressed(QTableWidgetItem*)
$signalMethod=|itemSelectionChanged()

$endSlotsClass

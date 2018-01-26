%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|geometriesChanged()

void SlotsQHeaderView::sectionAutoResize( int logicalIndex, QHeaderView::ResizeMode mode )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionAutoResize(int,QHeaderView::ResizeMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, plogicalIndex, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( pmode );
  }
}

void SlotsQHeaderView::sectionClicked( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionCountChanged( int oldCount, int newCount )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionCountChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM poldCount = hb_itemPutNI( NULL, oldCount );
    PHB_ITEM pnewCount = hb_itemPutNI( NULL, newCount );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, poldCount, pnewCount );
    hb_itemRelease( psender );
    hb_itemRelease( poldCount );
    hb_itemRelease( pnewCount );
  }
}

void SlotsQHeaderView::sectionDoubleClicked( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionDoubleClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionEntered( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionEntered(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionHandleDoubleClicked( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionHandleDoubleClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionMoved( int logicalIndex, int oldVisualIndex, int newVisualIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionMoved(int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM poldVisualIndex = hb_itemPutNI( NULL, oldVisualIndex );
    PHB_ITEM pnewVisualIndex = hb_itemPutNI( NULL, newVisualIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, plogicalIndex, poldVisualIndex, pnewVisualIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( poldVisualIndex );
    hb_itemRelease( pnewVisualIndex );
  }
}

void SlotsQHeaderView::sectionPressed( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionPressed(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionResized( int logicalIndex, int oldSize, int newSize )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionResized(int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM poldSize = hb_itemPutNI( NULL, oldSize );
    PHB_ITEM pnewSize = hb_itemPutNI( NULL, newSize );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, plogicalIndex, poldSize, pnewSize );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( poldSize );
    hb_itemRelease( pnewSize );
  }
}

void SlotsQHeaderView::sortIndicatorChanged( int logicalIndex, Qt::SortOrder order )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sortIndicatorChanged(int,Qt::SortOrder)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM porder = hb_itemPutNI( NULL, (int) order );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, plogicalIndex, porder );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( porder );
  }
}

$signalMethod=|geometriesChanged()
$signalMethod=|sectionAutoResize(int,QHeaderView::ResizeMode)
$signalMethod=|sectionClicked(int)
$signalMethod=|sectionCountChanged(int,int)
$signalMethod=|sectionDoubleClicked(int)
$signalMethod=|sectionEntered(int)
$signalMethod=|sectionHandleDoubleClicked(int)
$signalMethod=|sectionMoved(int,int,int)
$signalMethod=|sectionPressed(int)
$signalMethod=|sectionResized(int,int,int)
$signalMethod=|sortIndicatorChanged(int,Qt::SortOrder)

$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAbstractItemModel::columnsAboutToBeInserted( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsAboutToBeInserted(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::columnsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psourceParent = hb_itemPutPtr( NULL, (QModelIndex *) &sourceParent );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = hb_itemPutPtr( NULL, (QModelIndex *) &destinationParent );
    PHB_ITEM pdestinationColumn = hb_itemPutNI( NULL, destinationColumn );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationColumn );
    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationColumn );
  }
}

void SlotsQAbstractItemModel::columnsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsAboutToBeRemoved(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::columnsInserted( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsInserted(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::columnsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsMoved(QModelIndex,int,int,QModelIndex,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psourceParent = hb_itemPutPtr( NULL, (QModelIndex *) &sourceParent );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = hb_itemPutPtr( NULL, (QModelIndex *) &destinationParent );
    PHB_ITEM pdestinationColumn = hb_itemPutNI( NULL, destinationColumn );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationColumn );
    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationColumn );
  }
}

void SlotsQAbstractItemModel::columnsRemoved( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsRemoved(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::dataChanged( const QModelIndex & topLeft, const QModelIndex & bottomRight )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataChanged(QModelIndex,QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptopLeft = hb_itemPutPtr( NULL, (QModelIndex *) &topLeft );
    PHB_ITEM pbottomRight = hb_itemPutPtr( NULL, (QModelIndex *) &bottomRight );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, ptopLeft, pbottomRight );
    hb_itemRelease( psender );
    hb_itemRelease( ptopLeft );
    hb_itemRelease( pbottomRight );
  }
}

void SlotsQAbstractItemModel::headerDataChanged( Qt::Orientation orientation, int first, int last )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "headerDataChanged(Qt::Orientation,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );
    PHB_ITEM pfirst = hb_itemPutNI( NULL, first );
    PHB_ITEM plast = hb_itemPutNI( NULL, last );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, porientation, pfirst, plast );
    hb_itemRelease( psender );
    hb_itemRelease( porientation );
    hb_itemRelease( pfirst );
    hb_itemRelease( plast );
  }
}

$slot=|layoutAboutToBeChanged()

$slot=|layoutChanged()

$slot=|modelAboutToBeReset()

$slot=|modelReset()

void SlotsQAbstractItemModel::rowsAboutToBeInserted( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsAboutToBeInserted(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::rowsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psourceParent = hb_itemPutPtr( NULL, (QModelIndex *) &sourceParent );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = hb_itemPutPtr( NULL, (QModelIndex *) &destinationParent );
    PHB_ITEM pdestinationRow = hb_itemPutNI( NULL, destinationRow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationRow );
    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationRow );
  }
}

void SlotsQAbstractItemModel::rowsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsAboutToBeRemoved(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::rowsInserted( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsInserted(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::rowsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsMoved(QModelIndex,int,int,QModelIndex,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psourceParent = hb_itemPutPtr( NULL, (QModelIndex *) &sourceParent );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = hb_itemPutPtr( NULL, (QModelIndex *) &destinationParent );
    PHB_ITEM pdestinationRow = hb_itemPutNI( NULL, destinationRow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationRow );
    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationRow );
  }
}

void SlotsQAbstractItemModel::rowsRemoved( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsRemoved(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

$signalMethod=|columnsAboutToBeInserted(QModelIndex,int,int)
$signalMethod=|columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)
$signalMethod=|columnsAboutToBeRemoved(QModelIndex,int,int)
$signalMethod=|columnsInserted(QModelIndex,int,int)
$signalMethod=|columnsMoved(QModelIndex,int,int,QModelIndex,int)
$signalMethod=|columnsRemoved(QModelIndex,int,int)
$signalMethod=|dataChanged(QModelIndex,QModelIndex)
$signalMethod=|headerDataChanged(Qt::Orientation,int,int)
$signalMethod=|layoutAboutToBeChanged()
$signalMethod=|layoutChanged()
$signalMethod=|modelAboutToBeReset()
$signalMethod=|modelReset()
$signalMethod=|rowsAboutToBeInserted(QModelIndex,int,int)
$signalMethod=|rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)
$signalMethod=|rowsAboutToBeRemoved(QModelIndex,int,int)
$signalMethod=|rowsInserted(QModelIndex,int,int)
$signalMethod=|rowsMoved(QModelIndex,int,int,QModelIndex,int)
$signalMethod=|rowsRemoved(QModelIndex,int,int)

$endSlotsClass

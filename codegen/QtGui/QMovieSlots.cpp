%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQMovie::error( QImageReader::ImageReaderError error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QImageReader::ImageReaderError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

$slot=|finished()

void SlotsQMovie::frameChanged( int frameNumber )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "frameChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframeNumber = hb_itemPutNI( NULL, frameNumber );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pframeNumber );
    hb_itemRelease( psender );
    hb_itemRelease( pframeNumber );
  }
}

void SlotsQMovie::resized( const QSize & size )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "resized(QSize)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psize = hb_itemPutPtr( NULL, (QSize *) &size );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psize );
    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}

$slot=|started()

void SlotsQMovie::stateChanged( QMovie::MovieState state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QMovie::MovieState)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void SlotsQMovie::updated( const QRect & rect )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updated(QRect)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prect = hb_itemPutPtr( NULL, (QRect *) &rect );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prect );
    hb_itemRelease( psender );
    hb_itemRelease( prect );
  }
}

$signalMethod=|error(QImageReader::ImageReaderError)
$signalMethod=|finished()
$signalMethod=|frameChanged(int)
$signalMethod=|resized(QSize)
$signalMethod=|started()
$signalMethod=|stateChanged(QMovie::MovieState)
$signalMethod=|updated(QRect)

$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAbstractAnimation::currentLoopChanged ( int currentLoop )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentLoopChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrentLoop = hb_itemPutNI( NULL, currentLoop );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcurrentLoop );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrentLoop );
  }
}

void SlotsQAbstractAnimation::directionChanged ( QAbstractAnimation::Direction newDirection )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "directionChanged(QAbstractAnimation::Direction)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewDirection = hb_itemPutNI( NULL, (int) newDirection );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewDirection );
    hb_itemRelease( psender );
    hb_itemRelease( pnewDirection );
  }
}

void SlotsQAbstractAnimation::finished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractAnimation::stateChanged ( QAbstractAnimation::State newState, QAbstractAnimation::State oldState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );
    PHB_ITEM poldState = hb_itemPutNI( NULL, (int) oldState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pnewState, poldState );
    hb_itemRelease( psender );
    hb_itemRelease( pnewState );
    hb_itemRelease( poldState );
  }
}

HB_FUNC( QABSTRACTANIMATION_ONCURRENTLOOPCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractAnimation(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentLoopChanged(int)", "currentLoopChanged(int)" ) );
}

HB_FUNC( QABSTRACTANIMATION_ONDIRECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractAnimation(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "directionChanged(QAbstractAnimation::Direction)", "directionChanged(QAbstractAnimation::Direction)" ) );
}

HB_FUNC( QABSTRACTANIMATION_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractAnimation(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );
}

HB_FUNC( QABSTRACTANIMATION_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractAnimation(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)", "stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)" ) );
}

$endSlotsClass

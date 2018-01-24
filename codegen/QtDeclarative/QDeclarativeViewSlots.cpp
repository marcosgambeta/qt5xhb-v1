%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQDeclarativeView::sceneResized ( QSize size )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sceneResized(QSize)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psize = hb_itemPutPtr( NULL, (QSize *) &size );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psize );
    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}

void SlotsQDeclarativeView::statusChanged ( QDeclarativeView::Status status )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QDeclarativeView::Status)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

HB_FUNC( QDECLARATIVEVIEW_ONSCENERESIZED )
{
  if( s == NULL )
  {
    s = new SlotsQDeclarativeView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sceneResized(QSize)", "sceneResized(QSize)" ) );
}

HB_FUNC( QDECLARATIVEVIEW_ONSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDeclarativeView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusChanged(QDeclarativeView::Status)", "statusChanged(QDeclarativeView::Status)" ) );
}

$endSlotsClass

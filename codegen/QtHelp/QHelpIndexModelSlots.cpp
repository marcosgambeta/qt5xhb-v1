%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQHelpIndexModel::indexCreated ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexCreated()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQHelpIndexModel::indexCreationStarted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexCreationStarted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QHELPINDEXMODEL_ONINDEXCREATED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpIndexModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "indexCreated()", "indexCreated()" ) );
}

HB_FUNC( QHELPINDEXMODEL_ONINDEXCREATIONSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpIndexModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "indexCreationStarted()", "indexCreationStarted()" ) );
}

$endSlotsClass

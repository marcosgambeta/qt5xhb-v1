%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QHelpContentModelSlots.h"

static SlotsQHelpContentModel * s = NULL;

SlotsQHelpContentModel::SlotsQHelpContentModel(QObject *parent) : QObject(parent)
{
}

SlotsQHelpContentModel::~SlotsQHelpContentModel()
{
}

void SlotsQHelpContentModel::contentsCreated ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsCreated()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQHelpContentModel::contentsCreationStarted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsCreationStarted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QHELPCONTENTMODEL_ONCONTENTSCREATED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpContentModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contentsCreated()", "contentsCreated()" ) );
}

HB_FUNC( QHELPCONTENTMODEL_ONCONTENTSCREATIONSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpContentModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contentsCreationStarted()", "contentsCreationStarted()" ) );
}

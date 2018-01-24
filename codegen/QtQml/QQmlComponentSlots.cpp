%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QQmlComponentSlots.h"

static SlotsQQmlComponent * s = NULL;

SlotsQQmlComponent::SlotsQQmlComponent(QObject *parent) : QObject(parent)
{
}

SlotsQQmlComponent::~SlotsQQmlComponent()
{
}

void SlotsQQmlComponent::progressChanged(qreal progress)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "progressChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprogress = hb_itemPutND( NULL, progress );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprogress );
    hb_itemRelease( psender );
    hb_itemRelease( pprogress );
  }
}

void SlotsQQmlComponent::statusChanged(QQmlComponent::Status status)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QQmlComponent::Status)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

HB_FUNC( QQMLCOMPONENT_ONPROGRESSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQmlComponent(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "progressChanged(qreal)", "progressChanged(qreal)" ) );
}

HB_FUNC( QQMLCOMPONENT_ONSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQmlComponent(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusChanged(QQmlComponent::Status)", "statusChanged(QQmlComponent::Status)" ) );
}

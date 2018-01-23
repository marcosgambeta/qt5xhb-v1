%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QDesignerFormWindowManagerInterfaceSlots.h"

static SlotsQDesignerFormWindowManagerInterface * s = NULL;

SlotsQDesignerFormWindowManagerInterface::SlotsQDesignerFormWindowManagerInterface(QObject *parent) : QObject(parent)
{
}

SlotsQDesignerFormWindowManagerInterface::~SlotsQDesignerFormWindowManagerInterface()
{
}

void SlotsQDesignerFormWindowManagerInterface::activeFormWindowChanged ( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeFormWindowChanged(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformWindow = hb_itemPutPtr( NULL, (QDesignerFormWindowInterface *) formWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}

void SlotsQDesignerFormWindowManagerInterface::formWindowAdded ( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formWindowAdded(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformWindow = hb_itemPutPtr( NULL, (QDesignerFormWindowInterface *) formWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}

void SlotsQDesignerFormWindowManagerInterface::formWindowRemoved ( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formWindowRemoved(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformWindow = hb_itemPutPtr( NULL, (QDesignerFormWindowInterface *) formWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}

HB_FUNC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ONACTIVEFORMWINDOWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDesignerFormWindowManagerInterface(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activeFormWindowChanged(QDesignerFormWindowInterface*)", "activeFormWindowChanged(QDesignerFormWindowInterface*)" ) );
}

HB_FUNC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ONFORMWINDOWADDED )
{
  if( s == NULL )
  {
    s = new SlotsQDesignerFormWindowManagerInterface(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "formWindowAdded(QDesignerFormWindowInterface*)", "formWindowAdded(QDesignerFormWindowInterface*)" ) );
}

HB_FUNC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ONFORMWINDOWREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQDesignerFormWindowManagerInterface(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "formWindowRemoved(QDesignerFormWindowInterface*)", "formWindowRemoved(QDesignerFormWindowInterface*)" ) );

}
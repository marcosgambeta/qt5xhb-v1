%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QDesignerPropertyEditorInterfaceSlots.h"

static SlotsQDesignerPropertyEditorInterface * s = NULL;

SlotsQDesignerPropertyEditorInterface::SlotsQDesignerPropertyEditorInterface(QObject *parent) : QObject(parent)
{
}

SlotsQDesignerPropertyEditorInterface::~SlotsQDesignerPropertyEditorInterface()
{
}

void SlotsQDesignerPropertyEditorInterface::propertyChanged ( const QString & name, const QVariant & value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "propertyChanged(QString,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    PHB_ITEM pvalue = hb_itemPutPtr( NULL, (QVariant *) &value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pname, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( pvalue );
  }
}

HB_FUNC( QDESIGNERPROPERTYEDITORINTERFACE_ONPROPERTYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDesignerPropertyEditorInterface(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "propertyChanged(QString,QVariant)", "propertyChanged(QString,QVariant)" ) );
}

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QStackedWidgetSlots.h"

static SlotsQStackedWidget * s = NULL;

SlotsQStackedWidget::SlotsQStackedWidget(QObject *parent) : QObject(parent)
{
}

SlotsQStackedWidget::~SlotsQStackedWidget()
{
}

void SlotsQStackedWidget::currentChanged ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQStackedWidget::widgetRemoved ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "widgetRemoved(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

HB_FUNC( QSTACKEDWIDGET_ONCURRENTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQStackedWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentChanged(int)", "currentChanged(int)" ) );
}

HB_FUNC( QSTACKEDWIDGET_ONWIDGETREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQStackedWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "widgetRemoved(int)", "widgetRemoved(int)" ) );
}

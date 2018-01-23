/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QHelpSearchQueryWidgetSlots.h"


static SlotsQHelpSearchQueryWidget * s = NULL;

SlotsQHelpSearchQueryWidget::SlotsQHelpSearchQueryWidget(QObject *parent) : QObject(parent)
{
}

SlotsQHelpSearchQueryWidget::~SlotsQHelpSearchQueryWidget()
{
}

void SlotsQHelpSearchQueryWidget::search ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "search()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QHELPSEARCHQUERYWIDGET_ONSEARCH )
{
  if( s == NULL )
  {
    s = new SlotsQHelpSearchQueryWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "search()", "search()" ) );
}

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QHelpSearchResultWidgetSlots.h"


static SlotsQHelpSearchResultWidget * s = NULL;

SlotsQHelpSearchResultWidget::SlotsQHelpSearchResultWidget(QObject *parent) : QObject(parent)
{
}

SlotsQHelpSearchResultWidget::~SlotsQHelpSearchResultWidget()
{
}

void SlotsQHelpSearchResultWidget::requestShowLink ( const QUrl & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestShowLink(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutPtr( NULL, (QUrl *) &link );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

HB_FUNC( QHELPSEARCHRESULTWIDGET_ONREQUESTSHOWLINK )
{
  if( s == NULL )
  {
    s = new SlotsQHelpSearchResultWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "requestShowLink(QUrl)", "requestShowLink(QUrl)" ) );
}

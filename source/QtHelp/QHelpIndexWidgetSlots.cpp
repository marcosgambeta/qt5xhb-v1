/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QHelpIndexWidgetSlots.h"


static SlotsQHelpIndexWidget * s = NULL;

SlotsQHelpIndexWidget::SlotsQHelpIndexWidget(QObject *parent) : QObject(parent)
{
}

SlotsQHelpIndexWidget::~SlotsQHelpIndexWidget()
{
}

void SlotsQHelpIndexWidget::linkActivated ( const QUrl & link, const QString & keyword )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkActivated(QUrl,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutPtr( NULL, (QUrl *) &link );
    PHB_ITEM pkeyword = hb_itemPutC( NULL, RQSTRING(keyword) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, plink, pkeyword );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
    hb_itemRelease( pkeyword );
  }
}

HB_FUNC( QHELPINDEXWIDGET_ONLINKACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpIndexWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkActivated(QUrl,QString)", "linkActivated(QUrl,QString)" ) );
}

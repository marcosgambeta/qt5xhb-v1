%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QGraphicsTextItemSlots.h"


static SlotsQGraphicsTextItem * s = NULL;

SlotsQGraphicsTextItem::SlotsQGraphicsTextItem(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsTextItem::~SlotsQGraphicsTextItem()
{
}

void SlotsQGraphicsTextItem::linkActivated ( const QString & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkActivated(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutC( NULL, QSTRINGTOSTRING(link) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void SlotsQGraphicsTextItem::linkHovered ( const QString & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkHovered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutC( NULL, QSTRINGTOSTRING(link) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

HB_FUNC( QGRAPHICSTEXTITEM_ONLINKACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsTextItem(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkActivated(QString)", "linkActivated(QString)" ) );
}

HB_FUNC( QGRAPHICSTEXTITEM_ONLINKHOVERED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsTextItem(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkHovered(QString)", "linkHovered(QString)" ) );
}

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QStandardItemModelSlots.h"


static SlotsQStandardItemModel * s = NULL;

SlotsQStandardItemModel::SlotsQStandardItemModel(QObject *parent) : QObject(parent)
{
}

SlotsQStandardItemModel::~SlotsQStandardItemModel()
{
}

void SlotsQStandardItemModel::itemChanged(QStandardItem *item)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemChanged(QStandardItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QStandardItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

HB_FUNC( QSTANDARDITEMMODEL_ONITEMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQStandardItemModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemChanged(QStandardItem*)", "itemChanged(QStandardItem*)" ) );

}

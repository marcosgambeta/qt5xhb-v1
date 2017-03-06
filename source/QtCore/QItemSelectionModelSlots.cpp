/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QItemSelectionModelSlots.h"


static SlotsQItemSelectionModel * s = NULL;

SlotsQItemSelectionModel::SlotsQItemSelectionModel(QObject *parent) : QObject(parent)
{
}

SlotsQItemSelectionModel::~SlotsQItemSelectionModel()
{
}

void SlotsQItemSelectionModel::selectionChanged(const QItemSelection &selected, const QItemSelection &deselected)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged(QItemSelection,QItemSelection)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pselected = hb_itemPutPtr( NULL, (QItemSelection *) &selected );
    PHB_ITEM pdeselected = hb_itemPutPtr( NULL, (QItemSelection *) &deselected );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pselected, pdeselected );
    hb_itemRelease( psender );
    hb_itemRelease( pselected );
    hb_itemRelease( pdeselected );
  }
}

void SlotsQItemSelectionModel::currentChanged(const QModelIndex &current, const QModelIndex &previous)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(QModelIndex,QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QModelIndex *) &current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QModelIndex *) &previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void SlotsQItemSelectionModel::currentRowChanged(const QModelIndex &current, const QModelIndex &previous)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentRowChanged(QModelIndex,QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QModelIndex *) &current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QModelIndex *) &previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void SlotsQItemSelectionModel::currentColumnChanged(const QModelIndex &current, const QModelIndex &previous)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentColumnChanged(QModelIndex current,QModelIndex previous)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QModelIndex *) &current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QModelIndex *) &previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

HB_FUNC( QITEMSELECTIONMODEL_ONSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemSelectionModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged(QItemSelection,QItemSelection)", "selectionChanged(QItemSelection,QItemSelection)" ) );
}

HB_FUNC( QITEMSELECTIONMODEL_ONCURRENTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemSelectionModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentChanged(QModelIndex,QModelIndex)", "currentChanged(QModelIndex,QModelIndex)" ) );
}

HB_FUNC( QITEMSELECTIONMODEL_ONCURRENTROWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemSelectionModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentRowChanged(QModelIndex,QModelIndex)", "currentRowChanged(QModelIndex,QModelIndex)" ) );
}

HB_FUNC( QITEMSELECTIONMODEL_ONCURRENTCOLUMNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemSelectionModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentColumnChanged(QModelIndex,QModelIndex)", "currentColumnChanged(QModelIndex,QModelIndex)" ) );
}

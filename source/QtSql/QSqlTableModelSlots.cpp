/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QSqlTableModelSlots.h"

static SlotsQSqlTableModel * s = NULL;

SlotsQSqlTableModel::SlotsQSqlTableModel(QObject *parent) : QObject(parent)
{
}

SlotsQSqlTableModel::~SlotsQSqlTableModel()
{
}

void SlotsQSqlTableModel::beforeDelete ( int row )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeDelete(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prow );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
  }
}

void SlotsQSqlTableModel::beforeInsert ( QSqlRecord & record )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeInsert(QSqlRecord)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM precord = hb_itemPutPtr( NULL, (QSqlRecord *) &record );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, precord );
    hb_itemRelease( psender );
    hb_itemRelease( precord );
  }
}

void SlotsQSqlTableModel::beforeUpdate ( int row, QSqlRecord & record )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeUpdate(int,QSqlRecord)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM precord = hb_itemPutPtr( NULL, (QSqlRecord *) &record );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, precord );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( precord );
  }
}

void SlotsQSqlTableModel::primeInsert ( int row, QSqlRecord & record )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "primeInsert(int,QSqlRecord)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM precord = hb_itemPutPtr( NULL, (QSqlRecord *) &record );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, precord );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( precord );
  }
}

HB_FUNC( QSQLTABLEMODEL_ONBEFOREDELETE )
{
  if( s == NULL )
  {
    s = new SlotsQSqlTableModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "beforeDelete(int)", "beforeDelete(int)" ) );
}

HB_FUNC( QSQLTABLEMODEL_ONBEFOREINSERT )
{
  if( s == NULL )
  {
    s = new SlotsQSqlTableModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "beforeInsert(QSqlRecord)", "beforeInsert(QSqlRecord)" ) );
}

HB_FUNC( QSQLTABLEMODEL_ONBEFOREUPDATE )
{
  if( s == NULL )
  {
    s = new SlotsQSqlTableModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "beforeUpdate(int,QSqlRecord)", "beforeUpdate(int,QSqlRecord)" ) );
}

HB_FUNC( QSQLTABLEMODEL_ONPRIMEINSERT )
{
  if( s == NULL )
  {
    s = new SlotsQSqlTableModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "primeInsert(int,QSqlRecord)", "primeInsert(int,QSqlRecord)" ) );
}

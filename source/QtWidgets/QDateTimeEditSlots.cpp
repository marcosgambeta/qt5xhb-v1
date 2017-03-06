/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QDateTimeEditSlots.h"


static SlotsQDateTimeEdit * s = NULL;

SlotsQDateTimeEdit::SlotsQDateTimeEdit(QObject *parent) : QObject(parent)
{
}

SlotsQDateTimeEdit::~SlotsQDateTimeEdit()
{
}

void SlotsQDateTimeEdit::dateChanged ( const QDate & date )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dateChanged(QDate)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdate = hb_itemPutPtr( NULL, (QDate *) &date );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdate );
    hb_itemRelease( psender );
    hb_itemRelease( pdate );
  }
}

void SlotsQDateTimeEdit::dateTimeChanged ( const QDateTime & datetime )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dateTimeChanged(QDateTime)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdatetime = hb_itemPutPtr( NULL, (QDateTime *) &datetime );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdatetime );
    hb_itemRelease( psender );
    hb_itemRelease( pdatetime );
  }
}

void SlotsQDateTimeEdit::timeChanged ( const QTime & time )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "timeChanged(QTime)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptime = hb_itemPutPtr( NULL, (QTime *) &time );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptime );
    hb_itemRelease( psender );
    hb_itemRelease( ptime );
  }
}

HB_FUNC( QDATETIMEEDIT_ONDATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDateTimeEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "dateChanged(QDate)", "dateChanged(QDate)" ) );
}

HB_FUNC( QDATETIMEEDIT_ONDATETIMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDateTimeEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "dateTimeChanged(QDateTime)", "dateTimeChanged(QDateTime)" ) );
}

HB_FUNC( QDATETIMEEDIT_ONTIMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDateTimeEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "timeChanged(QTime)", "timeChanged(QTime)" ) );
}

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCalendarWidgetSlots.h"


static SlotsQCalendarWidget * s = NULL;

SlotsQCalendarWidget::SlotsQCalendarWidget(QObject *parent) : QObject(parent)
{
}

SlotsQCalendarWidget::~SlotsQCalendarWidget()
{
}

void SlotsQCalendarWidget::activated ( const QDate & date )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QDate)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdate = hb_itemPutPtr( NULL, (QDate *) &date );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdate );
    hb_itemRelease( psender );
    hb_itemRelease( pdate );
  }
}

void SlotsQCalendarWidget::clicked ( const QDate & date )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QDate)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdate = hb_itemPutPtr( NULL, (QDate *) &date );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdate );
    hb_itemRelease( psender );
    hb_itemRelease( pdate );
  }
}

void SlotsQCalendarWidget::currentPageChanged ( int year, int month )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentPageChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pyear = hb_itemPutNI( NULL, year );
    PHB_ITEM pmonth = hb_itemPutNI( NULL, month );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pyear, pmonth );
    hb_itemRelease( psender );
    hb_itemRelease( pyear );
    hb_itemRelease( pmonth );
  }
}

void SlotsQCalendarWidget::selectionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QCALENDARWIDGET_ONACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQCalendarWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activated(QDate)", "activated(QDate)" ) );
}

HB_FUNC( QCALENDARWIDGET_ONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQCalendarWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "clicked(QDate)", "clicked(QDate)" ) );
}

HB_FUNC( QCALENDARWIDGET_ONCURRENTPAGECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCalendarWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentPageChanged(int,int)", "currentPageChanged(int,int)" ) );
}

HB_FUNC( QCALENDARWIDGET_ONSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCalendarWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged()", "selectionChanged()" ) );
}

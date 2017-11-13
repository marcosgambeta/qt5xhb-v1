/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QPrintPreviewWidgetSlots.h"


static SlotsQPrintPreviewWidget * s = NULL;

SlotsQPrintPreviewWidget::SlotsQPrintPreviewWidget(QObject *parent) : QObject(parent)
{
}

SlotsQPrintPreviewWidget::~SlotsQPrintPreviewWidget()
{
}

void SlotsQPrintPreviewWidget::paintRequested ( QPrinter * printer )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "paintRequested(QPrinter*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprinter = hb_itemPutPtr( NULL, (QPrinter *) printer );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprinter );
    hb_itemRelease( psender );
    hb_itemRelease( pprinter );
  }
}

void SlotsQPrintPreviewWidget::previewChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "previewChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QPRINTPREVIEWWIDGET_ONPAINTREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQPrintPreviewWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "paintRequested(QPrinter*)", "paintRequested(QPrinter*)" ) );
}

HB_FUNC( QPRINTPREVIEWWIDGET_ONPREVIEWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPrintPreviewWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "previewChanged()", "previewChanged()" ) );
}

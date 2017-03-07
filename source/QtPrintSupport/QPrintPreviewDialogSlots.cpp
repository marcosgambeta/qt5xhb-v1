/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QPrintPreviewDialogSlots.h"


static SlotsQPrintPreviewDialog * s = NULL;

SlotsQPrintPreviewDialog::SlotsQPrintPreviewDialog(QObject *parent) : QObject(parent)
{
}

SlotsQPrintPreviewDialog::~SlotsQPrintPreviewDialog()
{
}

void SlotsQPrintPreviewDialog::paintRequested ( QPrinter * printer )
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

HB_FUNC( QPRINTPREVIEWDIALOG_ONPAINTREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQPrintPreviewDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "paintRequested(QPrinter*)", "paintRequested(QPrinter*)" ) );
}

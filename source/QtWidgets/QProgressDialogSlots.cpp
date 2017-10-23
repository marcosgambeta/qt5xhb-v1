/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QProgressDialogSlots.h"


static SlotsQProgressDialog * s = NULL;

SlotsQProgressDialog::SlotsQProgressDialog(QObject *parent) : QObject(parent)
{
}

SlotsQProgressDialog::~SlotsQProgressDialog()
{
}

void SlotsQProgressDialog::canceled ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canceled()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QPROGRESSDIALOG_ONCANCELED )
{
  if( s == NULL )
  {
    s = new SlotsQProgressDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "canceled()", "canceled()" ) );
}

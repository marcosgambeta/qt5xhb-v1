%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QDialogSlots.h"

static SlotsQDialog * s = NULL;

SlotsQDialog::SlotsQDialog(QObject *parent) : QObject(parent)
{
}

SlotsQDialog::~SlotsQDialog()
{
}

void SlotsQDialog::accepted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "accepted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQDialog::finished ( int result )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM presult = hb_itemPutNI( NULL, result );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, presult );
    hb_itemRelease( psender );
    hb_itemRelease( presult );
  }
}

void SlotsQDialog::rejected ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rejected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QDIALOG_ONACCEPTED )
{
  if( s == NULL )
  {
    s = new SlotsQDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "accepted()", "accepted()" ) );
}

HB_FUNC( QDIALOG_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished(int)", "finished(int)" ) );
}

HB_FUNC( QDIALOG_ONREJECTED )
{
  if( s == NULL )
  {
    s = new SlotsQDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "rejected()", "rejected()" ) );
}

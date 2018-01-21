%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QDialogButtonBoxSlots.h"


static SlotsQDialogButtonBox * s = NULL;

SlotsQDialogButtonBox::SlotsQDialogButtonBox(QObject *parent) : QObject(parent)
{
}

SlotsQDialogButtonBox::~SlotsQDialogButtonBox()
{
}

void SlotsQDialogButtonBox::accepted ()
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

void SlotsQDialogButtonBox::clicked ( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QAbstractButton)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbutton = hb_itemPutPtr( NULL, (QAbstractButton *) button );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}

void SlotsQDialogButtonBox::helpRequested ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "helpRequested()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQDialogButtonBox::rejected ()
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

HB_FUNC( QDIALOGBUTTONBOX_ONACCEPTED )
{
  if( s == NULL )
  {
    s = new SlotsQDialogButtonBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "accepted()", "accepted()" ) );
}

HB_FUNC( QDIALOGBUTTONBOX_ONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQDialogButtonBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "clicked(QAbstractButton*)", "clicked(QAbstractButton*)" ) );
}

HB_FUNC( QDIALOGBUTTONBOX_ONHELPREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQDialogButtonBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "helpRequested()", "helpRequested()" ) );
}

HB_FUNC( QDIALOGBUTTONBOX_ONREJECTED )
{
  if( s == NULL )
  {
    s = new SlotsQDialogButtonBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "rejected()", "rejected()" ) );
}

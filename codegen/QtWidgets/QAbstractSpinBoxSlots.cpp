%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QAbstractSpinBoxSlots.h"

static SlotsQAbstractSpinBox * s = NULL;

SlotsQAbstractSpinBox::SlotsQAbstractSpinBox(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractSpinBox::~SlotsQAbstractSpinBox()
{
}

void SlotsQAbstractSpinBox::editingFinished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "editingFinished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QABSTRACTSPINBOX_ONEDITINGFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSpinBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "editingFinished()", "editingFinished()" ) );
}

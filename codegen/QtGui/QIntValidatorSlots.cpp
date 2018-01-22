%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QIntValidatorSlots.h"

static SlotsQIntValidator * s = NULL;

SlotsQIntValidator::SlotsQIntValidator(QObject *parent) : QObject(parent)
{
}

SlotsQIntValidator::~SlotsQIntValidator()
{
}

void SlotsQIntValidator::changed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "changed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QINTVALIDATOR_ONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQIntValidator(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "changed()", "changed()" ) );

}

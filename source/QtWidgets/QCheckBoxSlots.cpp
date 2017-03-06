/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QCheckBoxSlots.h"


static SlotsQCheckBox * s = NULL;

SlotsQCheckBox::SlotsQCheckBox(QObject *parent) : QObject(parent)
{
}

SlotsQCheckBox::~SlotsQCheckBox()
{
}

void SlotsQCheckBox::stateChanged ( int state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

HB_FUNC( QCHECKBOX_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCheckBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(int)", "stateChanged(int)" ) );
}

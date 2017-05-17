/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QAudioOutputSelectorControlSlots.h"


static SlotsQAudioOutputSelectorControl * s = NULL;

SlotsQAudioOutputSelectorControl::SlotsQAudioOutputSelectorControl(QObject *parent) : QObject(parent)
{
}

SlotsQAudioOutputSelectorControl::~SlotsQAudioOutputSelectorControl()
{
}

void SlotsQAudioOutputSelectorControl::activeOutputChanged(const QString & name)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeOutputChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, RQSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void SlotsQAudioOutputSelectorControl::availableOutputsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availableOutputsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QAUDIOOUTPUTSELECTORCONTROL_ONACTIVEOUTPUTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioOutputSelectorControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activeOutputChanged(QString)", "activeOutputChanged(QString)" ) );
}

HB_FUNC( QAUDIOOUTPUTSELECTORCONTROL_ONAVAILABLEOUTPUTSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioOutputSelectorControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "availableOutputsChanged()", "availableOutputsChanged()" ) );
}

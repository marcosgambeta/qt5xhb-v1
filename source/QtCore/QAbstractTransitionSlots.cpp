/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QAbstractTransitionSlots.h"


static SlotsQAbstractTransition * s = NULL;

SlotsQAbstractTransition::SlotsQAbstractTransition(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractTransition::~SlotsQAbstractTransition()
{
}

void SlotsQAbstractTransition::triggered()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "triggered()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QABSTRACTTRANSITION_ONTRIGGERED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractTransition(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "triggered()", "triggered()" ) );
}

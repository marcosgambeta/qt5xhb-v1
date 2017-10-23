/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCoreApplicationSlots.h"


static SlotsQCoreApplication * s = NULL;

SlotsQCoreApplication::SlotsQCoreApplication(QObject *parent) : QObject(parent)
{
}

SlotsQCoreApplication::~SlotsQCoreApplication()
{
}

void SlotsQCoreApplication::aboutToQuit()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToQuit()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QCOREAPPLICATION_ONABOUTTOQUIT )
{
  if( s == NULL )
  {
    s = new SlotsQCoreApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToQuit()", "aboutToQuit()" ) );
}

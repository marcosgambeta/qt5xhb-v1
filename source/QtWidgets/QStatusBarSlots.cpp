/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QStatusBarSlots.h"


static SlotsQStatusBar * s = NULL;

SlotsQStatusBar::SlotsQStatusBar(QObject *parent) : QObject(parent)
{
}

SlotsQStatusBar::~SlotsQStatusBar()
{
}

void SlotsQStatusBar::messageChanged ( const QString & message )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "messageChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmessage = hb_itemPutC( NULL, QSTRINGTOSTRING(message) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmessage );
    hb_itemRelease( psender );
    hb_itemRelease( pmessage );
  }
}

HB_FUNC( QSTATUSBAR_ONMESSAGECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQStatusBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "messageChanged(QString)", "messageChanged(QString)" ) );
}

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QSplashScreenSlots.h"


static SlotsQSplashScreen * s = NULL;

SlotsQSplashScreen::SlotsQSplashScreen(QObject *parent) : QObject(parent)
{
}

SlotsQSplashScreen::~SlotsQSplashScreen()
{
}

void SlotsQSplashScreen::messageChanged ( const QString & message )
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

HB_FUNC( QSPLASHSCREEN_ONMESSAGECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSplashScreen(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "messageChanged(QString)", "messageChanged(QString)" ) );
}
